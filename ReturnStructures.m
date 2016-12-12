function [acquisition, reconstruction] = ReturnStructures(Experiment, dir_support_files)

[acquisition, reconstruction] = setup_icones_structures(dir_support_files);

switch(Experiment)

    case 1
    % January 31, 2014 (WIMR2 3.0T); 
    % Brain Volunteer
    % SPGR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/22FOV_320MTX_128.8660slew_50maxgrad_US1.5160_SKIP14/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/31Jan2014_wimr2/us1.5160/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/31Jan2014_wimr2/us1.5160/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/31Jan2014_wimr2/us1.5160/caly/';

   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 0;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;

    case 2
    % March 6, 2014 (WIMR2 3.0T); 
    % Knee Volunteer (CKM) 
    % FSATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/15FOV_384MTX_128.8660slew_50maxgrad_US2.5000_SKIP12/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2014_Mar06_wimr2/icone_atr/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2014_Mar06_wimr2/icone_atr/cal/';

   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 1;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 0;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV = 0;
     
    case 3
    % March 13, 2014 (WIMR2 3.0T); 
    % 8Channel Cardiac Coil with Rectangular Phantom 
    % FSATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/40FOV_800MTX_128.8660slew_50maxgrad_US7.0372_SKIP8/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/Hip_aTR/2014_MAR13_mr6_icone/us7.0372/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/Hip_aTR/2014_MAR13_mr6_icone/us7.0372/calx/';

   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 1;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
 
    case 4
    % April 15, 2013 (WIMR1 1.5T); 
    % 20cm ACR Phantom
    % ATR
    %
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Signa_HDxt/_20FOV_400MTX_119slew_33maxgrad_US3_SKIP16/';
    acquisition.datapathbase            = '/data/lhernandez/icone/2014_Apr15_wimr1/us3skip16/scan/';
    acquisition.slew                    = 119;
    acquisition.BW                      = 250;          % kHz
    acquisition.ampx                    = 3.3;
    acquisition.slewinglocs             = 328:750;      % These change based on the gradients used during the scan
    acquisition.ese_version          = 16;
    acquisition.amp_gradcal             = acquisition.ampx;
    acquisition.flag_2d                 = 0;    
    acquisition.b0datapath_x            = '/data/lhernandez/icone/2014_Apr15_wimr1/us3skip16/calx/';
    acquisition.b0datapath_y            = '/data/lhernandez/icone/2014_Apr15_wimr1/us3skip16/caly/';

    % Reconstruction Structure
    reconstruction.densitycomptype      = 5;            % 4
    reconstruction.grid_psf             = 0;
    reconstruction.grid_ramp            = 0;
    reconstruction.proj2skip            = 0;
    reconstruction.mask_kgrid           = 0;
    reconstruction.impose_grad_delay    = 0;
    reconstruction.use_calgrad          = 1;            % 4
    reconstruction.IsB0corrected        = 0;
    reconstruction.echo_includes_annulus  = 1;
    reconstruction.doubleFOV = 0;
 
    case 5
    % April 24, 2014 (WIMR2 3.0T); 
    % Cube Phantom
    % Single Channel Head Coil
    % FSPGR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/15FOV_384MTX_128.8660slew_50maxgrad_US2.5000_SKIP12/';
     acquisition.datapathbase            = '/data/lhernandez/icone/2014_Apr25_wimr2_cubephantom/icone_spgr/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 370:716;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/lhernandez/icone/2014_Apr25_wimr2_cubephantom/icone_spgr/calx/';

   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 1;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV = 0;

    case 6
    % April 29, 2014 (WIMR2 3.0T); 
    % Cube Phantom
    % Single Channel Head Coil
    % FSPGR
    % time_ssi = 192
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/15FOV_384MTX_128.8660slew_50maxgrad_US2.5000_SKIP12/';
     acquisition.datapathbase            = '/data/lhernandez/icone/2014_Apr29_wimr2_cubephantom/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 370:716;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/lhernandez/icone/2014_Apr29_wimr2_cubephantom/calx/';

   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 1;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;   

     
    case 7
    % April 30, 2014 (WIMR2 3.0T); 
    % Cube Phantom
    % Single Channel Head Coil
    % FSPGR
    % time_ssi = 192
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/15FOV_384MTX_128.8660slew_50maxgrad_US2.5000_SKIP12/';
     acquisition.datapathbase            = '/data/lhernandez/icone/2014_Apr29_wimr2_cubephantom/ssi_200/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 370:716;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/lhernandez/icone/2014_Apr29_wimr2_cubephantom/calx/';

   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 1;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;     

    case 8
    % May 1, 2013 (WIMR1 1.5T); 
    % Clear, Cube Phantom
    % ATR
    %
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Signa_HDxt/18FOV_384MTX_119.0000slew_33maxgrad_125.00BW_US2.5000_SKIP12/';
    acquisition.datapathbase            = '/data/lhernandez/icone/2014_May01_wimr1_cubephantom/us250skip12/scan/';
    acquisition.slew                    = 119;
    acquisition.BW                      = 250;          % kHz
    acquisition.ampx                    = 3.3;
    acquisition.slewinglocs             = 2*196:2*359;      % These change based on the gradients used during the scan
    acquisition.ese_version          = 16;
    acquisition.amp_gradcal             = acquisition.ampx;
    acquisition.flag_2d                 = 0;    
    acquisition.b0datapath_x            = '/data/lhernandez/icone/2014_May01_wimr1_cubephantom/us250skip12/calx/';
    

    % Reconstruction Structure
    reconstruction.densitycomptype      = 5;            % 4
    reconstruction.grid_psf             = 0;
    reconstruction.grid_ramp            = 0;
    reconstruction.proj2skip            = 0;
    reconstruction.mask_kgrid           = 0;
    reconstruction.impose_grad_delay    = 0;
    reconstruction.use_calgrad          = 1;            % 4
    reconstruction.IsB0corrected        = 0;
    reconstruction.echo_includes_annulus  = 0;
    reconstruction.doubleFOV = 0;
     
    case 9 
    % May 1, 2013 (WIMR1 1.5T); 
    % Clear, Cube Phantom
    % ATR
    %
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Signa_HDxt/18FOV_384MTX_119.0000slew_33maxgrad_125.00BW_US3.5634_SKIP8/';
    acquisition.datapathbase            = '/data/lhernandez/icone/2014_May01_wimr1_cubephantom/us35634skip8/scan/';
    acquisition.slew                    = 119;
    acquisition.BW                      = 250;          % kHz
    acquisition.ampx                    = 3.3;
    acquisition.slewinglocs             = 328:750;      % These change based on the gradients used during the scan
    acquisition.ese_version          = 16;
    acquisition.amp_gradcal             = acquisition.ampx;
    acquisition.flag_2d                 = 0;    
    acquisition.b0datapath_x            = '/data/lhernandez/icone/2014_May01_wimr1_cubephantom/us35634skip8/calx/';
    

    % Reconstruction Structure
    reconstruction.densitycomptype      = 5;            % 4
    reconstruction.grid_psf             = 0;
    reconstruction.grid_ramp            = 0;
    reconstruction.proj2skip            = 0;
    reconstruction.mask_kgrid           = 0;
    reconstruction.impose_grad_delay    = 0;
    reconstruction.use_calgrad          = 1;            % 4
    reconstruction.IsB0corrected        = 0;
    reconstruction.echo_includes_annulus  = 1;
    reconstruction.doubleFOV = 0;    

    case 10
    % May 2, 2013 (WIMR1 1.5T); 
    % Clear, Cube Phantom
    % ATR
    %
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Signa_HDxt/22FOV_320MTX_119.0000slew_33maxgrad_125.00BW_US1.5160_SKIP16/';
    acquisition.datapathbase            = '/data/lhernandez/icone/2014_May02_wimr1_cubephantom/us15160skip16/scan/';
    acquisition.slew                    = 119;
    acquisition.BW                      = 250;          % kHz
    acquisition.ampx                    = 3.3;
    acquisition.slewinglocs             = 328:750;      % These change based on the gradients used during the scan
    acquisition.ese_version          = 16;
    acquisition.amp_gradcal             = acquisition.ampx;
    acquisition.flag_2d                 = 0;    
    acquisition.b0datapath_x            = '/data/lhernandez/icone/2014_May02_wimr1_cubephantom/us15160skip16/calx/';  

    % Reconstruction Structure
    reconstruction.densitycomptype      = 5;            % 4
    reconstruction.grid_psf             = 0;
    reconstruction.grid_ramp            = 0;
    reconstruction.proj2skip            = 0;
    reconstruction.mask_kgrid           = 0;
    reconstruction.impose_grad_delay    = 0;
    reconstruction.use_calgrad          = 1;            % 4
    reconstruction.IsB0corrected        = 0;
    reconstruction.echo_includes_annulus  = 1;
    reconstruction.doubleFOV = 0;    
     
    case 11
    % May 2, 2013 (WIMR1 1.5T); 
    % Clear, Cube Phantom
    % ATR
    %
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Signa_HDxt/22FOV_320MTX_119.0000slew_33maxgrad_125.00BW_US2.1657_SKIP10/';
    acquisition.datapathbase            = '/data/lhernandez/icone/2014_May02_wimr1_cubephantom/us21657skip10/scan2/';
    acquisition.slew                    = 119;
    acquisition.BW                      = 250;          % kHz
    acquisition.ampx                    = 3.3;
    acquisition.slewinglocs             = 328:750;      % These change based on the gradients used during the scan
    acquisition.ese_version          = 16;
    acquisition.amp_gradcal             = acquisition.ampx;
    acquisition.flag_2d                 = 0;    
    acquisition.b0datapath_x            = '/data/lhernandez/icone/2014_May02_wimr1_cubephantom/us21657skip10/calx/';  

    % Reconstruction Structure
    reconstruction.densitycomptype      = 5;            % 4
    reconstruction.grid_psf             = 0;
    reconstruction.grid_ramp            = 0;
    reconstruction.proj2skip            = 0;
    reconstruction.mask_kgrid           = 0;
    reconstruction.impose_grad_delay    = 0;
    reconstruction.use_calgrad          = 1;            % 4
    reconstruction.IsB0corrected        = 0;
    reconstruction.echo_includes_annulus  = 1;
    reconstruction.doubleFOV = 0;

    case 12
    % June 30, 2013 (WIMR2 3.0T); 
    % 30cm rectangular Phantom
    % FSPGR
    %
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Optima_MR450/_36FOV_448MTX_120.0000slew_33maxgrad_200.00BW_US6.1302_SKIP6/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2014_06_30/';
    acquisition.slew                    = 120.0;
    acquisition.BW                      = 200;          % kHz
    acquisition.ampx                    = 3.3;
    acquisition.slewinglocs             = 328:750;      % These change based on the gradients used during the scan
    acquisition.ese_version          = 24;
    acquisition.amp_gradcal             = acquisition.ampx;
    acquisition.flag_2d                 = 0;    
    acquisition.b0datapath_x            = acquisition.datapathbase;

    % Reconstruction Structure
    reconstruction.densitycomptype      = 5;            % 4
    reconstruction.grid_psf             = 0;
    reconstruction.grid_ramp            = 0;
    reconstruction.proj2skip            = 0;
    reconstruction.mask_kgrid           = 0;
    reconstruction.impose_grad_delay    = 0;
    reconstruction.use_calgrad          = 1;            % 4
    reconstruction.IsB0corrected        = 0;
    reconstruction.echo_includes_annulus  = 1;
    reconstruction.doubleFOV            = 0;      
 
    case 13
    % July 1, 2013 (WIMR2 3.0T); 
    % 30cm rectangular Phantom
    % FSPGR
    %
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Optima_MR450/_36FOV_448MTX_120.0000slew_33maxgrad_200.00BW_US6.1302_SKIP6/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2014_07_01/wimr2_breast_36fov/';
    acquisition.slew                    = 120.0;
    acquisition.BW                      = 200;          % kHz
    acquisition.ampx                    = 3.3;
    acquisition.slewinglocs             = 328:750;      % These change based on the gradients used during the scan
    acquisition.ese_version          = 24;
    acquisition.amp_gradcal             = acquisition.ampx;
    acquisition.flag_2d                 = 0;    
    acquisition.b0datapath_x            = acquisition.datapathbase;

    % Reconstruction Structure
    reconstruction.densitycomptype      = 5;            % 4
    reconstruction.grid_psf             = 0;
    reconstruction.grid_ramp            = 0;
    reconstruction.proj2skip            = 0;
    reconstruction.mask_kgrid           = 0;
    reconstruction.impose_grad_delay    = 0;
    reconstruction.use_calgrad          = 0;            % 4
    reconstruction.IsB0corrected        = 0;
    reconstruction.echo_includes_annulus  = 1;
    reconstruction.doubleFOV            = 0;      
 
    case 14
    % July 2, 2013 (UWMR4 1.5T); 
    % 30cm rectangular Phantom
    % FSPGR
    %
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Optima_MR450/_36FOV_448MTX_120.0000slew_33maxgrad_200.00BW_US6.1302_SKIP6/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2014_07_02/uwmr4_breast_36fov/';
    acquisition.slew                    = 120.000;
    acquisition.BW                      = 200;          % kHz
    acquisition.ampx                    = 3.3;
    acquisition.slewinglocs             = 328:750;      % These change based on the gradients used during the scan
    acquisition.ese_version          = 16;
    acquisition.amp_gradcal             = acquisition.ampx;
    acquisition.flag_2d                 = 0;    
    acquisition.b0datapath_x            = acquisition.datapathbase;

    % Reconstruction Structure
    reconstruction.densitycomptype      = 5;            % 4
    reconstruction.grid_psf             = 0;
    reconstruction.grid_ramp            = 0;
    reconstruction.proj2skip            = 0;
    reconstruction.mask_kgrid           = 0;
    reconstruction.impose_grad_delay    = 0;
    reconstruction.use_calgrad          = 0;            % 4
    reconstruction.IsB0corrected        = 0;
    reconstruction.echo_includes_annulus  = 1;
    reconstruction.doubleFOV            = 0;    

    case 15
    % July 8, 2013 (WIMR2 3.0T); 
    % 20cm ACR Phantom
    % SPGR
    %
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Discovery_MR750/20FOV_400MTX_128.8660slew_50maxgrad_125.00BW_US2.7445_SKIP10/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2014_07_08_wimr2/icones_spgr/scan/';
    acquisition.slew                    = 128.8660;
    acquisition.BW                      = 125;          % kHz
    acquisition.ampx                    = 5.0;
    acquisition.slewinglocs             = 328:750;      % These change based on the gradients used during the scan
    acquisition.ese_version          = 24;
    acquisition.amp_gradcal             = acquisition.ampx;
    acquisition.flag_2d                 = 0;    
    acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2014_07_08_wimr2/icones_spgr/calx/';
    acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2014_07_08_wimr2/icones_spgr/caly/';

    % Reconstruction Structure
    reconstruction.densitycomptype      = 5;            % 4
    reconstruction.grid_psf             = 0;
    reconstruction.grid_ramp            = 0;
    reconstruction.proj2skip            = 0;
    reconstruction.mask_kgrid           = 0;
    reconstruction.impose_grad_delay    = 0;
    reconstruction.use_calgrad          = 2;            % 4
    reconstruction.IsB0corrected        = 0;
    reconstruction.echo_includes_annulus  = 1;
    reconstruction.doubleFOV            = 0;    

    case 16
    % July 10, 2014 (WIMR2 3.0T); 
    % ACR Phantom
    % SPGR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/22FOV_440MTX_128.8660slew_50maxgrad_125.00BW_US3.2132_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2014_07_09_wimr2/icones_spgr_brain_22fov/scan/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 24;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2014_07_09_wimr2/icones_spgr_brain_22fov/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2014_07_09_wimr2/icones_spgr_brain_22fov/caly/';

   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.use_calgrad          = 2;

     case 17
    % June 30, 2013 (WIMR2 3.0T); 
    % 2 Spheres 6cm
    % FSPGR
    %
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Optima_MR450/_38FOV_448MTX_120.0000slew_33maxgrad_200.00BW_US5.1302_SKIP4/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2014_07_09_wimr2_phantoms_brain_breast_settings/icones_spgr_breast_38fov/scan/';
    acquisition.slew                    = 120.0;
    acquisition.BW                      = 200;          % kHz
    acquisition.ampx                    = 3.3;
    acquisition.slewinglocs             = 328:750;      % These change based on the gradients used during the scan
    acquisition.ese_version          = 24;
    acquisition.amp_gradcal             = acquisition.ampx;
    acquisition.flag_2d                 = 0;    
    acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2014_07_09_wimr2_phantoms_brain_breast_settings/icones_spgr_breast_38fov/calx/';
    acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2014_07_09_wimr2_phantoms_brain_breast_settings/icones_spgr_breast_38fov/caly/';


    % Reconstruction Structure
    reconstruction.densitycomptype      = 5;            % 4
    reconstruction.grid_psf             = 0;
    reconstruction.grid_ramp            = 0;
    reconstruction.proj2skip            = 0;
    reconstruction.mask_kgrid           = 0;
    reconstruction.impose_grad_delay    = 0;
    reconstruction.use_calgrad          = 2;            % 4
    reconstruction.IsB0corrected        = 0;
    reconstruction.echo_includes_annulus  = 1;
    reconstruction.doubleFOV            = 0;      
  
    
    case 18
    % July 10, 2014 (WIMR2 3.0T); 
    % Brain Volunteer: icones vs vipr undersampling comparison
    % SPGR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/22FOV_440MTX_128.8660slew_50maxgrad_125.00BW_US3.2132_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/icones_vipr_undersampling_comparison/Volunteer01/icones/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/icones_vipr_undersampling_comparison/Volunteer01/icones/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/icones_vipr_undersampling_comparison/Volunteer01/icones/caly/';
     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;        

    case 19
    % July 14, 2014 (WIMR2 3.0T); 
    % Brain Volunteer 2: icones vs vipr undersampling comparison
    % SPGR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/22FOV_440MTX_128.8660slew_50maxgrad_125.00BW_US3.2132_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/icones_vipr_undersampling_comparison/Volunteer02/icones02/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/icones_vipr_undersampling_comparison/Volunteer01/icones/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/icones_vipr_undersampling_comparison/Volunteer01/icones/caly/';
     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 1;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 0;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     reconstruction.adjust_scale_factor  = 0.90906338;

    case 20
    % July 14, 2014 (WIMR2 3.0T); 
    % Brain Volunteer 2: icones vs vipr undersampling comparison
    % SPGR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/22FOV_440MTX_128.8660slew_50maxgrad_125.00BW_US3.2132_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/icones_vipr_undersampling_comparison/Volunteer02/icones01/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/icones_vipr_undersampling_comparison/Volunteer01/icones/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/icones_vipr_undersampling_comparison/Volunteer01/icones/caly/';
     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 0;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     reconstruction.adjust_scale_factor  = 0.90906338;
     
    case 21
    % July 14, 2014 (WIMR2 3.0T); 
    % Brain Volunteer 2: icones vs vipr undersampling comparison
    % SPGR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/22FOV_440MTX_128.8660slew_50maxgrad_125.00BW_US3.2132_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/icones_vipr_undersampling_comparison/Volunteer02/icones02/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/icones_vipr_undersampling_comparison/Volunteer01/icones/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/icones_vipr_undersampling_comparison/Volunteer01/icones/caly/';
     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     reconstruction.adjust_scale_factor  = 0.90906338;
     
    case 22
    % August 25, 2014 (WIMR2 3.0T); 
    % ACR Phantom
    % SPGR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/22FOV_440MTX_128.8660slew_50maxgrad_125.00BW_US3.2132_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/icones_vipr_undersampling_comparison/phantom_ACR/icones_spgr_01/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/icones_vipr_undersampling_comparison/phantom_ACR/icones_spgr_01/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/icones_vipr_undersampling_comparison/phantom_ACR/icones_spgr_01/caly/';
     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     reconstruction.adjust_scale_factor  = 0.90906338;
     
    case 23
    % August 25, 2014 (WIMR2 3.0T); 
    % ACR Phantom
    % SPGR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/22FOV_440MTX_128.8660slew_50maxgrad_125.00BW_US3.2132_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/icones_vipr_undersampling_comparison/phantom_ACR/icones_spgr_02/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/icones_vipr_undersampling_comparison/phantom_ACR/icones_spgr_02/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/icones_vipr_undersampling_comparison/phantom_ACR/icones_spgr_02/caly/';
     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     reconstruction.adjust_scale_factor  = 0.90906338;

    case 24
    % September 10, 2014 (WIMR2 3.0T); 
    % ACR Phantom
    % SPGR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/22FOV_440MTX_128.8660slew_50maxgrad_125.00BW_US3.2132_SKIP0/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/icones_vipr_undersampling_comparison/2014_09_10_ACR_Phantom/icones_skip0_scan1/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/icones_vipr_undersampling_comparison/2014_09_10_ACR_Phantom/icones_skip0_scan1/calx2/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/icones_vipr_undersampling_comparison/2014_09_10_ACR_Phantom/icones_skip0_scan1/caly/';
     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 1;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 0;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     %reconstruction.adjust_scale_factor  = 0.90906338;
     
    case 25
    % September 10, 2014 (WIMR2 3.0T); 
    % ACR Phantom
    % SPGR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/22FOV_440MTX_128.8660slew_50maxgrad_125.00BW_US3.2132_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/icones_vipr_undersampling_comparison/2014_09_10_ACR_Phantom/icones1/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/icones_vipr_undersampling_comparison/2014_09_10_ACR_Phantom/icones1/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/icones_vipr_undersampling_comparison/2014_09_10_ACR_Phantom/icones1/caly/';
