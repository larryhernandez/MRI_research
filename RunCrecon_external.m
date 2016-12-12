function [] = RunCrecon_external(acquisition, reconstruction)

fprintf('About to run C or C++ reconstruction \n');

%% Run C or C++ reconstruction

if (acquisition.ese_version == 24 || acquisition.ese_version == 25)
    if (reconstruction.grid_psf)
        if (reconstruction.cplusplus_recon == 1)
            eval('!/export/home/lhernandez/linux/bin/recon_icone24_psf 1');
        else	
            eval('!/export/home/lhernandez/linux/bin/recon_icone24_psf 0');
        end
    else
        if (reconstruction.cplusplus_recon == 1)
            eval('!/export/home/lhernandez/linux/bin/recon_icone24_final 1');
        else	
            eval('!/export/home/lhernandez/linux/bin/recon_icone24_final 0');
        end
    end
elseif (acquisition.ese_version == 16)
    eval('!/export/home/lhernandez/linux/bin/recon_icone16_final');
else
    error('The ese-version provided for this data may not be supported by this reconstruction routine');
end

end % eof