function [status, new_file_name] = iCone_Rename_MAGfile(echo2process, reconstruction)


% Change directories to where files are being written
%    cd(reconstruction.datapath2write);
   
    disp('About to rename image file');

    if (reconstruction.cplusplus_recon == 0)
    	phrase1 = '!mv MAG.dat MAG_';
        filename_prefix = 'MAG_';
    else
        phrase1 = '!mv X_0_0.dat X_0_0_';
        filename_prefix = 'X_0_0_';
    end
    
    % phrase2
    if (reconstruction.grid_psf)
        phrase2  = 'icone_psf.dat';
    elseif (reconstruction.IsB0corrected == 0)
        phrase2  = 'NoB0Corr_';
    elseif (reconstruction.IsB0corrected == 1)
        phrase2 = 'B0CorrX_';
    elseif (reconstruction.IsB0corrected == 2)
        phrase2 = 'B0CorrXY_';
    end
    
    % phrase3
    if (reconstruction.use_calgrad == 0)
        phrase3 = 'NoGradCal_';
    elseif (reconstruction.use_calgrad == 1)
        phrase3 = 'Xcalgrad_';
    elseif (reconstruction.use_calgrad == 2)
        phrase3 = 'XYcalgrad_';
    end

    % Label the echo that was reconstructed
    switch echo2process
        case 0
            phrase4 = 'e1.dat';

        case 1
            phrase4 = 'e2.dat';

        case 2
            phrase4 = 'echoes12NoBlip.dat';

        case 3
            phrase4 = 'fullrecon.dat';
    end

    if (reconstruction.grid_psf)
        command = strcat(phrase1, phrase2);
        new_file_name = strcat(filename_prefix, phrase2);
    else
        command = strcat(phrase1, phrase2, phrase3, phrase4);
        new_file_name = strcat(filename_prefix, phrase2, phrase3, phrase4);
    end
    
    eval(command);
    % No need to rename files if options.write_files does not equal 1
    % because in that case the image files were not created.


status = 1;

% Return to directory containing iCone reconstruction files
%cd('/export/home/lhernandez/matlab/ICONE/3_updating/');
cd(reconstruction.dir_support_files);