%      acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 1;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 0;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     %reconstruction.adjust_scale_factor  = 0.90906338;

     case 26
    % September 30, 2014 (WIMR2 3.0T); 
    % No Scan performed: just psf
    % SPGR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/22FOV_440MTX_128.8660slew_50maxgrad_125.00BW_US5.0000_SKIP0/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/us5.0000_skip0/icones_spgr/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
%     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/psf_files/us5.0000_skip0/icones_spgr/calx/';
%     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/psf_files/us5.0000_skip0/icones_spgr/caly/';
%     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 1;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 0;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     %reconstruction.adjust_scale_factor  = 0.90906338;
    
    case 27
    % October 6, 2014 (WIMR2 3.0T); 
    % ACR Phantom
    % SPGR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/22FOV_440MTX_128.8660slew_50maxgrad_125.00BW_US3.2132_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_undersampling_comparison/2014_10_06_Volunteer01/icones_1/scan/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 24;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_undersampling_comparison/2014_10_06_Volunteer01/icones_1/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_undersampling_comparison/2014_10_06_Volunteer01/icones_1/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 1;
     reconstruction.use_calgrad          = 0;
     %reconstruction.adjust_scale_factor  = 0.90906338;    
     
    case 28
    % October 6, 2014 (WIMR2 3.0T); 
    % Volunteer / ACR Phantom
    % SPGR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/22FOV_440MTX_128.8660slew_50maxgrad_125.00BW_US3.2132_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_undersampling_comparison/2014_10_06_Volunteer01/icones_2/scan/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 24;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_undersampling_comparison/2014_10_06_Volunteer01/icones_1/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_undersampling_comparison/2014_10_06_Volunteer01/icones_1/caly/';
