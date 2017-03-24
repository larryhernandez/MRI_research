function [acquisition, reconstruction] = ReturnStructures(Experiment, dir_support_files)

[acquisition, reconstruction] = setup_icones_structures(dir_support_files);

switch(Experiment)

    case 1
    % May 19, 2016
    % Water QA Phantom
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_175.0000slew_50maxgrad_125.00BW_US3.9252_SKIP0_Pablo_50pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/cal_data/18fov_175slew/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 312:641;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/cal_data/18fov_175slew/';

   % Reconstruction Structure
     reconstruction.grid_psf             = 0;
     reconstruction.write_custom_kweight = 1;
     reconstruction.cplusplus_recon      = 1;
     reconstruction.use_bin_grad_files   = 0;      
     reconstruction.use_calgrad          = 1;

    case 2
    % May 23, 2016
    % Water-fat Phantom
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP0_Pablo_50pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/thesis_data/fat_water_phantom/skip0/scan/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 312:641;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/thesis_data/fat_water_phantom/skip0/calx/';

   % Reconstruction Structure
     reconstruction.grid_psf             = 0;
     reconstruction.write_custom_kweight = 0;
     reconstruction.cplusplus_recon      = 1;
     reconstruction.use_bin_grad_files   = 0;
     reconstruction.use_calgrad          = 1;

    otherwise
        error('You must choose an appropriate experiment! Check the integer value you used and try again');
end


if (reconstruction.grid_psf ~= 1)
	verify_directory(acquisition.datapathbase);
	verify_directory(acquisition.b0datapath_x);
end

end %eof