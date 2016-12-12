function [reconstruction, options] = update_options_struct(reconstruction, options)

if (reconstruction.use_calgrad == 0 && options.write_files == 1 && options.recon_without_b0corr == 0)
            disp('Setting options.recon_without_b0corr = 1');
            options.recon_without_b0corr = 1;
end