%     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.use_calgrad          = 1;
     %reconstruction.adjust_scale_factor  = 0.90906338;     

    case 29
    % October 17, 2014 (WIMR2 3.0T); 
    % Leah's Oil + Water Phantom
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7000_SKIP12/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2014_10_17/icones_aTR_us270skip12/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2014_10_17/icones_aTR_us270skip12/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2014_10_17/icones_aTR_us270skip12/caly/';
     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     %reconstruction.adjust_scale_factor  = 0.90906338;

    case 30
    % October 17, 2014 (WIMR2 3.0T); 
    % Leah's Oil + Water Phantom
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.9000_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2014_10_17/icones_aTR_us290skip10/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2014_10_17/icones_aTR_us290skip10/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2014_10_17/icones_aTR_us290skip10/caly/';
     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     %reconstruction.adjust_scale_factor  = 0.90906338;
    
    case 31
    % October 17, 2014 (WIMR2 3.0T); 
    % Leah's Oil + Water Phantom
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.1200_SKIP8/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2014_10_17/icones_aTR_us312skip8/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2014_10_17/icones_aTR_us312skip8/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2014_10_17/icones_aTR_us312skip8/caly/';
     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     %reconstruction.adjust_scale_factor  = 0.90906338;
     
    case 32
    % October 17, 2014 (WIMR2 3.0T); 
    % Leah's Oil + Water Phantom
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.3450_SKIP6/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2014_10_17/icones_aTR_us3345skip6/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2014_10_17/icones_aTR_us3345skip6/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2014_10_17/icones_aTR_us3345skip6/caly/';
     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     %reconstruction.adjust_scale_factor  = 0.90906338;

    case 33
    % October 17, 2014 (WIMR2 3.0T); 
    % Leah's Oil + Water Phantom
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US4.4600_SKIP0/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2014_10_17/icones_aTR_us446skip0/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2014_10_17/icones_aTR_us446skip0/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2014_10_17/icones_aTR_us446skip0/caly/';
     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     %reconstruction.adjust_scale_factor  = 0.90906338;   

    case 34
    % October 21, 2014 (WIMR2 3.0T); 
    % Knee Volunteer 1
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7000_SKIP12/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2014_10_21/icones_us270skip12/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2014_10_21/icones_us270skip12/calx2/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2014_10_21/icones_us270skip12/caly2/';
     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     %reconstruction.adjust_scale_factor  = 0.90906338;

    case 35
    % October 21, 2014 (WIMR2 3.0T); 
    % Knee Volunteer 1
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.9000_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2014_10_21/icones_us290skip10/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2014_10_21/icones_us290skip10/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2014_10_21/icones_us290skip10/caly/';
     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 1;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     %reconstruction.adjust_scale_factor  = 0.90906338;
    
    case 36
    % October 21, 2014 (WIMR2 3.0T); 
    % Knee Volunteer 1
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.1200_SKIP8/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2014_10_21/icones_us312skip8/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2014_10_21/icones_us312skip8/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2014_10_21/icones_us312skip8/caly/';
     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 1;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     %reconstruction.adjust_scale_factor  = 0.90906338;
     
    case 37
    % October 21, 2014 (WIMR2 3.0T);
    % Knee Volunteer 1
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.3450_SKIP6/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2014_10_21/icones_us3345skip6/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2014_10_21/icones_us3345skip6/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2014_10_21/icones_us3345skip6/caly/';
     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 1;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     %reconstruction.adjust_scale_factor  = 0.90906338;

    case 38
    % October 23, 2014 (WIMR2 3.0T); 
    % Knee Volunteer 2
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7000_SKIP12/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2014_10_23_Volunteer02/icones_us270skip12/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2014_10_21/icones_us270skip12/calx2/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2014_10_21/icones_us270skip12/caly2/';
     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     %reconstruction.adjust_scale_factor  = 0.90906338;     

    case 39
    % November 9, 2014 (WIMR2 3.0T); 
    % Leah's Oil / Water Phantom
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7000_SKIP12/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2014_11_09_ssi200/3_icones_atr_freq_cal1/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2014_11_09_ssi200/3_icones_atr_freq_cal1/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2014_11_09_ssi200/3_icones_atr_freq_cal1/caly/';
     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     %reconstruction.adjust_scale_factor  = 0.90906338;     
     
    case 40
    % November 9, 2014 (WIMR2 3.0T); 
    % Leah's Oil / Water Phantom
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7000_SKIP12/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2014_11_09_ssi200/4_icones_atr_freq_cal0/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2014_11_09_ssi200/3_icones_atr_freq_cal1/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2014_11_09_ssi200/3_icones_atr_freq_cal1/caly/';
     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     %reconstruction.adjust_scale_factor  = 0.90906338;     

    case 41
    % November 10, 2014 (WIMR2 3.0T); 
    % Leah's Oil / Water Phantom
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7000_SKIP12/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2014_11_10_oilwaterphantom/iconesatr_3.5mins/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2014_11_09_ssi200/3_icones_atr_freq_cal1/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2014_11_09_ssi200/3_icones_atr_freq_cal1/caly/';
     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     %reconstruction.adjust_scale_factor  = 0.90906338;     
     
    case 42
    % November 10, 2014 (WIMR2 3.0T); 
    % Knee Volunteer
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7000_SKIP12/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2014_11_10_Volunteer03/icones/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2014_11_10_Volunteer03/icones/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2014_11_10_Volunteer03/icones/caly/';
     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     %reconstruction.adjust_scale_factor  = 0.90906338;          
     
    case 43
    % November 10, 2014 (WIMR2 3.0T); 
    % Spherical Phantom: Impose Linear Shim on X
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/20FOV_400MTX_128.8660slew_50maxgrad_125.00BW_US2.7445_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2014_11_19_phantom_linear_shim_atr/3_icones/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2014_11_19_phantom_linear_shim_atr/3_icones/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2014_11_19_phantom_linear_shim_atr/3_icones/caly/';
     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     %reconstruction.adjust_scale_factor  = 0.90906338;               
 
    case 45
    % November 23, 2014 (WIMRMRPET1 3.0T); 
    % two spheres + cylinder  
    % SPGR
    % breast coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750w/32FOV_400MTX_113.0000slew_33maxgrad_125.00BW_US2.3271_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_11_23_phantom_watersphere/icones_5mins/scan/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 3.3;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_11_23_phantom_watersphere/icones_5mins/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_11_23_phantom_watersphere/icones_5mins/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;

    case 46     
    % November 23, 2014 (WIMRMRPET1 3.0T); 
    % two spheres + cylinder  
    % SPGR
    % breast coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750w/32FOV_400MTX_113.0000slew_33maxgrad_125.00BW_US3.4194_SKIP6/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_11_23_phantom_watersphere/icones_3.5mins/scan/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 3.3;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_11_23_phantom_watersphere/icones_3.5mins/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_11_23_phantom_watersphere/icones_3.5mins/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 0;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;

    case 47
    % November 24, 2014 (WIMRMRPET1 3.0T); 
    % GE Resolution Phantom  
    % SPGR
    % Single Channel Head Coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750w/32FOV_400MTX_113.0000slew_33maxgrad_125.00BW_US2.3271_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_11_24_phantom_GE/icones_5mins/scan/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 3.3;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_11_24_phantom_GE/icones_5mins/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_11_24_phantom_GE/icones_5mins/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
  
    case 48
    % November 24, 2014 (WIMRMRPET1 3.0T); 
    % GE Resolution Phantom  
    % SPGR
    % Single Channel Head Coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750w/32FOV_400MTX_113.0000slew_33maxgrad_125.00BW_US3.4194_SKIP6/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_11_24_phantom_GE/icones_3.5mins/scan/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 3.3;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_11_24_phantom_GE/icones_3.5mins/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_11_24_phantom_GE/icones_3.5mins/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     
    case 49
    % December 2, 2014 (WIMRMRPET1 3.0T); 
    % GE Resolution Phantom  
    % SPGR
    % Single Channel Head Coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750w/32FOV_400MTX_113.0000slew_33maxgrad_125.00BW_US2.3271_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_12_02_phantoms_GE_RectangleSpheres/1_icones_5mins_usf2.3271/scan/';
%     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_12_02_phantoms_GE_RectangleSpheres/1_icones_5mins_usf2.3271/breast_coil/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 3.3;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_12_02_phantoms_GE_RectangleSpheres/1_icones_5mins_usf2.3271/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_12_02_phantoms_GE_RectangleSpheres/1_icones_5mins_usf2.3271/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;  

    case 50
    % December 2, 2014 (WIMRMRPET1 3.0T); 
    % GE Resolution Phantom  
    % SPGR
    % Single Channel Head Coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750w/32FOV_400MTX_113.0000slew_33maxgrad_125.00BW_US2.0480_SKIP16/';
