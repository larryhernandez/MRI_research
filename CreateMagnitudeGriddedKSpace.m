function [mag_gridded_kdata, outputfilename, rcxres_og] = CreateMagnitudeGriddedKSpace(datapath,filename, normalize)
% matlab function that opens a complex gridded k-space data file, evaluates
% its magnitude, and then outputs the result into a file called
% "KSPACE_Gridded_***_rcxresXX.dat" where XX = matrix size & *** is either
% "Normal" or "NotNorm"
%
% INPUTS
%   datapath    folder where the complex gridded kspace data are stored
%   normalize   [0] Do not normalize [1] Normalize to largest pixel value
% OUTPUTS
%   None, except that a data file is written to the folder datapath
%
%% Load the Gridded KSpace Data

fprintf('Reading gridded KSPACE data from %s \n',filename);
fid = fopen(strcat(datapath,filename),'r');
raw = fread(fid,inf,'float');
fclose(fid);
disp('Finished reading gridded KSPACE data.');

data = raw(1:2:end) + raw(2:2:end)*1i;
N = length(data);
rcxres_og = ceil(N^(1/3));

%% Write Magnitude of Gridded K-Space to file
if (normalize == 1)
    outputfilename = strcat(datapath, sprintf('KSPACE_Gridded_MAG_Normal_rcxres%d.dat',rcxres_og));
else
    outputfilename = strcat(datapath, sprintf('KSPACE_Gridded_MAG_NotNorm_rcxres%d.dat',rcxres_og));
end

[mag_gridded_kdata] = WriteComplex2MAG(data, outputfilename, 'float32', normalize);
end
