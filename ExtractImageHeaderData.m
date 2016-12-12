function [acquisition, reconstruction] = ExtractImageHeaderData(acquisition, reconstruction)

% Load imaging parameters from pfile
if (reconstruction.grid_psf == 1)
    disp('About to call set_structures_psf');
    [acquisition, reconstruction] = set_structures_psf(acquisition,reconstruction);
    acquisition.gradres_designed = acquisition.gradres;
    acquisition.bw_designed = acquisition.bw;
else
    acquisition.pfile = get_pfile(acquisition.datapathbase);
    fid = fopen(strcat(acquisition.datapathbase, acquisition.pfile));
    if (fid == -1)
        error('Cannot open pfile!');
    end   
    hdr = read_gehdr14(fid);
    fclose(fid);

    % sample time in microseconds
    acquisition.dt = 1/acquisition.BW/2*1000;
    
    % Load acquisition structure
    acquisition.fov         = hdr.rdb.fov / 1000;	
    acquisition.opxres      = hdr.rdb.user16;          		% opxres
    acquisition.xres        = hdr.rdb.da_xres;          	% rhdaxres 0 - 32768
    acquisition.gradres     = hdr.rdb.da_xres / acquisition.dt ;
    acquisition.proj        = hdr.rdb.user8;            	% vipr_nproj from pcvipr.e.m4
    acquisition.start_rcv   = hdr.rdb.dab_start_rcv(1);
    acquisition.end_rcv     = hdr.rdb.dab_stop_rcv(1);
    acquisition.coils       = acquisition.end_rcv - acquisition.start_rcv + 1;
    acquisition.off_dist    = hdr.rdb.user5;            	% off_dist from pcvipr.e.m4 (off isocenter distance)
    acquisition.cal_ampmod  = hdr.rdb.user15;
%    acquisition.acq_bw 	    = hdr.image.vbw; 			% Variable Bandwidth (Hz)
%    acquisition.sample_time = hdr.rdb.grid_a2d_time;	

    if reconstruction.grid_psf == 1
        acquisition.extra_shiftx = 0;
        acquisition.extra_shifty = 0;
        acquisition.extra_shiftz = 0;
    else
        acquisition.extra_shiftx = hdr.rdb.user24;
        acquisition.extra_shifty = hdr.rdb.user25;
        acquisition.extra_shiftz = hdr.rdb.user26;        
    end
    
    % Load reconstruction structure
    reconstruction.rcxres   = hdr.rdb.im_size;          	% rhrcxres 0 - 1024

    % Load calibration off_dist from calibration scan
    if(reconstruction.use_calgrad ~=0)
    	acquisition.pfile_calx = get_pfile(acquisition.b0datapath_x);
    	fid = fopen(strcat(acquisition.b0datapath_x, acquisition.pfile_calx));
    	if (fid == -1)
        	error('Cannot open pfile!');
    	end
    	hdr_calx = read_gehdr14(fid);
    	fclose(fid);
    	acquisition.off_dist    = hdr_calx.rdb.user5;            	% off_dist from pcvipr.e.m4 (off isocenter distance)
    end

    % Obtain additional gradient & trajectory design parameters from local directory
    [acq_design, ~] = set_structures_psf(acquisition,reconstruction);
    acquisition.ampx = acq_design.ampx;
    acquisition.slew = acq_design.slew;
    acquisition.proj = acq_design.proj;
    acquisition.gradres_designed = acq_design.gradres;
    acquisition.bw_designed = acq_design.bw;
    acquisition.gx_file = acq_design.gx_file;
    acquisition.gy_file = acq_design.gy_file;
    acquisition.gz_file = acq_design.gz_file;
    acquisition.rotmat_file = acq_design.rotmat_file;   
    
    % This probably needs updating for the general cases (not just BW = 125, 250 kHz)
    if ((acq_design.bw == 125) && (acquisition.BW == 250))
        disp('Designed for bw = 125kHz but acquired at bw = 250kHz');
        %acquisition.extra_points_gradcal = acquisition.gradres - acquisition.gradres_designed;
        acquisition.acq_extra_points = (acquisition.gradres - acquisition.gradres_designed) * (acquisition.BW/acquisition.bw_designed);
    elseif (acq_design.bw == acquisition.BW)
        disp('Designed and acquired bandwidth are equal');
        acquisition.gradres = hdr.rdb.da_xres;
        acquisition.acq_extra_points = acquisition.gradres - acquisition.gradres_designed;
    else
        disp('Section C');
        acquisition.acq_extra_points = (acquisition.gradres - acquisition.gradres_designed) * (acquisition.BW/acquisition.bw_designed);
    end
    fprintf('acquisition.acq_extra_points = %d \n',acquisition.acq_extra_points);
end

end %eof
