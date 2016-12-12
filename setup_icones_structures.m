function [acquisition, reconstruction] = setup_icones_structures(dir_support_files)

% 'acquisition' structure
  acquisition.BW                        = 250;          % kHz
  acquisition.flag_2d                   = 0;

% Reconstruction Structure
  reconstruction.densitycomptype        = 5;
  reconstruction.grid_psf               = 0;
  reconstruction.grid_ramp              = 0;
  reconstruction.proj2skip              = 0;
  reconstruction.mask_kgrid             = 0;
  reconstruction.impose_grad_delay      = 0;
  reconstruction.use_calgrad            = 0;
  reconstruction.IsB0corrected          = 0;
  reconstruction.echo_includes_annulus  = 1;
  reconstruction.doubleFOV              = 0;
  reconstruction.write_custom_kweight   = 0;
  reconstruction.dir_support_files      = dir_support_files;
  reconstruction.variable_petal_sizes   = 0;
  reconstruction.alpha                  = 0.90;
  reconstruction.multiply_every_other_cone_by_alpha = 0;
  reconstruction.cplusplus_recon        = 1;
  reconstruction.zero_out_odd_revs  = 0;
  reconstruction.use_bin_grad_files     = 0;