%     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_12_02_phantoms_GE_RectangleSpheres/3_icones_5mins_usf2.0480/scan/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_12_02_phantoms_GE_RectangleSpheres/3_icones_5mins_usf2.0480/breast_coil/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 3.3;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_12_02_phantoms_GE_RectangleSpheres/3_icones_5mins_usf2.0480/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_12_02_phantoms_GE_RectangleSpheres/3_icones_5mins_usf2.0480/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;  
     
    case 51
    % December 2, 2014 (WIMRMRPET1 3.0T); 
    % GE Resolution Phantom  
    % SPGR
    % Single Channel Head Coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750w/32FOV_400MTX_113.0000slew_33maxgrad_125.00BW_US3.4000_SKIP12/';
     %acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_12_02_phantoms_GE_RectangleSpheres/4_icones_2.5mins_usf3.4000/scan/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_12_02_phantoms_GE_RectangleSpheres/4_icones_2.5mins_usf3.4000/breast_coil/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 3.3;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_12_02_phantoms_GE_RectangleSpheres/4_icones_2.5mins_usf3.4000/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_12_02_phantoms_GE_RectangleSpheres/4_icones_2.5mins_usf3.4000/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;

    case 52
    % December 4, 2014 (WIMRMRPET1 3.0T); 
    % GE Resolution Phantom  
    % SPGR
    % Single Channel Head Coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750w/32FOV_400MTX_113.0000slew_33maxgrad_125.00BW_US2.3271_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_12_04_Volunteer01/1_icones_5mins/scan/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 3.3;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_12_04_Volunteer01/1_icones_5mins/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_breast_comparison/2014_12_04_Volunteer01/1_icones_5mins/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;   
     
    case 53
    % December 12, 2014 (WIMR2 3.0T); 
    % GE Resolution Phantom  
    % SPGR
    % Single Channel Head Coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/40FOV_800MTX_128.8660slew_50maxgrad_US7.0372_SKIP8/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_hip_comparison/2014_12_12_sphere/scan/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          	 = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_hip_comparison/2014_12_12_sphere/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_hip_comparison/2014_12_12_sphere/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 0;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     
     case 54
    % December 15, 2014 (WIMR2 3.0T); 
    % GE Resolution Phantom  
    % SPGR
    % Single Channel Head Coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/40FOV_800MTX_128.8660slew_50maxgrad_US7.0372_SKIP8/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/44fov_800mtx_us7.0372_skip8/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/psf_files/44fov_800mtx_us7.0372_skip8/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/psf_files/44fov_800mtx_us7.0372_skip8/caly';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 0;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
 
    case 55
    % December 4, 2014 (WIMRMRPET1 3.0T); 
    % GE Resolution Phantom  
    % SPGR
    % Single Channel Head Coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750w/32FOV_400MTX_113.0000slew_33maxgrad_125.00BW_US2.3271_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2015_01_07_icones_test/scan/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 3.3;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          	 = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2015_01_07_icones_test/scan/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2015_01_07_icones_test/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;

     
    case 56
    % January 26, 2015 (WIMRMRPET1 3.0T); 
    % Oil and water phantom
    % SPGR
    % Single Channel Head Coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750w/32FOV_400MTX_113.0000slew_33maxgrad_125.00BW_US2.3271_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2015_01_23/scan1_echoes1and3/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 3.3;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          	 = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2015_01_23/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2015_01_23/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0; %2:2:81520;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;     

     
    case 57
    % January 26, 2015 (WIMRMRPET1 3.0T); 
    % Oil and water phantom
    % SPGR
    % Single Channel Head Coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750w/32FOV_400MTX_113.0000slew_33maxgrad_125.00BW_US2.3271_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2015_01_23/scan2_echoes2and4/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 3.3;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          	 = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2015_01_23/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2015_01_23/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV             = 0;          

     
    case 58
    % January 27, 2015 (WIMRMRPET1 3.0T); 
    % Oil and water phantom
    % SPGR
    % Single Channel Head Coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750w/32FOV_400MTX_113.0000slew_33maxgrad_125.00BW_US2.3271_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2015_01_28/scan1/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 3.3;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          	 = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2015_01_23/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2015_01_23/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0; %2:2:81520;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;     

     
    case 59
    % January 27, 2015 (WIMRMRPET1 3.0T); 
    % Oil and water phantom
    % SPGR
    % Single Channel Head Coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750w/32FOV_400MTX_113.0000slew_33maxgrad_125.00BW_US2.3271_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2015_01_28/scan2/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 3.3;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          	 = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2015_01_23/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2015_01_23/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;          

     
    case 60
    % January 26, 2015 (WIMRMRPET1 3.0T); 
    % Oil and water phantom
    % SPGR
    % Single Channel Head Coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750w/32FOV_400MTX_113.0000slew_33maxgrad_125.00BW_US2.3271_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2015_01_23_echo_hack_flag/scan1_echoes1and3/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 3.3;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          	 = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2015_01_23/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2015_01_23/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0; %2:2:81520;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;     
     reconstruction.ideal_echo_hack_flag       = 1;
     
    case 61
    % January 26, 2015 (WIMRMRPET1 3.0T); 
    % Oil and water phantom
    % SPGR
    % Single Channel Head Coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750w/32FOV_400MTX_113.0000slew_33maxgrad_125.00BW_US2.3271_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2015_01_23_echo_hack_flag/scan2_echoes2and4/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 3.3;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          	 = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2015_01_23/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2015_01_23/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;     
     reconstruction.ideal_echo_hack_flag       = 1;

    case 62
    % February 1, 2015 (WIMRMRPET1 3.0T); 
    % Oil and water phantom
    % SPGR
    % Single Channel Head Coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750w/32FOV_416MTX_113.0000slew_33maxgrad_125.00BW_US3.3058_SKIP8/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2015_02_01/icones/scan1_echoes1and3/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 3.3;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          	 = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2015_02_01/icones/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2015_02_01/icones/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype       = 5;
     reconstruction.grid_psf              = 0;
     reconstruction.grid_ramp             = 0;
     reconstruction.proj2skip             = 0;
     reconstruction.mask_kgrid            = 0;
     reconstruction.impose_grad_delay     = 0;
     reconstruction.use_calgrad           = 2;
     reconstruction.IsB0corrected         = 0;
     reconstruction.echo_includes_annulus = 1;
     reconstruction.doubleFOV             = 0;
     reconstruction.ideal_echo_hack_flag  = 1;
     
    case 63
    % February 1, 2015 (WIMRMRPET1 3.0T); 
    % Oil and water phantom
    % SPGR
    % Single Channel Head Coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750w/32FOV_416MTX_113.0000slew_33maxgrad_125.00BW_US3.3058_SKIP8/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2015_02_01/icones/scan2_echoes2and4/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 3.3;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          	 = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2015_02_01/icones/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2015_02_01/icones/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;     
     reconstruction.ideal_echo_hack_flag       = 1;

    case 64
    % February 3, 2015 (UWMR6 3.0T); 
    % Volunteer01
    % SPGR
    % 8 Channel Breast Coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750w/32FOV_400MTX_113.0000slew_33maxgrad_125.00BW_US2.3271_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2015_02_03_mr6/icones/scan1_echoes1and3/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 3.3;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          	 = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2015_02_03_mr6/icones/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2015_02_03_mr6/icones/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0; %2:2:81520;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 1;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;     
     reconstruction.ideal_echo_hack_flag       = 1;
     
    case 65
    % February 3, 2015 (UWMR6 3.0T); 
    % Volunteer01
    % SPGR
    % 8 Channel Breast Coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750w/32FOV_400MTX_113.0000slew_33maxgrad_125.00BW_US2.3271_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2015_02_03_mr6/icones/scan2_echoes2and4/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 3.3;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          	 = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2015_02_03_mr6/icones/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2015_02_03_mr6/icones/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 1;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;     
     reconstruction.ideal_echo_hack_flag       = 1;

    case 66
    % February 6, 2015 (WIMRMRPET1 3.0T); 
    % Oil and water phantom
    % SPGR
    % Single Channel Head Coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750w/32FOV_400MTX_113.0000slew_33maxgrad_125.00BW_US2.3271_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2015_02_06_mrpet/scan1_echoes1and3/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 3.3;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          	 = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2015_02_06_mrpet/calx/';
%     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2015_02_06_mrpet/caly/';
%     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2015_02_06_mrpet/calx_test/';
     
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0; %2:2:81520;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 1;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;     
     reconstruction.ideal_echo_hack_flag       = 1;
     
    case 67
    % February 6, 2015 (WIMRMRPET1 3.0T); 
    % Oil and water phantom
    % SPGR
    % Single Channel Head Coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750w/32FOV_400MTX_113.0000slew_33maxgrad_125.00BW_US2.3271_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2015_02_06_mrpet/scan2_echoes2and4/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 3.3;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          	 = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2015_02_06_mrpet/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2015_02_06_mrpet/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;     
     reconstruction.ideal_echo_hack_flag       = 1;
     
    case 68
    % February 19, 2015 (WIMRMRPET1 3.0T); 
    % Oil and water phantom
    % SPGR
    % Eight Channel Head Coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750w/32FOV_400MTX_113.0000slew_33maxgrad_125.00BW_US2.3271_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2015_02_19_mrpet/icones/scan1_echoes1and3/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 3.3;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          	 = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2015_02_19_mrpet/icones/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2015_02_19_mrpet/icones/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;     
     reconstruction.ideal_echo_hack_flag       = 1;
     
    case 69
    % February 19, 2015 (WIMRMRPET1 3.0T); 
    % Oil and water phantom
    % SPGR
    % Eight Channel Head Coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750w/32FOV_400MTX_113.0000slew_33maxgrad_125.00BW_US2.3271_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2015_02_19_mrpet/icones/scan2_echoes2and4/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 3.3;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          	 = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2015_02_19_mrpet/icones/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/2015_02_19_mrpet/icones/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;     
     reconstruction.ideal_echo_hack_flag       = 1;
 
    case 70
    % February 25, 2015 (WIMR2 3.0T); 
    % Leah's Oil + Water Phantom
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7000_SKIP12/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_02_25/scan2_AX_H20/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_02_25/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_02_25/caly/';
     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 0;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     %reconstruction.adjust_scale_factor  = 0.90906338;

    case 71
    % March 28, 2015 (WIMR2 3.0T); 
    % Rectangular Pink Phantom
    % FS-ATR
    % Eight Channel Cardiac Coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/40FOV_800MTX_128.8660slew_50maxgrad_US7.0372_SKIP8/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_hip_comparison/2015_03_28/icones/scan/';
     acquisition.slew                    = 113;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version          	 = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_hip_comparison/2015_03_28/icones/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_hip_comparison/2015_03_28/icones/caly/';
     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 1;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;

    case 72
    % March 28, 2015 (WIMR2 3.0T); 
    % Spherical water phantom
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_03_29/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_03_27/icones/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_03_27/icones/caly/';
%     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 2;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     %reconstruction.adjust_scale_factor  = 0.90906338;     
 
    case 73
    % March 30, 2015 (WIMR2 3.0T); 
    % Spherical water phantom
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_03_30/icones/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_03_27/icones/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_03_27/icones/caly/';
%     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 1;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     %reconstruction.adjust_scale_factor  = 0.90906338;     
 
    case 74
    % April 2, 2015 (WIMR2 3.0T); 
    % Spherical water phantom
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_04_02/icones/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_04_02/icones/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_04_02/icones/caly/';
%     acquisition.acq_extra_points        = 4;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 1;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     %reconstruction.adjust_scale_factor  = 0.90906338;     
 
    case 75
    % April 3, 2015 (WIMR2 3.0T); 
    % Knee Volunteer
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_04_03/icones/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_04_03/icones/calx2/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_04_03/icones/caly2/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 1;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     reconstruction.write_custom_kweight            = 1;
     
    case 76
    % April 21, 2015 (WIMR2 3.0T); 
    % point spread function
    % 
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7500_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_04_21/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_04_21/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_04_21/';

     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 1;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 0;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     %reconstruction.adjust_scale_factor  = 0.90906338;     
 
     
    case 77
    % May 5, 2015
    % Knee Volunteer: DJN
    % ATR
    % 8 Channel Knee coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_05_05/icones_atr/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
