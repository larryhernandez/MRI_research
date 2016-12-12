function [gradx, grady, gradz] = Load_iConeGradients(gradients_directory, acquisition, use_bin_grad_files, make_plots)

disp('Loading Idealized Gradient Waveforms');


if (use_bin_grad_files ~=0)

	ampx = acquisition.ampx;
	ampy = acquisition.ampx;
	ampz = acquisition.ampx;

	offset_gradfile = 33;                           % Read over the GE Header
	wavescale = 32766;
	Gcm2mTeslam = 10;                               % Convert Gauss/cm to mTesla/m
else
    num_chars_to_strip = 4; % if string is icone.gx.bin it will become icone.gx
	acquisition.gx_file = strip_last_n_chars_from_end_of_string(acquisition.gx_file, num_chars_to_strip);
    acquisition.gx_file = strcat(acquisition.gx_file,'.raw');

	acquisition.gy_file = strip_last_n_chars_from_end_of_string(acquisition.gy_file, num_chars_to_strip);
    acquisition.gy_file = strcat(acquisition.gy_file,'.raw');

	acquisition.gz_file = strip_last_n_chars_from_end_of_string(acquisition.gz_file, num_chars_to_strip);
    acquisition.gz_file = strcat(acquisition.gz_file,'.raw');

	ampx = 1;
	ampy = 1;
	ampz = 1;
	offset_gradfile = 1;                            % No ge-header in this case
	wavescale = 1;
	Gcm2mTeslam = 1;                               % Convert Gauss/cm to mTesla/m

    fprintf('gx_file = %s \n',acquisition.gx_file);
    fprintf('gy_file = %s \n',acquisition.gy_file);
    fprintf('gz_file = %s \n',acquisition.gz_file);
end

xgradfile   = strcat(gradients_directory, acquisition.gx_file);
ygradfile   = strcat(gradients_directory, acquisition.gy_file);
zgradfile   = strcat(gradients_directory, acquisition.gz_file);

if(~isfield(acquisition,'gradres_designed'))
    acquisition.gradres_designed = acquisition.gradres;
end

% Open X gradient file to generate idealized k-space map
if(isfield(acquisition,'acq_extra_points') && acquisition.acq_extra_points > 0)
    fprintf('Extra points acquired during gradient calibration = %d \n', acquisition.acq_extra_points);
end

gradient_elements = offset_gradfile:offset_gradfile + acquisition.gradres_designed - 1;

% Open the x,y,z gradient waveforms
if (use_bin_grad_files ~= 0) 
	gradx = open_int16(xgradfile);
	grady = open_int16(ygradfile);
	gradz = open_int16(zgradfile);
else
	[gradx, ~] = open_floats(xgradfile);
	[grady, ~] = open_floats(ygradfile);
	[gradz, ~] = open_floats(zgradfile);
end


% Extract the appropriate portion of the X array and scale
gradx = gradx(gradient_elements);
gradx = Gcm2mTeslam*gradx;                      % mT/m & scaled to wavescale
gradx(end) = 0;

% Extract the appropriate portion of the X array and scale
grady = grady(gradient_elements);
grady = Gcm2mTeslam*grady;                      % mT/m & scaled to wavescale
grady(end) = 0;

% Extract the appropriate portion of the X array and scale
gradz = gradz(gradient_elements);
gradz = gradz*Gcm2mTeslam;                      % mT/m & scaled to wavescale
gradz(end) = 0;

% Normalize the gradient waveforms to ampx
gradx = gradx*ampx/wavescale;
grady = grady*ampy/wavescale;
gradz = gradz*ampz/wavescale;

% Plot the idealized gradients before interpolation
if make_plots
    figure; set(gcf, 'Color','w');
    plot(gradx, 'ro'); hold on;
    plot(grady, 'gd'); hold on;
    plot(gradz, 'b*'); hold off;
    ylabel('Amplitude [mT/m]');
    xlabel('Gradient Point');
    legend('G_x', 'G_y','G_z');
    title(sprintf('Idealized G_x,G_y, G_z Waveforms (%d points): The PSD stretches these!',length(grady)));
end

end % end of function
