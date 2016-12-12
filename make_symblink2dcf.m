function make_symblink2dcf(acquisition,reconstruction, write_files)
% DESCRIPTION
%       MATLAB function to create a symbolic link to the density
%       compensation data file that will be used by the C-reconstruction
%       program.
% INPUTS
%       
%
% OUTPUTS
%
if write_files
    dir_kweight_files = strcat(acquisition.grad_files_dir,acquisition.grad_files_subdir);
    cd(dir_kweight_files);
    recon_fn = strcat(dir_kweight_files,'KWEIGHT.dat');
    str_symbolic_link = strcat(reconstruction.datapath2write,'KWEIGHT.dat');
    command = sprintf('ln -s %s %s', recon_fn, str_symbolic_link);
    cd(reconstruction.datapath2write);
    unix(command);
end

%cd('/export/home/lhernandez/matlab/ICONE/3_updating/');
cd(reconstruction.dir_support_files);

end