%     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_05_05/icones_atr/calx/';
%     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_05_05/icones_atr/caly/';
%     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_05_13/calx1/';
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_05_13/calx2/';

     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 1;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;

    case 78
    % May 19, 2015
    % Knee Volunteer: DH
    % ATR
    % 8 Channel Knee coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_05_19/icones_spgr/scan1/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 24;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_05_19/icones_spgr/calx/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 1;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;

     case 79
    % May 19, 2015
    % Knee Volunteer: DH
    % ATR
    % 8 Channel Knee coil
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_05_19/icones_atr/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 24;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_05_19/icones_spgr/calx/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 1;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;

     case 80
    % May 19, 2015
    % Impulse Response
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP0/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_04_03/icones_skip0/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 24;
     acquisition.flag_2d                 = 0;
%     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_05_19/icones_spgr/calx/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 1;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 0;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
 
     case 81
    % June 10, 2015
    % Impulse Response
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP32_WongRoos/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_06_10/icones_skip32/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 24;
     acquisition.flag_2d                 = 0;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 1;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 0;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
 
    case 82
    % April 3, 2015 (WIMR2 3.0T); 
    % Knee Volunteer
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_WongRoos/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_04_03/icones/scan_wongroos/scan/';
     acquisition.BW                      = 250;          % kHz
     acquisition.ese_version             = 24;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_04_03/icones/scan_wongroos/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_04_03/icones/scan_wongroos/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 1;
     reconstruction.use_calgrad          = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.write_custom_kweight         = 0;

    case 83
    % April 3, 2015 (WIMR2 3.0T); 
    % Point Spread Function
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_WongRoos_EulerAngles/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_04_03/icones/scan_wongroos_euler/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
%      acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_04_03/icones/scan_wongroos/calx/';
%      acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_04_03/icones/scan_wongroos/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 1;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 0;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     reconstruction.write_custom_kweight         = 1;

     case 84
    % April 3, 2015 (WIMR2 3.0T); 
    % Knee Volunteer
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_PablosDesign_RotatePoles/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_04_03/icones/scan_wr_poleskx/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_04_03/icones/scan_wongroos/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_04_03/icones/scan_wongroos/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 0;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     reconstruction.write_custom_kweight         = 1;
    
    case 85
    % June 22, 2015 (WIMR2 3.0T); 
    % Knee Volunteer: DH
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_PablosDesign/1_alternate_petal_sizes/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us2.7313_skip10/icones/1_pablos_ideas_for_correction/alternate_petal_size/';
     acquisition.BW                      = 250;          % kHz
     acquisition.ese_version             = 25;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 1;
     reconstruction.use_calgrad          = 0;
     reconstruction.cplusplus_recon      = 1;
     reconstruction.write_custom_kweight  = 0;
     reconstruction.multiply_every_other_cone_by_alpha = 1;
 
    case 86
    % June 22, 2015 (WIMR2 3.0T); 
    % Knee Volunteer: DH
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_WongRoos/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_06_22/icones_wongroos_sph/scan/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 24;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_06_22/icones_wongroos_sph/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_06_22/icones_wongroos_sph/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.use_calgrad          = 1;

     case 87
    % June 22, 2015 (WIMR2 3.0T); 
    % Knee Volunteer: DH
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_PablosDesign_RotatePoles/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_06_22/icones_rotate_poles2ky/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 24;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_06_22/icones_pablos_design/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_06_22/icones_pablos_design/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.use_calgrad          = 1;
     reconstruction.echo_includes_annulus  = 1;

    case 88
    % June 30, 2015 (WIMR2 3.0T); 
    % Point spread function
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_WongRoosRollPetals/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_06_30/skip10/wr_add00/';
     acquisition.BW                      = 250;          % kHz
     acquisition.ese_version             = 24;

   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 1;
     reconstruction.use_calgrad          = 0;
%     reconstruction.cplusplus_recon      = 0;

    case 89
    % June 30, 2015 (WIMR2 3.0T); 
    % point spread function
    % 
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_WongRoosRollPetalsAdd90/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_06_30/skip10/wr_add90/all_petals_same_size/';
     acquisition.BW                      = 250;          % kHz
     acquisition.ese_version             = 24;
     acquisition.slewinglocs             = 2*162:2*313;      % These change based on the gradients used during the scan
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.use_calgrad          = 0;
     reconstruction.write_custom_kweight = 0;
     reconstruction.densitycomptype      = 5;

     case 90
    % July 1, 2015 (WIMR2 3.0T); 
    % point spread function
    % 
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_WongRoosRollPetalsAdd45/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_06_30/wr_add45/';
     acquisition.BW                      = 250;          % kHz
     acquisition.ese_version             = 24;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_06_30/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_06_30/caly/';
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.use_calgrad          = 0;
     reconstruction.write_custom_kweight         = 0;

      case 91
    % July 1, 2015 (WIMR2 3.0T); 
    % scan spread function
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_WongRoosRollPetals/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_07_01/icones_wr_rollpetals/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_07_01/icones_wr_rollpetals/cal/';
%     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_06_30/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.grid_ramp            = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 1;
     reconstruction.IsB0corrected        = 0;
     reconstruction.echo_includes_annulus  = 1;
     reconstruction.doubleFOV            = 0;
     reconstruction.write_custom_kweight         = 0;

    case 92
    % July 01, 2015 (WIMR2 3.0T); 
    % Phantom
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_PablosDesign/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_07_01/icones_pablo/scan/';
     acquisition.slew                    = 128.8660;
     acquisition.BW                      = 250;          % kHz
     acquisition.ampx                    = 5.0;
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 24;
     acquisition.amp_gradcal             = acquisition.ampx;
     acquisition.flag_2d                 = 0;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_07_01/icones_pablo/cal/';
