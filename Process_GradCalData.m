function [numpulses, cal_phasedata, calgrads, rcal_unwrapped] = Process_GradCalData(acquisition, reconstruction, b0eddycorr_axis, options)
% DESCRIPTION
% 
% INPUTS
% 
% OUTPUTS
%

%Figure settings
% linewidth = 2;
% textsize = 26;
% font_type = 'Courier';
% width = 350; %350
% height = 300; %300

%%
    if (b0eddycorr_axis == 1)
        str_gradient_label = 'Gx';
        if exist(acquisition.b0datapath_x, 'file')
            caldata_filename    = strcat(acquisition.b0datapath_x, 'Trajectory_Differences_Sorted.dat');
%             caldata_filename    = strcat(acquisition.b0datapath_x, 'PCVIPR_DIFF.dat');
        else
            caldata_filename    = strcat(acquisition.datapathbase, 'Trajectory_Differences_Sorted.dat');
%             caldata_filename    = strcat(acquisition.datapathbase, 'PCVIPR_DIFF.dat');
        end
    elseif (b0eddycorr_axis == 2)
        str_gradient_label = 'Gy';
        if exist(acquisition.b0datapath_y, 'file')
              caldata_filename    = strcat(acquisition.b0datapath_y, 'Trajectory_Differences_Sorted.dat');
%             caldata_filename    = strcat(acquisition.b0datapath_y, 'PCVIPR_DIFF.dat');
        end
    end
    
    calibrationdata     = open_floats(caldata_filename);
    numpulses           = length(calibrationdata)/acquisition.xres;
    fprintf('acquisition.xres = %d \n',acquisition.xres);
    fprintf('length(calibrationdata) = %d \n',length(calibrationdata));
    fprintf('number of calibration pulses is %d \n',numpulses);
    rcal                = -reshape(calibrationdata, acquisition.xres, numpulses);
    rcal_unwrapped      = unwrap(rcal);

    if options.make_plots
        % Plot unwrapped raw calibration experiments
        figure; set(gcf, 'Color','w');
        plot(rcal_unwrapped);
        title(sprintf('All %d calibration data sets: Unwrapped', numpulses));

        % Display wrapped echoes from gradient calibration data
        figure; imagesc(rcal); set(gcf, 'Color','w');
        colormap('gray');
        title(sprintf('All %d Calibration Echoes (phase shown here)', numpulses));
        set(gca, 'XTick', 0:3:numpulses);
        set(gca, 'YTick', 0:acquisition.xres/4:acquisition.xres);
        colorbar;
    end
    
    % Test Gradient played on XBoard
    calx_xw_on = 1;
    %     calx_xw_on = 4;
    cal_phasedata.phase_xw_uncorr = rcal_unwrapped(:,calx_xw_on);
    calgrads.cal_xgrad = diff(cal_phasedata.phase_xw_uncorr);  
    
    % Test Gradient played on YBoard
    caly_xw_on = 2;
    %     caly_xw_on = 20;
    cal_phasedata.phase_yw_uncorr = rcal_unwrapped(:,caly_xw_on);
    calgrads.cal_ygrad = diff(cal_phasedata.phase_yw_uncorr);

    % Test Gradient played on ZBoard
    calz_xw_on = 3;
    %     calz_xw_on = 36;
    cal_phasedata.phase_zw_uncorr = rcal_unwrapped(:,calz_xw_on);
    calgrads.cal_zgrad = diff(cal_phasedata.phase_zw_uncorr);

    % Adjust phase data for calibration amplitude scaling & bipolar measurements (i.e. divide by 4)
    cal_phasedata.phase_xw_uncorr = cal_phasedata.phase_xw_uncorr / 4; % /2;
    cal_phasedata.phase_yw_uncorr = cal_phasedata.phase_yw_uncorr / 4; % /2;
    cal_phasedata.phase_zw_uncorr = cal_phasedata.phase_zw_uncorr / 4; % /2;
    
    
    if (acquisition.acq_extra_points > 0)
        cal_phasedata.phase_xw_uncorr = cal_phasedata.phase_xw_uncorr(reconstruction.data2use);
        cal_phasedata.phase_yw_uncorr = cal_phasedata.phase_yw_uncorr(reconstruction.data2use);
        cal_phasedata.phase_zw_uncorr = cal_phasedata.phase_zw_uncorr(reconstruction.data2use);        
 
        fprintf('length of calgrads.cal_xgrad is %d \n', length(calgrads.cal_xgrad)); 
        if (reconstruction.data2use(1) == 1)
            start_index = reconstruction.data2use(1);
            stop_index = reconstruction.data2use(end)+1;
        else
            start_index = reconstruction.data2use(1)-1;
            stop_index = reconstruction.data2use(end)-1;
        end

        fprintf('start_index = %d \t stop_index = %d \n', start_index,stop_index);
        indices_calgrads = start_index:stop_index;
        calgrads.cal_xgrad = calgrads.cal_xgrad(indices_calgrads);
        calgrads.cal_ygrad = calgrads.cal_ygrad(indices_calgrads);
        calgrads.cal_zgrad = calgrads.cal_zgrad(indices_calgrads);
    end
        
    if options.make_plots
%         dt = acquisition.dt;
%         time = 0:1:length(calgrads.cal_xgrad) * dt;
    
        figure;
        set(gcf,'color','white');
        plot(cal_phasedata.phase_xw_uncorr,'r'); hold on;
        plot(cal_phasedata.phase_yw_uncorr,'g');
        plot(cal_phasedata.phase_zw_uncorr,'b');
        title('Cal Phase data adjusted for cal_ampmod');
        xlabel('Sample Point');
        ylabel('Phase');
        legend('X','Y','Z');
        hold off;

        figure; set(gcf, 'Color','w');
        plot(calgrads.cal_xgrad, 'r','LineWidth',4);
        title(sprintf('iCone %s: Calibration on X Axis',str_gradient_label),'FontSize',46,'FontName','Courier 10 Pitch');
        xlabel('SAMPLE POINT','FontSize',40,'FontName','Courier 10 Pitch');
        ylabel('Amplitude [arb]','FontSize',40,'FontName','Courier 10 Pitch');

        
        figure; set(gcf, 'Color','w');
        plot(calgrads.cal_ygrad, 'g','LineWidth',4);
        title(sprintf('iCone %s: Calibration on Y Axis',str_gradient_label),'FontSize',46,'FontName','Courier 10 Pitch');
        xlabel('SAMPLE POINT','FontSize',40,'FontName','Courier 10 Pitch');
        ylabel('Amplitude [arb]','FontSize',40,'FontName','Courier 10 Pitch');
        
        figure; set(gcf, 'Color','w');
        plot(calgrads.cal_zgrad, 'b','LineWidth',4);
        title(sprintf('iCone %s: Calibration on Z Axis',str_gradient_label),'FontSize',46,'FontName','Courier 10 Pitch');
        xlabel('SAMPLE POINT','FontSize',40,'FontName','Courier 10 Pitch');
        ylabel('Amplitude [arb]','FontSize',40,'FontName','Courier 10 Pitch');
    end
end % function declaration