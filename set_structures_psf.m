function [acquisition, reconstruction] = set_structures_psf(acquisition,reconstruction)

filename = strcat(acquisition.grad_files_dir, acquisition.grad_files_subdir, 'external_icone.grad_info');

[icones_structure, acq_params]= acquire_icones_pulse_info(filename);

acquisition.bw 	    = double(icones_structure.ICONE_BW);
acquisition.dt      = 1/2/acquisition.bw * 1000;

% Get this data from the external_grad.info file contained in strcat(acquisition.grad_files_dir, acquisition.grad_files_subdir);
acquisition.ampx =        acq_params.ampx;
acquisition.amp_gradcal = acq_params.amp_gradcal;
acquisition.slew = 	  acq_params.slew;
acquisition.fov         = double(icones_structure.ICONE_FOV) / 1000;
acquisition.opxres      = icones_structure.ICONE_XRES;          		% opxres
acquisition.gradres     = icones_structure.ICONE_RES;         %/ 2 ;
acquisition.xres        = icones_structure.ICONE_RES * acquisition.dt;          	% rhdaxres 0 - 32768

if (acquisition.BW == 250 && acquisition.bw == 125)
    acquisition.xres = acquisition.xres / 2;
end

acquisition.proj        = icones_structure.ICONE_NPULSES;            	% vipr_nproj from pcvipr.e.m4
acquisition.start_rcv   = 0;
acquisition.end_rcv     = 0;

acquisition.coils       = 1;
acquisition.cal_ampmod  = 1;

acquisition.extra_shiftx = 0;
acquisition.extra_shifty = 0;
acquisition.extra_shiftz = 0;

acquisition.gx_file = acq_params.gx_file;
acquisition.gy_file = acq_params.gy_file;
acquisition.gz_file = acq_params.gz_file;
acquisition.rotmat_file = strcat(acquisition.grad_files_dir,acquisition.grad_files_subdir,acq_params.rotmat_file);
    
% Load reconstruction structure
reconstruction.rcxres   = icones_structure.ICONE_XRES;          	% rhrcxres 0 - 1024

% Set / override some structure variables so they are compatible with psf
if (reconstruction.grid_psf == 1)
     acquisition.acq_extra_points        = 0;
     reconstruction.proj2skip            = 0;
     reconstruction.mask_kgrid           = 0;
     reconstruction.impose_grad_delay    = 0;
     reconstruction.use_calgrad          = 0;
     reconstruction.IsB0corrected        = 0;    
end

end % eof
