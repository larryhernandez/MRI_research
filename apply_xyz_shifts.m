function [kdata_out] = apply_xyz_shifts(kdata, acquisition, reconstruction, kx,ky,kz)
%
% Matlab code to apply rotations in k-space that correspond to physical shifts in image space. This function calls another matlab function file named 'applyphaseshifttokdata.m' as its work engine.
%
% INPUTS
% 	kdata 		array containing kspace data from all coils of an MRI experiment
%	acquisition	structure containing the x,y,z physical shifts to be applied
%	reconstruction	structure containing reconstruction flags, parameters needed by applyphaseshifttokdata.m
%	write_files	flag to indicate whether or not binary data files should be written to disk
%
% OUTPUTS
% 	kdata_out	the processed kspace data that has the phase shifts applied
%	reconstruction	an updated version of the correspnoding input variable of the same name

kmax = max( max(sqrt( (kx.^2) + (ky.^2) + (kz.^2))) );

%% Convert the physical image space x, y, z translations/shifts into k-Space phase
disp('Applying x, y, z, spatial shifts');
dx = -acquisition.extra_shiftx;     % mm
dy = -acquisition.extra_shifty;     % mm
dz = -acquisition.extra_shiftz;     % mm
fov = acquisition.fov*1000;         % mm
N = reconstruction.rcxres/2; 

%% Calculate and apply phase shifts in order to translate object in image space
phase_shift = 2*pi*(dx*kx + dy*ky + dz*kz)*N/kmax/fov;

if acquisition.coils > 1
    kdata_out = zeros(size(kdata));
    for coil = 1:acquisition.coils
        kdata_out(:,:,coil) = kdata(:,:,coil).*exp(1i*phase_shift);
    end    
else
    kdata_out = kdata.*exp(1i*phase_shift);
end
end % end of function