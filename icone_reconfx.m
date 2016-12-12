function [kdata, kdata_recycle, Kx,Ky,Kz, acquisition, reconstruction] = icone_reconfx(echo2process, options, acquisition, reconstruction, kdata_recycle)
% icone_reconfx.m
%
% Larry Hernandez
% Medical Physics
% University of Wisconsin-Madison
% January 30, 2012
%
%
% DESCRIPTION 
%   MATLAB function to 
%       [1] View phase calibration data (from '*DIFF.dat' file produced by
%           a modified version of KMJ's C-reconstruction) 
%       [2] View acquired k-space data from scan
%       [3] Generate KSpace Trajectory from theoretical or measured
%           calibration gradients and rotation matrices used in scan
%
% INPUTS
%   [1] echo2process    0: first only; 1: second only; 2: both echoes without "blip"; 3: all acquired data
%
%   [2] options         structure containing several control variables,
%                       such as make_plots: switch (0 or 1) to enable/disable plot-making
%
%   [3] acquisition     structure containing parameters used in acquisition 
%                       (i.e. xres, bandwidth, gradres, )
%
%   [4] reconstruction  structure: hlds parameters for reconstruction
%
% OUTPUTS
%   [1] kdata           processed kspace data (all data or one half echo)
%   [2] acquisition 	an updated version of the acquisition structure
%   [3] reconstruction  an updated version of the reconstruction structure
%% Add paths for support functions
addpath '/export/home/lhernandez/matlab/Utils/';
%% Set up Sub Directories for writing files
gradbasepath = strcat(acquisition.grad_files_dir, acquisition.grad_files_subdir);
reconstruction.datapath2write = CreateOutputDirectory(echo2process, acquisition, reconstruction, options.write_files);
[acquisition, reconstruction] = ExtractImageHeaderData(acquisition, reconstruction);
%% More Imaging parameters and conversion constants
BW = acquisition.BW*1000;             	% Hz
dt = 10^6/2/BW;                         % us  This is used further down in the code.
gamma = 42.576;                      	% MHz/(T)
reconstruction.kscale = reconstruction.rcxres/2;

fprintf('BW [Hz] = %d \n', BW);
fprintf('dt [us] = %d \n', dt);

% Put this stuff into InitializeStructures() routine
reconstruction.rcyres = reconstruction.rcxres;
if acquisition.flag_2d
    reconstruction.rczres = 1;
else
    reconstruction.rczres = reconstruction.rcxres;
end

% Load rotation matrices
[rotmat, ~] = LoadRotmats(acquisition.rotmat_file);

%[rotmat_raw, ~] = open_floats(acquisition.rotmat_file);
%acquisition.proj = length(rotmat_raw)/9;
%rotmat = reshape(rotmat_raw, [3 3 acquisition.proj]);

%% Process Raw Kspace Data: Grid PSF, Grid Ramp, or separate echoes
if(reconstruction.grid_psf == 0)
   directory2search = acquisition.datapathbase;
   kdata_exists_flag = check_directory_for_data(directory2search, 'KDATA_C00.dat'); 
   
   % Look for pfile & extract kdata 
   if(kdata_exists_flag == 0)
   	cd(directory2search);
   	pfile_name = get_pfile(directory2search);
   	extract_kdata_from_pfile(pfile_name, acquisition.ese_version);
        cd(reconstruction.dir_support_files);
   end

   % Look for pfile & extract calibration data 
   if(reconstruction.use_calgrad ~= 0)
   	directory2search = acquisition.b0datapath_x; 
   	caldata_exists_flag = check_directory_for_data(directory2search, 'Trajectory_Differences_Sorted.dat'); 
   	if(caldata_exists_flag == 0)
   		cd(directory2search);
   		pfile_name = get_pfile(directory2search);
   		extract_kdata_from_pfile(pfile_name, acquisition.ese_version);
        	cd(reconstruction.dir_support_files);
   	end
   end
end

% Pre-Allocate Memory for k-space data
if (reconstruction.recycle_kdata == 0)    
    if (isfield(acquisition,'acq_extra_points') && acquisition.acq_extra_points > 0)
        % If there are extra acquisition samples in the data (pfile), then
        % reduce number of rows of kdata accordingly. The kdata & kweight 
        % matrices must have the same number of elements or the C-recon will crash.
        kdata = zeros(acquisition.xres - acquisition.acq_extra_points, acquisition.proj,acquisition.coils);
    else
        % If there are no extra acquisition points in the pfile, then can
        % 'acquisition.xres' can determine number of rows of 'kdata'
        acquisition.acq_extra_points = 0;
        kdata = zeros(acquisition.xres, acquisition.proj,acquisition.coils);
    end

    kdata = complex(kdata);
    kdata_recycle = zeros(acquisition.xres,acquisition.proj,acquisition.coils);
end

% Process each coil separately
for coil = 0:acquisition.coils-1
    [nproj2recon, kdata(:,:,coil+1), kdata_recycle(:,:,coil+1), reconstruction] = Process_iConeKdata(echo2process, coil, acquisition, reconstruction, options, kdata_recycle(:,:,coil+1));
end

[kdata_xres, kdata_proj, kdata_coils] = size(kdata);
fprintf('kdata_xres = %d \n',kdata_xres);
fprintf('kdata_proj = %d \n',kdata_proj);
fprintf('kdata_coils = %d \n',kdata_coils);

% Log Transform the kdata
%if options.make_plots
%	for coil = 0:acquisition.coils-1
%		kdata_log = log(kdata(:,:,coil+1));
%		figure;
%		imagesc(abs(log(kdata_log)));
%		title('Log transform of raw kdata'); colorbar;
%	end
%end
%% Process gradient calibration (phase) data
if ( (reconstruction.grid_psf == 0 ) && (reconstruction.use_calgrad ~= 0) )
    disp('About to create one-dimensional kmap from calibration data');

    % X-BOARD; Obtain 1-D kSpace trajectories from gradient cal data.
    b0eddycorr_axis = 1;
    [~, calx_phasedata, calgrads_x, ~] = Process_GradCalData(acquisition,reconstruction, b0eddycorr_axis, options);
    [kx_cal_onX, kx_cal_onY, kx_cal_onZ] = kmap_from_calphase(calx_phasedata, acquisition, options);

    if (isfield(acquisition, 'b0datapath_y') && reconstruction.use_calgrad == 2)
        % Y-BOARD
        b0eddycorr_axis = 2;
        [~, caly_phasedata, calgrads_y, ~] = Process_GradCalData(acquisition, reconstruction, b0eddycorr_axis, options);
        [ky_cal_onX, ky_cal_onY, ky_cal_onZ] = kmap_from_calphase(caly_phasedata, acquisition, options);
    end
    
    grad_pulse_length = length(kx_cal_onX);   
else
    grad_pulse_length = acquisition.xres - acquisition.acq_extra_points;
end
%% Load idealized gradient waveforms [mT/m]
[gradx, grady, gradz] = Load_iConeGradients(gradbasepath, acquisition, reconstruction.use_bin_grad_files, options.make_plots);  % mT/m

%% Stretch gradients, get theoretical k-Space traj from theoretical Gx, Gy
Xold = linspace(0,1,length(gradx));
Xnew = linspace(0,1,grad_pulse_length);

fprintf(sprintf('length(gradx) = %d \n', length(gradx)));
fprintf(sprintf('grad_pulse_length = %d \n', grad_pulse_length));

if (reconstruction.impose_grad_delay == 1)
    gradients = Pack3VectorsIntoStructure(gradx, grady, gradz);
    [gradsdelayed, kideal, reconstruction]      = ImposeGradientDelays(acquisition, reconstruction, gradients, kx_cal, Xold, Xnew, [-4 4]);
    [gradx_interp, grady_interp, gradz_interp]    = UnpackStructureInto3Vectors(gradsdelayed);
    [kx_ideal, ky_ideal, kz_ideal]                = UnpackStructureInto3Vectors(kideal);
else
    reconstruction.dkx = 0; 
    reconstruction.dky = 0; 
    reconstruction.dkz = 0;
    [gradx_interp, grady_interp, gradz_interp] = stretchgradients(gradx,grady,gradz,Xold,Xnew);
    %figure; plot(gradx_interp, 'b.'); 
 
   % idealized kx,ky,kz
    disp('Testing new k-ideal normalization');
    kx_ideal    = gamma*dt* 10^-3*cumtrapz(gradx_interp) / (250 / acquisition.BW);          % 1/m
    ky_ideal    = gamma*dt* 10^-3*cumtrapz(grady_interp) / (250 / acquisition.BW);          % 1/m
    kz_ideal    = gamma*dt* 10^-3*cumtrapz(gradz_interp) / (250 / acquisition.BW);          % 1/m

    kmax_ideal = max(sqrt(kx_ideal.^2 + ky_ideal.^2 + kz_ideal.^2));
    fprintf(sprintf('kmax_ideal = %.4f \n', kmax_ideal));
    fprintf(sprintf('max(kx_ideal) = %.4f \n', max(kx_ideal)));
    fprintf(sprintf('max(ky_ideal) = %.4f \n', max(ky_ideal)));
    fprintf(sprintf('max(kz_ideal) = %.4f \n', max(kz_ideal)));
   
    % Set kx, ky, kz to units of fov
    kx_ideal_norm = kx_ideal * acquisition.fov;
    ky_ideal_norm = ky_ideal * acquisition.fov;
    kz_ideal_norm = kz_ideal * acquisition.fov;

    %kmax_ideal_norm = max(sqrt(kx_ideal_norm.^2 + ky_ideal_norm.^2 + kz_ideal_norm.^2));
    %fprintf(sprintf('kmax_ideal_norm = %.4f \n', kmax_ideal_norm));
end

if ( (reconstruction.grid_psf == 0) && (reconstruction.use_calgrad ~= 0) )
    disp('About to calculate k-space deviations');

    % Differences between idealized kx & calibration kx
    kx_cal = Pack3VectorsIntoStructure(kx_cal_onX, kx_cal_onY,kx_cal_onZ);
    kxideal_struct = Pack3VectorsIntoStructure(kx_ideal_norm, kx_ideal_norm, kx_ideal_norm);                    % 1/m 
    [dk_xx, dk_xy, dk_xz] = kspacedeviations(kx_cal, kxideal_struct, acquisition, options.make_plots);

    if (isfield(acquisition, 'b0datapath_y') && reconstruction.use_calgrad == 2)
        % Differences between idealized ky & calibration ky
        ky_cal = Pack3VectorsIntoStructure(ky_cal_onX, ky_cal_onY,ky_cal_onZ);
        kyideal_struct = Pack3VectorsIntoStructure(ky_ideal_norm, ky_ideal_norm, ky_ideal_norm);                 % 1/m 
        [dk_yx, dk_yy, dk_yz] = kspacedeviations(ky_cal, kyideal_struct, acquisition, options.make_plots);
    end
end
%% Determine vectors to generate k-Space Trajectory
disp('About to determine kx,ky,kz for reconstruction');

if (reconstruction.use_calgrad == 0)
   kxx_recon    = kx_ideal_norm;
   kxy_recon 	= kx_ideal_norm;
   kxz_recon 	= kx_ideal_norm;

   kyx_recon    = ky_ideal_norm;
   kyy_recon 	= ky_ideal_norm;
   kyz_recon    = ky_ideal_norm;

   kzx_recon    = kz_ideal_norm;
   kzy_recon    = kz_ideal_norm;
   kzz_recon    = kz_ideal_norm;

   % Gradients
    gxx_recon   = gradx_interp;
    gxy_recon 	= gradx_interp;
    gxz_recon 	= gradx_interp;
 
    gyx_recon   = grady_interp;
    gyy_recon 	= grady_interp;
    gyz_recon   = grady_interp;
 
    gzx_recon   = gradz_interp;
    gzy_recon	= gradz_interp;
    gzz_recon   = gradz_interp;
   
elseif (reconstruction.use_calgrad == 1)
    kxx_recon   = kx_cal_onX;   % Equivalent to kxx_recon = kx_ideal_norm + dk_xx;;
    kxy_recon 	= kx_cal_onY;   % Equivalent to kxy_recon = kx_ideal_norm + dk_xy;
    kxz_recon 	= kx_cal_onZ;   % Equivalent to kxz_recon = kx_ideal_norm + dk_xz;

    kyx_recon 	= ky_ideal_norm;
    kyy_recon   = ky_ideal_norm;
    kyz_recon 	= ky_ideal_norm;

    kzx_recon   = kz_ideal_norm;
    kzy_recon   = kz_ideal_norm;
    kzz_recon   = kz_ideal_norm;
    
    % Gradients (for density compensation)
    gxx_recon = gradx_interp;
    gxy_recon = gradx_interp;
    gxz_recon = gradx_interp;
 
    gyx_recon = grady_interp;
    gyy_recon = grady_interp;
    gyz_recon = grady_interp;
   
    gzx_recon = gradz_interp;
    gzy_recon = gradz_interp;
    gzz_recon = gradz_interp;       

elseif (reconstruction.use_calgrad == 2)
    kxx_recon   = kx_cal_onX;       % Equivalent to kxx_recon = kx_ideal_norm + dk_xx;
    kxy_recon 	= kx_cal_onY;       % Equivalent to kxy_recon = kx_ideal_norm + dk_xy;
    kxz_recon 	= kx_cal_onZ;       % Equivalent to kxz_recon = kx_ideal_norm + dk_xz;

    kyx_recon 	= ky_cal_onX;    	% Equivalent to kyx_recon = ky_ideal_norm + dk_yx;
    kyy_recon   = ky_cal_onY;    	% Equivalent to kyy_recon = ky_ideal_norm + dk_yy;
    kyz_recon 	= ky_cal_onZ;    	% Equivalent to kyz_recon = ky_ideal_norm + dk_yz;

    kzx_recon   = kz_ideal_norm;
    kzy_recon   = kz_ideal_norm;
    kzz_recon   = kz_ideal_norm;

    % Gradients (for density compensation)
     gxx_recon  = gradx_interp;
     gxy_recon 	= gradx_interp;
     gxz_recon 	= gradx_interp;
 
     gyx_recon  = grady_interp;
     gyy_recon 	= grady_interp;
     gyz_recon  = grady_interp;
   
     gzx_recon	= gradz_interp;
     gzy_recon  = gradz_interp;
     gzz_recon  = gradz_interp;       
end

% % Visualize the k-space trajectories
%  figure; 
%  set(gcf, 'Color','w');
%  plot(kxx_recon, 'r*'); hold on;
%  plot(kyx_recon, 'go'); 
%  xlabel('Sample Point');
%  ylabel('Amplitude [1/m]');
%  legend('Kx','Ky');
%  hold off;
%  title('k-Space trajectories for X & Y gradients');

 
% % Visualize the iCone path
%  figure;
%  set(gcf, 'Color','w');
%  plot(kxx_recon, kyx_recon, 'go'); hold on;
%  title('2D icones trajectory');
% 
%  fprintf('max value of kxx_recon = %.4f \n', max(kxx_recon));
%  fprintf('max value of kyx_recon = %.4f \n', max(kyx_recon));
%  kmax_recon = max(sqrt(kxx_recon.^2 + kyx_recon.^2));
%  fprintf('max k-space distance in 2D is %.4f \n',kmax_recon);

%% Estimate k-Space Trajectory

% Remove undesirable projections data
% Debugging: determine if these projections have any noticeable impact on the reconstruction 
%if(isfield(reconstruction, 'zero_out_odd_revs')  && reconstruction.zero_out_odd_revs == 1)
%    disp('Testing a Hack!');
%    indices_of_full_revs_about_Z = matrices_starting_rotation_around_z(rotmat);
%    zero_these_data = excitations_forming_odd_revs(indices_of_full_revs_about_Z);
%    kdata(:,zero_these_data) = 0;
%    [kdata , reconstruction.nproj2recon] = RemoveProjFromKdata(zero_these_data, kdata);
%    rotmat = RemoveProjFromRots(zero_these_data, rotmat);
%end

if (reconstruction.proj2skip ~= 0)
    [kdata , reconstruction.nproj2recon] = RemoveProjFromKdata(reconstruction.proj2skip, kdata);
    rotmat = RemoveProjFromRots(reconstruction.proj2skip, rotmat);
else
    reconstruction.nproj2recon = acquisition.proj;
end

% PreAllocate Arrays for K-Space Trajectory
Kx = zeros(length(kxx_recon), reconstruction.nproj2recon);
Ky = zeros(size(Kx));
Kz = zeros(size(Kx));
Kw = zeros(size(Kx));
Kr = zeros(1, reconstruction.nproj2recon);

fprintf('length(kxx_recon) = %d \n', length(kxx_recon));
fprintf('number of projections to reconstruct = %d \n', reconstruction.nproj2recon);

if(reconstruction.variable_petal_sizes == 1)
    filename_variable_petal_mults = strcat(acquisition.grad_files_dir,acquisition.grad_files_subdir,'icones_petal_multipliers.dat');
    fprintf(sprintf('About to open %s \n',filename_variable_petal_mults));
    petal_size_multipliers = open_floats(filename_variable_petal_mults);
    petal_size_multipliers = reshape(petal_size_multipliers, [length(petal_size_multipliers) 1]);
end

% Rotate gradients; kx,ky,kz; calculate density compensation weights
for pr = 1:reconstruction.nproj2recon
    Kx(:,pr) = rotmat(1,1,pr)*kxx_recon + rotmat(1,2,pr)*kyx_recon + rotmat(1,3,pr)*kzx_recon;
    Ky(:,pr) = rotmat(2,1,pr)*kxy_recon + rotmat(2,2,pr)*kyy_recon + rotmat(2,3,pr)*kzy_recon;
    Kz(:,pr) = rotmat(3,1,pr)*kxz_recon + rotmat(3,2,pr)*kyz_recon + rotmat(3,3,pr)*kzz_recon;
   
    if (reconstruction.variable_petal_sizes == 1)
        Kx(:,pr) = Kx(:,pr) * petal_size_multipliers(pr);
        Ky(:,pr) = Ky(:,pr) * petal_size_multipliers(pr);
        Kz(:,pr) = Kz(:,pr) * petal_size_multipliers(pr);
    elseif (reconstruction.multiply_every_other_cone_by_alpha == 1)
        if (mod(pr,2) == 0)
            Kx(:,pr) = Kx(:,pr)*reconstruction.alpha;
            Ky(:,pr) = Ky(:,pr)*reconstruction.alpha;
            Kz(:,pr) = Kz(:,pr)*reconstruction.alpha;
        end
    end
    
    Kr(pr) = max(sqrt(Kx(:,pr).^2 + Ky(:,pr).^2 + Kz(:,pr).^2 ));
    
    % Density Compensation for projection 'pr'
    Gx = rotmat(1,1,pr)*gxx_recon + rotmat(1,2,pr)*gyx_recon + rotmat(1,3,pr)*gzx_recon;
    Gy = rotmat(2,1,pr)*gxy_recon + rotmat(2,2,pr)*gyy_recon + rotmat(2,3,pr)*gzy_recon;
    Gz = rotmat(3,1,pr)*gxz_recon + rotmat(3,2,pr)*gyz_recon + rotmat(3,3,pr)*gzz_recon;
    gradients_rotated = Pack3VectorsIntoStructure(Gx,Gy,Gz);

    kmap_rotated = Pack3VectorsIntoStructure(Kx(:,pr), Ky(:,pr), Kz(:,pr));
    [Kw(:,pr), ~] = GetDensityCompensation(acquisition, reconstruction.densitycomptype, gradients_rotated, kmap_rotated);
end

if (reconstruction.doubleFOV==1)
     acquisition.fov = 2*acquisition.fov;
     reconstruction.rcxres = 2 * reconstruction.rcxres;
     reconstruction.rcyres = 2 * reconstruction.rcyres;
     reconstruction.rczres = 2 * reconstruction.rczres;
     Kx = 2*Kx;
     Ky = 2*Ky;
     Kz = 2*Kz;
end

%% Display Figures
if (options.make_plots && (reconstruction.grid_psf ~=1 && reconstruction.use_calgrad ~=0) )

    % Plot kx, ky, kz  (normalized to [-kmax,kmax])
    figure; set(gcf, 'Color','w');
    plot(kx_ideal_norm, 'k.'); hold on; 
    plot( kx_cal_onX ,'ro');
    title('K-space when XICONE Played on XBOARD'); 
    legend('ideal', 'cal data'); hold off;

    figure; set(gcf, 'Color','w');
    plot(kx_ideal_norm, 'k.'); hold on; 
    plot( kx_cal_onY ,'go');
    title('K-space when XICONE Played on YBOARD');
    legend('ideal', 'cal data'); hold off;

    figure; set(gcf, 'Color','w');
    plot(kx_ideal_norm, 'k.'); hold on; 
    plot( kx_cal_onZ ,'bo');
    title('K-space when XICONE Played on ZBOARD');
    legend('ideal', 'cal data'); hold off;

    figure; set(gcf,'color','white');
    plot(Kr, 'b.');
    xlabel('Rotation');
    ylabel('kspace radius [1/m]');
    fprintf('The maximum kr distance is %.2f \n',max(Kr));
end

%% Write Data Files
if options.write_files
    % Now write header.txt & .dat files that the C-Recon routine needs
    fprintf('\n\n Started writing .dat to directory...\n');    
    CreateHeaderFile(acquisition, reconstruction);
    write_floats(Kx, strcat(reconstruction.datapath2write,'/','KMAPX_VD_0.dat'));
    write_floats(Ky, strcat(reconstruction.datapath2write,'/','KMAPY_VD_0.dat'));
    write_floats(Kz, strcat(reconstruction.datapath2write,'/','KMAPZ_VD_0.dat'));

    % Write density compensation file or link to previously computed file
    kweight_filename = strcat(reconstruction.datapath2write,'KWEIGHT.dat');
    if (isfield(reconstruction,'write_custom_kweight') && reconstruction.write_custom_kweight == 1)
        % Use r-squared density compensation
        write_floats(Kw, kweight_filename);
    else
        % Use previously calculated Pipe density compensation
        make_symblink2dcf(acquisition, reconstruction, options.write_files);
    end
    
    check_kweight_dimensions(reconstruction.nproj2recon, acquisition.xres - acquisition.acq_extra_points, kweight_filename);
    
   % Apply phase shifts to k-space data
    if ( (reconstruction.cplusplus_recon == 1) && (~reconstruction.grid_psf) )
        kdata = apply_xyz_shifts(kdata, acquisition, reconstruction,Kx,Ky,Kz);
    end

   % Reconstruct images prior to B0 phase correction
    if ( (options.recon_without_b0corr == 1) || reconstruction.grid_psf)
        if(isfield(reconstruction,'fraction_to_keep') && reconstruction.fraction_to_keep < 1.0)
            kdata = eliminate_outer_kspace_signal(kdata, fraction_to_keep);
        end
        write_kdata(kdata, reconstruction.datapath2write);
        fprintf('Finished writing auxiliary .dat files to directory.\n\n');

        cd(reconstruction.datapath2write);
        RunCrecon_external(acquisition, reconstruction);
        [~, reconstruction.image_file_name] = iCone_Rename_MAGfile(echo2process, reconstruction);

        if (reconstruction.grid_psf == 1)
            roots_to_take = [2];
            normalize_psf_data_and_take_roots(reconstruction.datapath2write,reconstruction.image_file_name,roots_to_take);
            if (reconstruction.cplusplus_recon == 0)
                filename_gridded_kspace = 'KSPACE_c0_v0.dat';
                normalize = 1;
                CreateMagnitudeGriddedKSpace(reconstruction.datapath2write,filename_gridded_kspace,normalize);
            end
        end
    end
end

end % end of function
