function kdata_out = eliminate_outer_kspace_signal(kdata, fraction_to_keep)
    fprintf('Eliminating outer %.0f percent of k-space data \n', (1-fraction_to_keep)*100);
    [xres, proj, coils] = size(kdata);
    start_index = floor(fraction_to_keep*xres);
    stop_index = floor((1-fraction_to_keep)*xres);
    indices_to_zero = start_index:stop_index;
    kdata_out = kdata;
    kdata_out(indices_to_zero,:,:) = 0;
end