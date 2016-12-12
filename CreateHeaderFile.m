function [] = CreateHeaderFile(acquisition, reconstruction)

if (isfield(acquisition,'acq_extra_points') && acquisition.acq_extra_points > 0)
    acquisition.xres = acquisition.xres - acquisition.acq_extra_points;
end

if (~isfield(reconstruction,'adjust_scale_factor'))
    reconstruction.adjust_scale_factor = 1;	
end

% Header file that C-Recon needs
filename = strcat(reconstruction.datapath2write,'header.txt');
fprintf('About to write to file %s \n\n', filename);

fid = fopen(filename,'w');
fprintf(fid, 'numrecv\t%d\n',acquisition.coils);
fprintf(fid, 'num_encodes\t%d\n',1);
fprintf(fid, 'fov\t%d\n', acquisition.fov*1000);
fprintf(fid, 'acq_bw\t%d\n',acquisition.BW);
fprintf(fid, 'multi_echo\t%d\n',2);
fprintf(fid, 'opxres\t%d\n',acquisition.opxres);
fprintf(fid, 'xres\t%d\n',acquisition.xres);
fprintf(fid, '2d_flag\t%d\n',acquisition.flag_2d);
fprintf(fid, 'nproj\t%d\n',reconstruction.nproj2recon);
fprintf(fid, 'rcxres\t%d\n',reconstruction.rcxres);
fprintf(fid, 'rcyres\t%d\n',reconstruction.rcyres);
fprintf(fid, 'rczres\t%d\n',reconstruction.rczres);
fprintf(fid, 'extra_shiftx\t%d\n',acquisition.extra_shiftx);
fprintf(fid, 'extra_shifty\t%d\n',acquisition.extra_shifty);
fprintf(fid, 'extra_shiftz\t%d\n',acquisition.extra_shiftz);
fprintf(fid, 'echo0_start\t%d\n',0);
fprintf(fid, 'echo0_stop\t%d\n',acquisition.xres/2-1);
fprintf(fid, 'echo1_start\t%d\n',acquisition.xres/2);
fprintf(fid, 'echo1_stop\t%d\n',acquisition.xres-1);
fprintf(fid, 'adjust_scale_factor\t%d\n',reconstruction.adjust_scale_factor);
% fprintf(fid, 'output_scale_factor');
fclose(fid);

end %eof
