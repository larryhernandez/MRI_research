function [kdata_phasecorr, reconstruction] = apply_b0_phase(kdata, phi, reconstruction, acquisition, write_files)
% 
% MATLAB function to apply b0 phase correction to k-Space data. This function calls the function 'applyphasetokdata.m', which is where the phase corrections are applied.
%
% INPUTS
%	kdata		Matrix array containing the kspace data that needs to be processed
%	phi		Matrix array containing the phase corrections that will be applied to the kdata
%	reconstruction  Matlab structure containing desirable reconstruction flags, options
%	acquisition	Matlab structure containing information about the data acquisition
%	write_files	option to indicate if binary files for kdata should be written to disk
%
% OUTPUTS
%	kdata_phasecorr	Updated version of kdata which has B0 phase corrections applied to it
%	reconstruction	Updated version of reconstruction structure that was passed as an input
%

%% Apply the B0 phase correction
%if write_files
    disp('About to apply phase correction to k-space data');
    kdata_phasecorr  = applyphasetokdata(kdata, phi, acquisition);
%else
%	kdata_phasecorr = kdata;
%end

%% Update flag reconstruction.IsB0corrected
if reconstruction.IsB0corrected == 0
   reconstruction.IsB0corrected = 1;
elseif reconstruction.IsB0corrected == 1
    reconstruction.IsB0corrected = 2;
end

%% Statement that script is finished
disp('Finished applying B0 phase shifts.');
