function reconstruction = kdata_recycle_flag(reconstruction, Num_echoes2process, echo_index)
%
% January 7, 2013
% MATLAB function 
% Larry Hernandez
%
% DESCRIPTION
%
% This function determines if a very large data set (i.e. kdata) should be
% recycled for subsequent use within 'run_iconereconfx.m' or if it should
% be re-initialized. The flag 'reconstruction.recycle_kdata' is set to 0 or
% 1 and is accessed by the function 'Process_iConeKdata.m'. This feature 
% saves computing time, particularly for data sets that were acquired with 
% multiple channel coils. 
%
% Note: This function works within the for loop 'for echo_index' of
% 'run_iconereconfx.m', which clears the kdata variable at the end of the
% loop, provided certain conditions have been met.
%
%
% INPUTS
%   reconstruction      structure
%
% OUTPUTS
%
%   reconstruction      updated version of the input parameter

% 
if (Num_echoes2process == 1)
    reconstruction.recycle_kdata = 0;
else      % More than one echo to be processed
    if (echo_index == 1)        
          reconstruction.recycle_kdata = 0;
	else
			reconstruction.recycle_kdata = 1;
    end
end

end % eof