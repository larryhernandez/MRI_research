function [] = check_kweight_dimensions(proj, xres, kweight_filename)
% April 7, 2015
% by Larry Hernandez
% 
% Matlab function which checks that the size of the kweight array used 
% to reconstruct icones images is of the appropriate size for the data
% (the C-reconstruction code does not check for this, so it's possible that
% images are reconstructed with fewer kweight values than needed, making 
% garbage images.

disp('Checking dimensions of kweight.');

% Opens kweight file
[kweights, ~] = open_floats(kweight_filename);
sprintf('kweight-filename = %s \n', kweight_filename)
N_kwt = length(kweights);
fprintf('Number of kweight elements = %d \n',N_kwt);
fprintf('proj * xres = %d \n',proj*xres);
fprintf('proj =  %d \n',proj);
fprintf('xres =  %d \n',xres);

% First check if kweight file has too few weights
if (N_kwt < proj*xres)
    error('Error! Kweight file has too few elements for a successful reconstruction.');
end

% Next, check if kweight file has too many weights
if (N_kwt > proj*xres)
    error('Error! Kweight file has too many elements. Check that kweight file being used here is the correct one.');
end

disp('Finished checking kweight file');

end  % end of function
