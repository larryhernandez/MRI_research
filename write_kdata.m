function status = write_kdata(kdata, directory_output)
% MATLAB function to write kspace data from an array to 'num_coils' number 
%        of output files
%
% INPUTS
%
% OUTPUTS
%
[xres, proj, num_coils]       = size(kdata);
fprintf('\n About to write %d kdata files corresponding to %d coil elements \n\n', num_coils,num_coils);

if ~isdir(directory_output),
    mkdir(directory_output);
end

if num_coils == 1
    kdata_2write                = zeros(xres*proj,2);
    kdata_2write(1:2:end)       = real( kdata(:) );
    kdata_2write(2:2:end)       = imag( kdata(:) );

    fn = 'KDATA_C00.dat';
    fprintf('Writing kspace data to a file named %s \n', fn);
    filename = strcat(directory_output,'/',fn);
    write_floats(kdata_2write, filename);    
else
    for coil = 1:num_coils    
        if (coil < 10)
                coil_label = sprintf('0%d',coil-1);
        else
                coil_label = num2str(coil-1);
        end
        kdata_coil                = kdata(:,:,coil);
        kdata_2write              = zeros(xres*proj,2);
        kdata_2write(1:2:end)     = real( kdata_coil(:) );
        kdata_2write(2:2:end)     = imag( kdata_coil(:) );

        fn = sprintf('KDATA_C%s.dat', coil_label);
        fprintf('Writing kspace data to a file named %s \n', fn);
        filename = strcat(directory_output,'/',fn);
        write_floats(kdata_2write, filename);
    end
end

status = 1;

end
