function [] = normalize_psf_data_and_take_roots(dir,input_filename,roots_to_take)

disp('About to normalize point spread function image');
output_filename = strcat(input_filename, '_normalized');
[icones_image_normalized, icones_psf_data] = normalize_image_to_maxsignal(dir,input_filename, output_filename);

%for jj = 1:length(roots_to_take)
%    n = roots_to_take(jj);
%    fprintf(sprintf('About to take %d th root of normalized psf data \n',n));
%    icones_psf_data_nth_root = nthroot(icones_image_normalized,n);
%    output_filename = strcat(input_filename,sprintf('_normalized_and_%dth_root',n));
%    status_of_write_floats = write_floats(icones_psf_data_nth_root, strcat(dir,output_filename));
%end

scale = 64000;
fprintf(sprintf('About to scale normalized psf data to %d and take logarithm \n',scale));
icones_psf_data_scaled_and_ln = log(icones_image_normalized*scale + 1);
output_filename = strcat(input_filename,sprintf('_scaled_to_%d_and_nat_log',scale));
status_of_write_floats = write_floats(icones_psf_data_scaled_and_ln, strcat(dir,output_filename));

end %eof
