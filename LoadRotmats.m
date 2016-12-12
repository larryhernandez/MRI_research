function [rotmats, num_rots] = LoadRotmats(filename)
%   LOADROTMATS: Given the full filename this function loads 3x3 rotation matrices
%
%   INPUTS
%   	filename    full path, including filename, to the rotation matrix file
%
%   OUTPUTS
%       rotmats	    set of 3x3 rotation matrices	
%       num_rots    the total number of rotation matrices
    [rotmat_raw, ~] = open_floats(filename);
    num_rots = length(rotmat_raw)/9;
    rotmats = reshape(rotmat_raw, [3, 3, num_rots]);
end