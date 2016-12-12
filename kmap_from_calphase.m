function [kx_cal,ky_cal,kz_cal] = kmap_from_calphase(cal_phasedata, acquisition, options)
% DESCRIPTION
%
% INPUTS 
% 	cal_phasedata	structure containing phase data when Gx played on X-,Y-,Z BOARDS
%       cal_ampmod      fraction of imaging gradient amplitude that is used during calibration
%	off_dist 	off-isocenter distance of test slices during calibration scan  [mm]
% 	options		structure containing flags/components such as make_plots, write, etc
% OUTPUTS
% 	kx_cal		1-D kSpace trajectory when Gx played on XBOARD
% 	ky_cal		1-D kSpace trajectory when Gx played on YBOARD
% 	kz_cal		1-D kSpace trajectory when Gx played on ZBOARD

off_dist = acquisition.off_dist / 1000; % convert to meters
cal_ampmod = acquisition.cal_ampmod;

fprintf('Converting calibration phase data to kSpace. \n');
kx_cal = cal_phasedata.phase_xw_uncorr/2/pi/off_dist/cal_ampmod;
ky_cal = cal_phasedata.phase_yw_uncorr/2/pi/off_dist/cal_ampmod;
kz_cal = cal_phasedata.phase_zw_uncorr/2/pi/off_dist/cal_ampmod;

fprintf('off_dist = %.4f [m] \n',off_dist);
fprintf('maximum kx_cal is %.4f [1/m] \n',max(kx_cal));
fprintf('maximum ky_cal is %.4f [1/m] \n',max(ky_cal));
fprintf('maximum kz_cal is %.4f [1/m] \n\n',max(kz_cal));

if options.make_plots
    figure; set(gcf, 'Color','w');
    plot(kx_cal, 'r.'); hold on;
    plot(ky_cal, 'gd'); hold on;
    plot(kz_cal, 'bo'); 
    str_title = '1-D kSpace trajectory during Calibration when icone pulse played on x,y,z boards';
    title(str_title);
    legend('X', 'Y', 'Z');
    hold off;
end

fprintf('Scaling calibration kSpace trajectory to fov \n');
kx_cal = kx_cal * acquisition.fov / (250/acquisition.BW);
ky_cal = ky_cal * acquisition.fov / (250/acquisition.BW);
kz_cal = kz_cal * acquisition.fov / (250/acquisition.BW);

fprintf('maximum kx_cal is now %.4f [1/m] \n',max(kx_cal));
fprintf('maximum ky_cal is now %.4f [1/m] \n',max(ky_cal));
fprintf('maximum kz_cal is now %.4f [1/m] \n\n',max(kz_cal));

end % end of function