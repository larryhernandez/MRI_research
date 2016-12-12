function [nproj2recon, kdata] = RemoveProjectionData(kdata, nproj_acq, proj2skip)

% DESCRIPTION
%       Function which takes k-space data and removes the projections
%       specified by 'proj2skip'
% 
% INPUTS
%       kdata           complex kspace data
%       nproj_acq       number of projections prescribed / acquired in scan
%       proj2skip       array of integers identifying undesirable
%                       projections (i.e. projections to be removed)
%       
% OUTPUTS
%       
%       nproj2recon     number of projections to process ( <= nuproj_acq)     
%       kdata           revised kspace data with undesired projections removed
% *************************************************************************

    if (proj2skip ~= 0)
        NumProj2Skip = length(proj2skip);
        kdata(:, proj2skip) = [];
    else
        NumProj2Skip = 0;
    end
    nproj2recon     = nproj_acq - NumProj2Skip;
end % end of function
