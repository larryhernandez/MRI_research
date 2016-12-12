function [diff_kx diff_ky diff_kz] = kspacedeviations(kcal, kref, acquisition, make_plots)
% DESCRIPTION 
%   Function that accepts a theoretical kspace map, kref, and
%   compares it to a measured kspace map, kcal, by way of subtraction.
%                  
% INPUTS
%       kcal            measured kspace map (kx,ky,kz)
%       kref            theoretical / reference kspace map (KX,KY,KZ)
%       acquisition     structure containing field strength of this
%                       experiment
%       make_plots      flag ( 0 or ~0) indicating whether or not to make
%                       plots of the kspace deviations
% OUTPUTS

% Deviations from theoretical kspace trajectory
diff_kx = kcal.x - kref.x;
diff_ky = kcal.y - kref.y;
diff_kz = kcal.z - kref.z;

% Average deviation from theoretical kspace trajectory
avg_diff_kx = mean(abs(diff_kx));
avg_diff_ky = mean(abs(diff_ky));
avg_diff_kz = mean(abs(diff_kz));

% Maximum deviation from theoretical kspace trajectory
max_diff_kx = max(abs(diff_kx));
max_diff_ky = max(abs(diff_ky));
max_diff_kz = max(abs(diff_kz));

% Total Variation
TotalVariation_kx = max(diff_kx) - min(diff_kx);
TotalVariation_ky = max(diff_ky) - min(diff_ky);
TotalVariation_kz = max(diff_kz) - min(diff_kz);

fprintf('Average deviation from idealized kx is: %.3f [1/m] \n', avg_diff_kx);
fprintf('Average deviation from idealized ky is: %.3f [1/m] \n', avg_diff_ky);
fprintf('Average deviation from idealized kz is: %.3f [1/m] \n\n', avg_diff_kz);

fprintf('Maximum deviation from idealized kx is: %.3f [1/m] \n', max_diff_kx);
fprintf('Maximum deviation from idealized ky is: %.3f [1/m] \n', max_diff_ky);
fprintf('Maximum deviation from idealized kz is: %.3f [1/m] \n\n', max_diff_kz);

fprintf('Total Variation in kx is: %.3f [1/m] \n', TotalVariation_kx);
fprintf('Total Variation in ky is: %.3f [1/m] \n', TotalVariation_ky);
fprintf('Total Variation in kz is: %.3f [1/m] \n', TotalVariation_kz);

if make_plots
    % Plot the difference between ideal kx's and the actual kx's
    figure; set(gcf, 'Color','w');
    plot(diff_kx, 'ro');
    string = sprintf('K Space deviations ');
    title(string);
    ylabel('\Delta k [1/m]'); xlabel('Sample point N');
    hold on;
    
    plot(diff_ky, 'go');
    hold on;
    
    plot(diff_kz, 'bo');
    legend('K_x', 'K_y','K_z'); hold off;
end

end % end of function