%     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_06_22/icones_pablos_design/caly/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.use_calgrad          = 1;
     reconstruction.write_custom_kweight            = 0;

      case 93
    % July 2, 2015 (WIMR2 3.0T); 
    % ACR phantom
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_WongRoosRollPetals/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_07_02/icones_wr_rollpetals/scan/';
     acquisition.BW                      = 250;          % kHz
     acquisition.ese_version             = 24;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_07_01/icones_wr_rollpetals/cal/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.use_calgrad          = 1;
     reconstruction.write_custom_kweight         = 0;
     reconstruction.multiply_every_other_cone_by_alpha = 0;
     
    case 94
    % July 2, 2015 (WIMR2 3.0T); 
    % Phantom
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_PablosDesign/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_07_02/icones_pablo/scan/';
     acquisition.BW                      = 250;          % kHz
     acquisition.ese_version             = 24;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_07_01/icones_pablo/cal/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 1;
     reconstruction.use_calgrad          = 0;
     reconstruction.write_custom_kweight         = 0;
     reconstruction.multiply_every_other_cone_by_alpha = 0;

    case 95
    % July 5, 2015 (WIMR2 3.0T); 
    % ACR phantom
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_WongRoosRollPetals/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_07_05/icones_wr_rollpetals/scan/';
     acquisition.BW                      = 250;          % kHz
     acquisition.ese_version             = 24;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_07_05/icones_wr_rollpetals/cal/';
     acquisition.slewinglocs             = 2*163:2*313;      % These change based on the gradients used during the scan
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 1;
     reconstruction.use_calgrad          = 0;
     reconstruction.write_custom_kweight         = 0;
     reconstruction.echo_includes_annulus  = 0;
  
    case 96
    % July 5, 2015 (WIMR2 3.0T); 
    % Phantom
    % ATR
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_PablosDesign/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_07_05/icones_pablo/scan/';
     acquisition.BW                      = 250;          % kHz
     acquisition.ese_version             = 24;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_07_05/icones_pablo/cal2/';
     
   % Reconstruction Structure
     reconstruction.use_calgrad          = 0;
     reconstruction.multiply_every_other_cone_by_alpha = 1;
     reconstruction.write_custom_kweight         = 0;

    case 97
    % July 7, 2015 (WIMR2 3.0T); 
    % ACR phantom
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_WongRoosRollPetals/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_07_07/icones_wr_rollpetals/scan/';
     acquisition.BW                      = 250;          % kHz
     acquisition.ese_version             = 24;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_07_05/icones_wr_rollpetals/cal/';
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 0;
     reconstruction.use_calgrad          = 0;
     reconstruction.write_custom_kweight         = 0;

    case 98
    % July 9, 2015 (WIMR2 3.0T); 
    % PSF
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.9400_SKIP8_WongRoosRollPetals/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_07_09/icones_wr_rollpetals/';
     acquisition.BW                      = 250;          % kHz
     acquisition.ese_version             = 24;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 1;
     reconstruction.use_calgrad          = 0;
     reconstruction.write_custom_kweight         = 0;
     
    case 99
    % July 10, 2015 (WIMR2 3.0T); 
    % PSF
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP0_WongRoosRollPetals/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_06_30/icones_wr_rollpetals_skip0/';
     acquisition.BW                      = 250;          % kHz
     acquisition.ese_version             = 24;
     acquisition.slewinglocs             = 202*2:2*235;      % These change based on the gradients used during the scan

   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 1;
     reconstruction.use_calgrad          = 0;
     reconstruction.write_custom_kweight         = 0;     
 
    case 100
    % July 12, 2015 (WIMR2 3.0T); 
    % PSF
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP2_WongRoosRollPetals/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_07_10/icones_wr_rollpetals_skip2/';
     acquisition.BW                      = 250;          % kHz
     acquisition.ese_version             = 24;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 1;
     reconstruction.use_calgrad          = 0;
     reconstruction.write_custom_kweight         = 0;     
 
    case 101
    % July 12, 2015 (WIMR2 3.0T); 
    % PSF
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP6_WongRoosRollPetals/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_07_10/icones_wr_rollpetals_skip6/';
     acquisition.BW                      = 250;          % kHz
     acquisition.ese_version             = 24;
     
   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 1;
     reconstruction.use_calgrad          = 0;
     reconstruction.write_custom_kweight         = 0;     
 
    case 102
    % July 14, 2015 (WIMR2 3.0T); 
    % point spread function
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_WongRoosRollPetalsAdd68/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_06_30/wr_add68/';
     acquisition.BW                      = 250;          % kHz
     acquisition.ese_version             = 24;
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.use_calgrad          = 0;
     reconstruction.write_custom_kweight         = 1;
 
    case 103
    % July 14, 2015 (WIMR2 3.0T); 
    % point spread function
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_WongRoosRollPetalsAdd79/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_06_30/wr_add79/';
     acquisition.BW                      = 250;          % kHz
     acquisition.ese_version             = 24;
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.use_calgrad          = 0;
     reconstruction.write_custom_kweight         = 1;

    case 104
    % June 30, 2015 (WIMR2 3.0T); 
    % point spread function
    % 
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_WongRoosRollPetalsAdd90/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_06_30/skip10/wr_add90/all_petals_same_size/';
     acquisition.BW                      = 250;          % kHz
     acquisition.ese_version             = 24;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_06_30/calx/';
     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_06_30/caly/';
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.use_calgrad          = 0;
     reconstruction.write_custom_kweight         = 0;
     reconstruction.cplusplus_recon       = 0;
     
    case 105
    % June 30, 2015 (WIMR2 3.0T); 
    % point spread function
    % 
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_WongRoosRollPetalsAdd93/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_06_30/wr_add93/';
     acquisition.BW                      = 250;          % kHz
     acquisition.ese_version             = 24;
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.use_calgrad          = 0;
     reconstruction.write_custom_kweight         = 1;


    case 106
    % June 30, 2015 (WIMR2 3.0T); 
    % point spread function
    % 
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_WongRoos_krad_RollPetals/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_06_30/wr_krad_add00/';
     acquisition.BW                      = 250;          % kHz
     acquisition.ese_version             = 24;
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.use_calgrad          = 0;
     reconstruction.write_custom_kweight         = 1;

     case 107
    % July 10, 2015 (WIMR2 3.0T); 
    % PSF
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP0_WongRoosRollPetals/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_06_30/icones_wr_rollpetals_skip0/';
     acquisition.BW                      = 250;          % kHz
     acquisition.ese_version             = 24;
     acquisition.slewinglocs             = 202*2:2*235;      % These change based on the gradients used during the scan

   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 1;
     reconstruction.use_calgrad          = 0;
     reconstruction.write_custom_kweight         = 1;

     case 108
    % July 10, 2015 (WIMR2 3.0T); 
    % PSF
    %
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP0_WongRoosRollPetals/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_06_30/skip2/discard_annulus/';
     acquisition.BW                      = 250;          % kHz
     acquisition.ese_version             = 24;
     acquisition.slewinglocs             = 2*193:2*260;      % These change based on the gradients used during the scan

   % Reconstruction Structure
     reconstruction.densitycomptype      = 5;
     reconstruction.grid_psf             = 1;
     reconstruction.use_calgrad          = 0;
     reconstruction.write_custom_kweight         = 1;     
 
    case 109
    % Sep 28, 2015 (WIMR2 3.0T); 
    % Water Phantom
    % ATR
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_PablosDesign/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_09_28_mr6_water_phantom/icones_pablo/scan/';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 24;
    acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_09_28_mr6_water_phantom/icones_pablo/calx/';
     
    % Reconstruction Structure
    reconstruction.use_calgrad          = 1;
    reconstruction.cplusplus_recon      = 0;

    case 110
    % Sep 28, 2015 (WIMR2 3.0T); 
    % water phantom
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_WongRoosRollPetalsAdd90/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_09_28_mr6_water_phantom/icones_roll_90/scan/';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 24;
    acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_09_28_mr6_water_phantom/icones_pablo/calx/';
     
    % Reconstruction Structure
    reconstruction.use_calgrad          = 1;
    reconstruction.cplusplus_recon      = 0;
 
    case 111
    % Sep 28, 2015 (WIMR2 3.0T); 
    % water phantom
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_WongRoosRollPetalsAdd90/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_09_28_mr6_water_phantom/icones_roll_00/scan/';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 24;
    acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_09_28_mr6_water_phantom/icones_pablo/calx/';
     
   % Reconstruction Structure
     reconstruction.grid_psf	        = 0;
     reconstruction.use_calgrad         = 0;
     reconstruction.cplusplus_recon     = 0;
 
    case 112
    % Sep 28, 2015 (WIMR2 3.0T); 
    % Water Phantom
    % ATR
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_PablosDesign/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_09_30_mr6_knee/icones_pablo/scan/';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 25;
    acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_09_30_mr6_knee/icones_pablo/calx/';
     
    % Reconstruction Structure
    reconstruction.use_calgrad          = 1;
    reconstruction.cplusplus_recon      = 0;

    case 113
    % Sep 28, 2015 (WIMR2 3.0T); 
    % water phantom
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_WongRoosRollPetalsAdd90/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_09_30_mr6_knee/icones_roll_90/scan/';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 25;
    acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_09_30_mr6_knee/icones_pablo/calx/';
     
    % Reconstruction Structure
    reconstruction.use_calgrad          = 1;
    reconstruction.cplusplus_recon      = 0;
 
    case 114
    % Sep 28, 2015 (WIMR2 3.0T); 
    % water phantom
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_WongRoosRollPetalsAdd90/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_09_30_mr6_knee/icones_roll_00/scan/';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 25;
    acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/vipr_knee_comparison/2015_09_30_mr6_knee/icones_pablo/calx/';
     
    % Reconstruction Structure
    reconstruction.use_calgrad         = 1;
    reconstruction.cplusplus_recon     = 0;

    case 115
    % October 6, 2015 (WIMR2 3.0T); 
    % PSF
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_PablosDesign/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us2.7313_skip10/icones/0_pablos_original_design/psf_files/';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 25;
     
   % Reconstruction Structure
    reconstruction.densitycomptype         = 5;
    reconstruction.grid_psf                = 1;
    reconstruction.use_calgrad             = 0;
    reconstruction.cplusplus_recon         = 0;
    reconstruction.variable_petal_sizes    = 0;
    reconstruction.alpha                  = 0.90;
    reconstruction.multiply_every_other_cone_by_alpha = 1;
    reconstruction.write_custom_kweight    = 0;
 
    case 116
    % Oct 7, 2015 (WIMR2 3.0T); 
    % PSF
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_WongRoosRollPetalsAdd90/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us2.7313_skip10/icones/roll_90/';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 25;
     
    % Reconstruction Structure
    reconstruction.grid_psf             = 1;
    reconstruction.use_calgrad          = 0;
    reconstruction.cplusplus_recon      = 0;
    reconstruction.variable_petal_sizes = 1;

    case 117
    % Oct 8, 2015 (WIMR2 3.0T); 
    % PSF
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_PablosPointDistribution_LarrysRots_roll_0/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us2.7313_skip10/icones/uniformdist_roll_0/';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 25;
     
    % Reconstruction Structure
    reconstruction.grid_psf             = 1;
    reconstruction.cplusplus_recon      = 0;
    reconstruction.write_custom_kweight = 1;
    
    case 118
    % Oct 13, 2015 (WIMR2 3.0T); 
    % PSF
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_WongRoosAtKrad_PablosRots/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us2.7313_skip10/icones/wongroosAtkrad_pablosrots/';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 25;
     
    % Reconstruction Structure
    reconstruction.grid_psf             = 1;
    reconstruction.cplusplus_recon      = 1;
    reconstruction.write_custom_kweight = 0;
 
    case 119
    % Oct 13, 2015 (WIMR2 3.0T); 
    % PSF
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_AntipodallySymmetricPointsAtKrad_PablosRots/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us2.7313_skip10/icones/antipodalsymmetryAtkrad_pablosrots/';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 25;
     
    % Reconstruction Structure
    reconstruction.grid_psf             = 1;
    reconstruction.cplusplus_recon      = 0;
    reconstruction.write_custom_kweight = 0;
    
    case 120
    % Oct 20, 2015 (WIMR2 3.0T); 
    % PSF
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_AntipodallySymmetricPointsAtKmax_LarrysRots_roll_90/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us2.7313_skip10/icones/antipodalsymmetryAtkmax_larrysrots_roll_90/';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 25;
     
    % Reconstruction Structure
    reconstruction.grid_psf             = 1;
    reconstruction.cplusplus_recon      = 0;
    reconstruction.write_custom_kweight = 0;    
 
    case 121
    % Oct 20, 2015 (WIMR2 3.0T); 
    % PSF
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_AntipodallySymmetricPointsAtKmax_LarrysRots_roll_0/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us2.7313_skip10/icones/antipodalsymmetryAtkmax_larrysrots_roll_0/';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 25;
     
    % Reconstruction Structure
    reconstruction.grid_psf             = 1;
    reconstruction.cplusplus_recon      = 0;
    reconstruction.write_custom_kweight = 0;
   
    case 122
    % Oct 22, 2015 (WIMR2 3.0T); 
    % PSF
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP0_Pablo/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us2.7313/skip0/';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 25;
     
    % Reconstruction Structure
    reconstruction.grid_psf             = 1;
    reconstruction.cplusplus_recon      = 0;
    reconstruction.write_custom_kweight = 0;
    
    case 123
    % Oct 22, 2015 (WIMR2 3.0T); 
    % PSF
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP0_Pablo_50pct_rotations_about_kz/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip0/50pct_rots_about_kz/';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 25;
     
    % Reconstruction Structure
    reconstruction.grid_psf             = 1;
    reconstruction.cplusplus_recon      = 0;
    reconstruction.write_custom_kweight = 0;
    reconstruction.use_bin_grad_files   = 0;
 
    case 124
    % Oct 28, 2015 (WIMR2 3.0T); 
    % PSF
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7000_SKIP10_AntipodallySymmetricPointsAtKmax_LarrysRots_roll_90/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us2.7/skip10/';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 25;
     
    % Reconstruction Structure
    reconstruction.grid_psf             = 1;
    reconstruction.cplusplus_recon      = 1;
    reconstruction.write_custom_kweight = 1;
 
    case 125
    % Oct 13, 2015 (WIMR2 3.0T); 
    % PSF
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.7313_SKIP10_Double_AntipodallySymmetricPointsAtKrad_PablosRots/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us2.7313_skip10/icones/2_antipodally_symmetric_points/50pct_increased_excitations/';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 25;
     
    % Reconstruction Structure
    reconstruction.grid_psf             = 1;
    reconstruction.cplusplus_recon      = 1;
    reconstruction.write_custom_kweight = 1;

    case 126
    % Nov 9, 2015
    % Impulse Response
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP12_Pablo/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip12/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.write_custom_kweight = 0;
     reconstruction.cplusplus_recon      = 1;

    case 127
    % Nov 9, 2015
    % Impulse Response
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP6_Pablo/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip6/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.write_custom_kweight = 0;
     reconstruction.cplusplus_recon      = 1; 

     case 128
    % Nov 13, 2015
    % Impulse Response
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US7.8835_SKIP0_Pablo/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us7.8835/skip0/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.write_custom_kweight = 0;
     reconstruction.cplusplus_recon      = 0; 
 
    case 129
    % Nov 18, 2015
    % Impulse Response
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP12_NewBaseAngle_Pablo/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip12/new_base_angle/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.write_custom_kweight = 0;
     reconstruction.cplusplus_recon      = 1;
 
    case 130
    % Nov 30, 2015
    % Impulse Response
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP0_Pablo/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip0/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.write_custom_kweight = 0;
     reconstruction.cplusplus_recon      = 1; 
     reconstruction.multiply_every_other_cone_by_alpha = 0;
     reconstruction.use_bin_grad_files = 0;

    case 131
    % Nov 30, 2015
    % Impulse Response
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP8_Pablo_50pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip8/50pct_rots_about_kz/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.write_custom_kweight = 0;
     reconstruction.cplusplus_recon      = 0;
     reconstruction.use_bin_grad_files = 0;     

    case 132
    % Dec 1, 2015
    % Impulse Response
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP8_Pablo_50pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip8/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.write_custom_kweight = 1;
     reconstruction.cplusplus_recon      = 1;      

    case 133
    % Dec 1, 2015
    % Impulse Response
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP8_Pablo_8over22_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip8/8_over22_rots_about_kz/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.write_custom_kweight = 1;
     reconstruction.cplusplus_recon      = 1;      
 
    case 134
    % Dec 1, 2015
    % Impulse Response
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP8_Pablo_62pct_rotations_about_kz/alternate_petal_size_80pct/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip8/62pct_rots_about_kz/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.write_custom_kweight = 0;
     reconstruction.cplusplus_recon      = 0;
     reconstruction.alpha                  = 0.80;
     reconstruction.multiply_every_other_cone_by_alpha = 1;     
     
    case 135
    % Dec 1, 2015
    % Impulse Response
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP2_Pablo_53pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip2/53pct_rots_about_kz/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.write_custom_kweight = 1;
     reconstruction.cplusplus_recon      = 0;
     
    case 136
    % Dec 1, 2015
    % Impulse Response
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP2_Pablo_47pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip2/47pct_rots_about_kz/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.write_custom_kweight = 1;
     reconstruction.cplusplus_recon      = 0;

    case 137
    % Dec 4, 2015
    % Impulse Response
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP2_Pablo_50pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip2/50pct_rots_about_kz/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.write_custom_kweight = 0;
     reconstruction.cplusplus_recon      = 0;

    case 138
    % Dec 4, 2015
    % Impulse Response
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP2_Pablo_52pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip2/52pct_rots_about_kz/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.write_custom_kweight = 0;
     reconstruction.cplusplus_recon      = 0;

    case 139
    % Dec 7, 2015
    % Impulse Response
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP2_Pablo_51pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip2/51pct_rots_about_kz/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.write_custom_kweight = 1;
     reconstruction.cplusplus_recon      = 0; 

    case 141
    % Dec 7, 2015
    % PSF
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez//matlab/ICONE/1_iconecreation/gradient_files/Discovery_MR750/';
    acquisition.grad_files_subdir       = '18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP0_AntipodallySymmetricPointsAtKmax_LarrysRots_roll_0/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip0/icones/antipodalsymmetryAtkmax_larrysrots_roll_0/';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 25;
     
    % Reconstruction Structure
    reconstruction.grid_psf             = 1;
    reconstruction.cplusplus_recon      = 1;
    reconstruction.write_custom_kweight = 1;

    case 142
    % Dec 8, 2015
    % PSF
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez//matlab/ICONE/1_iconecreation/gradient_files/Discovery_MR750/';
    acquisition.grad_files_subdir       = '/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP4_Pablo_62pct_rotations_about_kz/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip4/62pct_rots_about_kz';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 25;
     
    % Reconstruction Structure
    reconstruction.grid_psf             = 1;
    reconstruction.cplusplus_recon      = 1;
    reconstruction.write_custom_kweight = 1;    

    case 143
    % Dec 8, 2015
    % PSF
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez//matlab/ICONE/1_iconecreation/gradient_files/Discovery_MR750/';
    acquisition.grad_files_subdir       = '/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP4_Pablo_56pct_rotations_about_kz/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip4/56pct_rots_about_kz';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 25;
     
    % Reconstruction Structure
    reconstruction.grid_psf             = 1;
    reconstruction.cplusplus_recon      = 1;
    reconstruction.write_custom_kweight = 1;    

    case 144
    % Dec 8, 2015
    % PSF
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez//matlab/ICONE/1_iconecreation/gradient_files/Discovery_MR750/';
    acquisition.grad_files_subdir       = '/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP4_Pablo_53pct_rotations_about_kz/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip4/53pct_rots_about_kz';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 25;
     
    % Reconstruction Structure
    reconstruction.grid_psf             = 1;
    reconstruction.cplusplus_recon      = 1;
    reconstruction.write_custom_kweight = 1;        
    
    case 145
    % Dec 8, 2015
    % PSF
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez//matlab/ICONE/1_iconecreation/gradient_files/Discovery_MR750/';
    acquisition.grad_files_subdir       = '/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP4_Pablo_50pct_rotations_about_kz/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip4/50pct_rots_about_kz';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 25;
     
    % Reconstruction Structure
    reconstruction.grid_psf             = 1;
    reconstruction.cplusplus_recon      = 1;
    reconstruction.write_custom_kweight = 1;
 
    case 146
    % Dec 9, 2015
    % PSF
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez//matlab/ICONE/1_iconecreation/gradient_files/Discovery_MR750/';
    acquisition.grad_files_subdir       = '/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP4_Pablo_54pct_rotations_about_kz/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip4/54pct_rots_about_kz';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 25;
     
    % Reconstruction Structure
    reconstruction.grid_psf             = 1;
    reconstruction.cplusplus_recon      = 1;
    reconstruction.write_custom_kweight = 1;
 
    case 147
    % Dec 9, 2015
    % PSF
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez//matlab/ICONE/1_iconecreation/gradient_files/Discovery_MR750/';
    acquisition.grad_files_subdir       = '/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP8_Pablo_54pct_rotations_about_kz/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip8/54pct_rots_about_kz';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 25;
     
    % Reconstruction Structure
    reconstruction.grid_psf             = 1;
    reconstruction.cplusplus_recon      = 1;
    reconstruction.write_custom_kweight = 1;
 
    case 148
    % Dec 9, 2015
    % PSF
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez//matlab/ICONE/1_iconecreation/gradient_files/Discovery_MR750/';
    acquisition.grad_files_subdir       = '/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP8_Pablo_58pct_rotations_about_kz/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip8/58pct_rots_about_kz';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 25;
     
    % Reconstruction Structure
    reconstruction.grid_psf             = 1;
    reconstruction.cplusplus_recon      = 1;
    reconstruction.write_custom_kweight = 1;
 
    case 149
    % Dec 9, 2015
    % PSF
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez//matlab/ICONE/1_iconecreation/gradient_files/Discovery_MR750/';
    acquisition.grad_files_subdir       = '/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP8_Pablo_66pct_rotations_about_kz/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip8/66pct_rots_about_kz';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 25;
     
    % Reconstruction Structure
    reconstruction.grid_psf             = 1;
    reconstruction.cplusplus_recon      = 1;
    reconstruction.write_custom_kweight = 1;

    case 150
    % Dec 9, 2015
    % PSF
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez//matlab/ICONE/1_iconecreation/gradient_files/Discovery_MR750/';
    acquisition.grad_files_subdir       = '/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP8_Pablo_64pct_rotations_about_kz/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip8/64pct_rots_about_kz';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 25;
     
    % Reconstruction Structure
    reconstruction.grid_psf             = 1;
    reconstruction.cplusplus_recon      = 1;
    reconstruction.write_custom_kweight = 1;

    case 151
    % Dec 9, 2015
    % Impulse Response
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP8_Pablo/alternate_petals_80pct/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip8/100pct_rots_about_kz/alternate_petal_sizes_80pct/';
    acquisition.BW                      = 250;          % kHz
    acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
    acquisition.ese_version             = 25;
     
   % Reconstruction Structure
    reconstruction.grid_psf             = 1;
    reconstruction.write_custom_kweight = 0;
    reconstruction.cplusplus_recon      = 1;
    reconstruction.use_bin_grad_files   = 0;
    reconstruction.alpha                = 0.80;
    reconstruction.multiply_every_other_cone_by_alpha = 1;

    case 152
    % Dec 14, 2015
    % Impulse Response
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP8_WongRoosAtKrad_PablosRots/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip8/wongroos_krad/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.write_custom_kweight = 1;
     reconstruction.cplusplus_recon      = 1; 

    case 153
    % Jan 8, 2016
    % Impulse Response
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP8_Pablo_hacking_dt_47pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip8/hacking_dt/47pct_rotations/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.write_custom_kweight = 1;
     reconstruction.cplusplus_recon      = 1;
     reconstruction.use_bin_grad_files = 0;

    case 154
    % Jan 11, 2016
    % Impulse Response
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP0_Pablo_revised_theta_and_R_50pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip0/revised_theta_and_R/50pct_rotations/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 380:702;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.write_custom_kweight = 0;
     reconstruction.cplusplus_recon      = 0;
     reconstruction.use_bin_grad_files = 0;

    case 155
    % Jan 13, 2016
    % Impulse Response
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP8_Pablo_calculate_anchor_point_radius_58pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip8/calculate_anchor_point_radius/58pct_rotations/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 312:641;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.write_custom_kweight = 1;
     reconstruction.cplusplus_recon      = 0;
     reconstruction.use_bin_grad_files = 0; 
 
    case 156
    % Jan 14, 2016
    % Impulse Response
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP8_Pablo_calculate_anchor_point_radius_50pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip8/calculate_anchor_point_radius/50pct_rotations/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 312:641;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.write_custom_kweight = 1;
     reconstruction.cplusplus_recon      = 1;
     reconstruction.use_bin_grad_files = 0; 
     
    case 157
    % March 9, 2016
    % Impulse Response
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP0_Pablo_WallysBasePetal_50pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip0/Wallys_revised_theta/50pct_rotations/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 312:641;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.write_custom_kweight = 0;
     reconstruction.cplusplus_recon      = 1;
     reconstruction.use_bin_grad_files = 0;
 
    case 158
    % April 11, 2016
    % Impulse Response
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP8_Pablo_49pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us3.9252/skip8/49pct_rots_about_kz/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 312:641;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     
   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.write_custom_kweight = 1;
     reconstruction.cplusplus_recon      = 1;
     reconstruction.use_bin_grad_files   = 0; 
   
    case 159
    % May 11, 2016
    % ACR Phantom
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/22FOV_320MTX_128.8660slew_50maxgrad_125.00BW_US2.5000_SKIP12_Pablo_50pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2016_05_11/brain/22fov_320mtx_us2.5000/scan/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 312:641;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     acquisition.b0datapath_x            = acquisition.datapathbase;

   % Reconstruction Structure
     reconstruction.grid_psf             = 0;
     reconstruction.write_custom_kweight = 1;
     reconstruction.cplusplus_recon      = 1;
     reconstruction.use_bin_grad_files   = 0;      
     reconstruction.use_calgrad          = 1;

    case 160
    % May 11, 2016
    % ACR Phantom
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/22FOV_320MTX_128.8660slew_50maxgrad_125.00BW_US1.5160_SKIP14_Pablo_50pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2016_05_11/brain/22fov_320mtx_us1.5160/scan3/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 312:641;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2016_05_11/brain/22fov_320mtx_us1.5160/scan/';

   % Reconstruction Structure
     reconstruction.grid_psf             = 0;
     reconstruction.write_custom_kweight = 1;
     reconstruction.cplusplus_recon      = 1;
     reconstruction.use_bin_grad_files   = 0;      
     reconstruction.use_calgrad          = 1;

    case 161
    % May 11, 2016
    % ACR Phantom
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP0_Pablo_50pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2016_05_11/knee/18fov/us3.9252/skip0/scan/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 312:641;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2016_05_11/knee/18fov/us3.9252/skip0/cal/';

   % Reconstruction Structure
     reconstruction.grid_psf             = 0;
     reconstruction.write_custom_kweight = 1;
     reconstruction.cplusplus_recon      = 1;
     reconstruction.use_bin_grad_files   = 0;      
     reconstruction.use_calgrad          = 1;

    case 162
    % May 11, 2016
    % ACR Phantom
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP8_Pablo_50pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2016_05_11/knee/18fov/us3.9252/skip8/scan/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 312:641;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2016_05_11/knee/18fov/us3.9252/skip8/cal/';

   % Reconstruction Structure
     reconstruction.grid_psf             = 0;
     reconstruction.write_custom_kweight = 1;
     reconstruction.cplusplus_recon      = 1;
     reconstruction.use_bin_grad_files   = 0;      
     reconstruction.use_calgrad          = 1;

    case 163
    % Sep 28, 2015 (WIMR2 3.0T); 
    % Water Phantom
    % ATR
    % Acquisition Structure
    acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
    acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP0_Pablo/';
    acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2016_05_11/knee/18fov/us3.9252/skip0_pablo/scan/';
    acquisition.BW                      = 250;          % kHz
    acquisition.ese_version             = 25;
    acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2016_05_11/knee/18fov/us3.9252/skip0_pablo/cal/';
     
    % Reconstruction Structure
    reconstruction.grid_psf             = 0;
    reconstruction.write_custom_kweight = 1;
    reconstruction.use_calgrad          = 0;
    reconstruction.cplusplus_recon      = 1;
    reconstruction.use_bin_grad_files   = 1;

    case 164
    % May 16, 2016
    % ACR Phantom
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/22FOV_320MTX_128.8660slew_50maxgrad_125.00BW_US2.5000_SKIP12_Pablo_50pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2016_05_16/us2.5000skip12/scan/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 312:641;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     acquisition.b0datapath_x            = acquisition.datapathbase;

   % Reconstruction Structure
     reconstruction.grid_psf             = 0;
     reconstruction.write_custom_kweight = 1;
     reconstruction.cplusplus_recon      = 1;
     reconstruction.use_bin_grad_files   = 0;      
     reconstruction.use_calgrad          = 1;

    case 165
    % May 16, 2016
    % ACR Phantom
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.8994_SKIP8_Pablo_50pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2016_05_16/us2.8994skip8/scan/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 312:641;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2016_05_16/us2.8994skip8/cal/';

   % Reconstruction Structure
     reconstruction.grid_psf             = 0;
     reconstruction.write_custom_kweight = 1;
     reconstruction.cplusplus_recon      = 1;
     reconstruction.use_bin_grad_files   = 0;      
     reconstruction.use_calgrad          = 1;

    case 166
    % May 16, 2016
    % ACR Phantom
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP0_Pablo/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2016_05_16/us3.9252skip0_pablo/scan/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 312:641;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/2016_05_16/us3.9252skip0_pablo/cal/';

   % Reconstruction Structure
     reconstruction.grid_psf             = 0;
     reconstruction.write_custom_kweight = 1;
     reconstruction.cplusplus_recon      = 1;
     reconstruction.use_bin_grad_files   = 0;      
     reconstruction.use_calgrad          = 1;

    case 167
    % May 17, 2016
    % ACR Phantom
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US4.0000_SKIP16_Pablo_50pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/2016_05_17/us4skip16/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 312:641;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     acquisition.b0datapath_x            = acquisition.datapathbase;

   % Reconstruction Structure
     reconstruction.grid_psf             = 0;
     reconstruction.write_custom_kweight = 1;
     reconstruction.cplusplus_recon      = 1;
     reconstruction.use_bin_grad_files   = 0;      
     reconstruction.use_calgrad          = 1;

    case 168
    % May 20, 2016
    % knee volunteer
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.8994_SKIP8_Pablo_50pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/knee_imaging/18fov_360mtx_us2.8994/skip8/50pct_rots_about_kz/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 312:641;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;

   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.write_custom_kweight = 0;
     reconstruction.cplusplus_recon      = 0;
     reconstruction.use_bin_grad_files   = 0;
     reconstruction.use_calgrad          = 0;

    case 169
    % May 20, 2016
    % ACR Phantom
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/22FOV_320MTX_128.8660slew_50maxgrad_125.00BW_US1.5160_SKIP14_Pablo_50pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/psf_files/brain_imaging/22fov_320mtx_us1.5160/skip14/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 312:641;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;

   % Reconstruction Structure
     reconstruction.grid_psf             = 1;
     reconstruction.write_custom_kweight = 0;
     reconstruction.cplusplus_recon      = 1;
     reconstruction.use_bin_grad_files   = 0;      
     reconstruction.use_calgrad          = 0;
    
     
    case 170
    % May 18, 2016
    % Knee Volunteer
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP0_Pablo/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/thesis_data/knee/icones_us39252_skip0_pablo/scan/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 312:641;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/thesis_data/knee/icones_us39252_skip0_pablo/cal/';

   % Reconstruction Structure
     reconstruction.grid_psf             = 0;
     reconstruction.write_custom_kweight = 0;
     reconstruction.cplusplus_recon      = 0;
     reconstruction.use_bin_grad_files   = 0;
     reconstruction.use_calgrad          = 0;
     
    case 171
    % May 18, 2016
    % Knee Volunteer
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP0_Pablo_50pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/thesis_data/knee/icones_us39252_skip0/scan/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 312:641;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/thesis_data/knee/icones_us39252_skip0/cal/';

   % Reconstruction Structure
     reconstruction.grid_psf             = 0;
     reconstruction.write_custom_kweight = 0;
     reconstruction.cplusplus_recon      = 0;
     reconstruction.use_bin_grad_files   = 0;      
     reconstruction.use_calgrad          = 0;

    case 172
    % May 18, 2016
    % knee volunteer
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US2.8994_SKIP8_Pablo_50pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/thesis_data/knee/icones_us28994_skip8/scan/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 312:641;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/thesis_data/knee/icones_us28994_skip8/cal/';

   % Reconstruction Structure
     reconstruction.grid_psf             = 0;
     reconstruction.write_custom_kweight = 0;
     reconstruction.cplusplus_recon      = 0;
     reconstruction.use_bin_grad_files   = 0;      
     reconstruction.use_calgrad          = 0;

    case 173
    % May 18, 2016
    % Knee Volunteer
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP8_Pablo_50pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/thesis_data/knee/icones_us39252_skip8/scan/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 312:641;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/thesis_data/knee/icones_us39252_skip8/cal/';

   % Reconstruction Structure
     reconstruction.grid_psf             = 0;
     reconstruction.write_custom_kweight = 0;
     reconstruction.cplusplus_recon      = 0;
     reconstruction.use_bin_grad_files   = 0;      
     reconstruction.use_calgrad          = 0;

    case 174
    % May 18, 2016
    % Brain Volunteer
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/22FOV_320MTX_128.8660slew_50maxgrad_125.00BW_US1.5160_SKIP14_Pablo_50pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/thesis_data/brain/icones_76861proj/scan/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 312:641;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/thesis_data/brain/icones_76861proj/cal/';

   % Reconstruction Structure
     reconstruction.grid_psf             = 0;
     reconstruction.write_custom_kweight = 0;
     reconstruction.cplusplus_recon      = 1;
     reconstruction.use_bin_grad_files   = 0;      
     reconstruction.use_calgrad          = 1;

    case 175
    % May 19, 2016
    % Water QA Phantom
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/15FOV_384MTX_128.8660slew_50maxgrad_125.00BW_US3.0000_SKIP0_Pablo_50pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/cal_data/15fov_128slew/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 312:641;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/cal_data/15fov_128slew/';

   % Reconstruction Structure
     reconstruction.grid_psf             = 0;
     reconstruction.write_custom_kweight = 1;
     reconstruction.cplusplus_recon      = 1;
     reconstruction.use_bin_grad_files   = 0;      
     reconstruction.use_calgrad          = 1;

    case 176
    % May 19, 2016
    % Water QA Phantom
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/15FOV_384MTX_225.0000slew_50maxgrad_125.00BW_US3.0000_SKIP0_Pablo_50pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/cal_data/15fov_225slew/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 312:641;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/cal_data/15fov_225slew/';

   % Reconstruction Structure
     reconstruction.grid_psf             = 0;
     reconstruction.write_custom_kweight = 1;
     reconstruction.cplusplus_recon      = 1;
     reconstruction.use_bin_grad_files   = 0;      
     reconstruction.use_calgrad          = 1;

    case 177
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

    case 178
    % May 23, 2016
    % Leahs water-fat Phantom
    % Acquisition Structure
     acquisition.grad_files_dir          = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/';
     acquisition.grad_files_subdir       = 'Discovery_MR750/18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP0_Pablo_50pct_rotations_about_kz/';
     acquisition.datapathbase            = '/data/data_msk/lhernandez/ICONE/thesis_data/fat_water_phantom/skip0/scan/';
     acquisition.BW                      = 250;          % kHz
     acquisition.slewinglocs             = 312:641;      % These change based on the gradients used during the scan
     acquisition.ese_version             = 25;
     acquisition.b0datapath_x            = '/data/data_msk/lhernandez/ICONE/thesis_data/fat_water_phantom/skip0/calx/';
%     acquisition.b0datapath_y            = '/data/data_msk/lhernandez/ICONE/thesis_data/fat_water_phantom/skip0/caly/';

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
