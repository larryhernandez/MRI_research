%clear all; close all; clc;
%%
primary_icones_gradients_directory = '/export/home/lhernandez/matlab/ICONE/1_iconecreation/gradient_files/Discovery_MR750/';
make_plots = 0;
use_bin_gradient_files = 0;
gyromagnetic_ratio = 42.576e-3;   % MHz/mT
%% icones velocities
skip_and_index_spoke1 = [	0, 406;
%                           2, 374;
                            4, 350;
%%              			6, 330;
               			8, 310;
%%              			10, 292;
               			12, 272;
%%              			14, 252;
                   			16, 232;
% %              			18, 206;
% %              			20, 172;
% %             			22, 110
                        ];

skip_values = skip_and_index_spoke1(:,1);
num_icones_trajectories = length(skip_values);
s = cell(num_icones_trajectories,1);
for jj=1:num_icones_trajectories
	s{jj} = sprintf('18FOV_360MTX_128.8660slew_50maxgrad_125.00BW_US3.9252_SKIP%d_Pablo_50pct_rotations_about_kz/', skip_values(jj));
end

speeds = cell(num_icones_trajectories,1);
icones_avg_speeds = zeros(num_icones_trajectories,1);
kradius = cell(num_icones_trajectories,1);
%angles_between_icones_spokes = cell(num_icones_trajectories,1);
%average_angle = zeros(num_icones_trajectories,1);

for j=1:num_icones_trajectories 
        secondary_icones_gradients_directory = char(s(j));
        gradients_directory = strcat(primary_icones_gradients_directory, secondary_icones_gradients_directory);
    	filename = strcat(gradients_directory,'external_icone.grad_info');
    	[~, acquisition] = acquire_icones_pulse_info(filename);
    	[gx,gy,gz] = Load_stretch_gradients(gradients_directory,acquisition,use_bin_gradient_files); % [mT/m]

    	speeds{j} = kspace_speed_from_gradients(gx,gy,gz,gyromagnetic_ratio);
    	icones_avg_speeds(j) = mean(speeds{j});
    
    	[kx,ky,kmax] = GenerateKmap2D(gx,gy,acquisition.dt/2,0);
    	kradius{j} = sqrt(kx.^2 + ky.^2) / 1000;
   
    	% Load rotation matrix
    	acquisition.rotmat_file = strcat(gradients_directory,acquisition.rotmat_file);
    	[rotmats,num_rots] = LoadRotmats(acquisition.rotmat_file);

    	gradients = Pack3VectorsIntoStructure(gx,gy,gz);
    	[Kx, Ky, Kz] = generate_icone_kmap(gradients, acquisition.dt/2, rotmats, gyromagnetic_ratio);
    	%angles_between_icones_spokes{j} = angles_between_spokes(Kx(:),Ky(:),Kz(:),acquisition.xres, skip_and_index_spoke1(j,2));
    	%average_angle(j) = mean(angles_between_icones_spokes{j});
end

skip_and_average_speed = zeros(num_icones_trajectories,2);
skip_and_average_speed(:,1) = skip_values;
skip_and_average_speed(:,2) = icones_avg_speeds;

%skip_and_average_angle = zeros(num_icones_trajectories,2);
%skip_and_average_angle(:,1) = skip_values;
%skip_and_average_angle(:,2) = average_angle;

%% Plots
%plot_options = {'r.','g.','b.','k.','c.','m.','y.','ro','go','bo','ko','co','mo','yo'};
plot_options = {'g-','r-','b-','k-','c-','m-','y-','go','ro','bo','ko','co','mo','yo'};

if make_plots 
%	figure;
	set(gcf,'color','white');
    set(gca,'FontSize',22); 
	for j=1:num_icones_trajectories
        plot(kradius{j}(1:length(kradius{j})/2),speeds{j}(1:length(speeds{j})/2),plot_options{j}, 'MarkerSize', 16);
        hold on;
        my_legend
    end
%    title('0.5mm Resolution Imaging with icones');
    xlabel('k-space radius [mm^{-1}] ');
    ylabel('k-space speed [mm^{-1} / ms]');
    hold off;

	% Bar Chart
	figure;
	set(gcf,'color','white');
    set(gca,'FontSize',22); 
%     set(gca, 'FontName','Courier');
	bar_chart_indices = 1:num_icones_trajectories;
	bar(skip_values(bar_chart_indices), icones_avg_speeds(bar_chart_indices));
    title('0.5mm Resolution Imaging with icones');
	xlabel('Skip');
	ylabel('Average Speed [mm^{-1} / ms]');    
    
end

%% Write the trajectory data to csv file
%csv_filenames_kradius = cell(num_icones_trajectories ,1);
%csv_filenames_speeds = cell(num_icones_trajectories ,1);

%for jj=1:num_icones_trajectories 
%   csv_filenames_kradius{jj} = sprintf('kradius_skip_%d',2*jj);
%   csv_filenames_speeds{jj} = sprintf('speeds_skip_%d',2*jj);   
%end

% write_cell_to_csv(kradius, csv_filenames_kradius);
% write_cell_to_csv(speeds, csv_filenames_speeds);