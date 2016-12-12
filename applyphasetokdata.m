function kdata_phasecorr = applyphasetokdata(kdata, phi, acquisition)
% DESCRIPTION
% 
% This function takes kspace data and applies a phase shift to the 
% kspace data. The user has the option of writing
% the updated data to file.
% 
% INPUTS
%   kdata               uncorrected kspace data
%   phi                 phase data with dimensions [xres 3]
%   reconstruction      structure containing reconstruction flags / info
%   write_files         flag to indicate whether or not corrected kdata
%                       should be written to file
% OUTPUTS
%   kdata_phasecorr     kdata that has been revised by the phase data phi
%   reconstruction      updated version of this function input

kdata_phasecorr = zeros(size(kdata));
for coil = 1:acquisition.coils
    kdata_phasecorr(:,:,coil) = kdata(:,:,coil) .* exp(-1i*phi);
end

end %eof