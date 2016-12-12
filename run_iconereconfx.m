%% Addpaths
dir_support_files = '/export/home/lhernandez/matlab/ICONE/2_recon_updating/';
% dir_orchestra = '/usr/local/orchestra/matlab/';
% addpath(dir_support_files, dir_orchestra);

addpath(dir_support_files);
%% Set up global parameters
echoes2process = [3];
Num_echoes2process = length(echoes2process);

% Options Structure
options.make_plots = 0;
options.write_files = 1;
options.recon_without_b0corr = 0;  % runs (add'l) C recon if set to 1, to see images prior to B0-Phase Corrxn

experiments_to_run = [151];

for jj = 1:length(experiments_to_run)

    experiment = experiments_to_run(jj); 	

    % Initially need a kdata_recycle variable for processing. Just make it a zero.
    kdata_recycle = zeros(1,1);
    
    for echo_index = 1:Num_echoes2process
        [acquisition, reconstruction] = ReturnStructures(experiment, dir_support_files);
        [reconstruction, options] = update_options_struct(reconstruction, options);
        reconstruction = kdata_recycle_flag(reconstruction, Num_echoes2process, echo_index);
        
        % For each echo perform iCone reconstruction
        echo2process = echoes2process(echo_index);
        [kdata, kdata_recycle, Kx,Ky,Kz,acquisition, reconstruction] = icone_reconfx(echo2process, options, acquisition, reconstruction, kdata_recycle);

        % Perform b0 eddy current correction (only if not gridding psf or if not using gradient calibration data)
        if ( (reconstruction.grid_psf ~= 1) && (reconstruction.use_calgrad ~=0) )
            fprintf('Entering B0 Eddy current correction scheme.\n');
            b0axis = 1;    % Apply b0-phase correction to X-axis when b0axis=1
            [b0differencePresort_x, reconstruction, phi_b0x] = b0eddycorrect_xy(acquisition, reconstruction, options, b0axis);
            [kdata2, reconstruction] = apply_b0_phase(kdata, phi_b0x, reconstruction, acquisition, options.write_files);

	    if (reconstruction.use_calgrad == 2)
            	fprintf('Entering B0 Eddy current correction scheme for Y-Axis.\n');
            	b0axis = 2;    % Apply b0-phase correction to X-axis when b0axis=1
            	[b0differencePresort_y, reconstruction, phi_b0y] = b0eddycorrect_xy(acquisition, reconstruction, options, b0axis);
            	%[kdata2, reconstruction] = apply_b0_phase(kdata, phi_b0y, reconstruction, acquisition, options.write_files);
	    end
       
            % Run C-Reconstruction with Phase Corrected K-Space Data
            if (options.write_files)
                cd(reconstruction.datapath2write);
                write_kdata(kdata, reconstruction.datapath2write);
                RunCrecon_external(acquisition, reconstruction);
                [~, reconstruction.image_file_name_withB0_corrections] = iCone_Rename_MAGfile(echo2process, reconstruction);
            end
        end
        
        % Save the reconstruction parameters used during this session
        if options.write_files
            filename = strcat(reconstruction.datapath2write, 'recon_params.mat');
            save(filename, 'acquisition', 'reconstruction', 'options', '-mat');
        end
        
        % End recon on this echo. Clear workspace of most variables
        if echo_index ~= Num_echoes2process
             clearvars -except jj experiment echo_index options echoes2process Num_echoes2process kdata_recycle dir_support_files;
        end
    end % echo_index
end % for
%% Statement for user to know that this script has finished running
fprintf('\n\n Finished run_iconereconfx.m script! \n');
