function [nproj2process, kdata, kdata_recycle, reconstruction] = Process_iConeKdata(echo2process, coil, acquisition, reconstruction, options,kdata_recycle)

%% Load kdata
if (reconstruction.recycle_kdata == 0)
    if (reconstruction.grid_psf == 0)
        % This sprintf works for up to 100 coil elements
        if (coil < 10)
            coil_label = sprintf('0%d',coil);
        else
            coil_label = num2str(coil);
        end

        fn = sprintf('KDATA_C%s.dat', coil_label);
        % fprintf('Reading raw kspace data from %s ... \n', fn);
        file = strcat(acquisition.datapathbase, fn);
        [kdata_raw, ~] = open_floats(file);

        kdata = reshape(kdata_raw(1:2:end) + 1i*kdata_raw(2:2:end), [acquisition.xres acquisition.proj]);

    else % grid_psf == 1
        kdata = ones(acquisition.xres, acquisition.proj);
        kdata = complex(kdata);
    end
        kdata_recycle = kdata;
else
    % Re-use raw kdata from prev. iteration within 'run_iconereconfx.m'
    kdata = kdata_recycle;
end

%% Remove undesirable projections
[nproj2process, kdata] = RemoveProjectionData(kdata, acquisition.proj, reconstruction.proj2skip);

%% Modify data structure: first half-echo, second half-echo, or PSF

% Set an array aside for writing revised kdata
if (reconstruction.grid_psf && echo2process == 3)
    kdata(:) = complex(1,0);        % force complex values for kdata

elseif reconstruction.grid_ramp
    kdata = RampKData(acquisition.xres, acquisition.proj, [1 128]);  % Synthetic kdata which ramps from 1 to 128

elseif (echo2process == 0)          % Process first half-echo only
    if (reconstruction.echo_includes_annulus)
        pos1 = acquisition.xres/2 + 1 ; % slewinglocs(1) + 1 ;         
    else
        pos1 = acquisition.slewinglocs(1) + 1 ;
    end
    
    pos2 = acquisition.xres;

    if reconstruction.grid_psf
        kdata(1:pos1-1,:) = complex(1);
    end
    kdata(pos1:pos2,:) = complex(0);         % Set 2nd half echo to 0

    % Set entire columns (i.e. projections) to zero
    if (isfield(reconstruction,'ideal_echo_hack_flag') && (reconstruction.ideal_echo_hack_flag == 1))
        cols2zero = 2:2:acquisition.proj;
        kdata(:,cols2zero) = complex(0);
    end
elseif (echo2process == 1)          % Process 2nd half-echo only
    pos1 = 1; 
    if (reconstruction.echo_includes_annulus)
        pos2 = acquisition.xres/2;
    else
        pos2 = acquisition.slewinglocs(1);
    end
    if reconstruction.grid_psf
        kdata(pos2+1:end,:) = complex(1);
    end
    kdata(pos1:pos2,:) = complex(0);         % Set 1st half of k-Space data to 0

    if (isfield(reconstruction, 'ideal_echo_hack_flag') && (reconstruction.ideal_echo_hack_flag == 1))
        cols2zero = 1:2:(acquisition.proj-1);
        kdata(:,cols2zero) = complex(0);
    end
    
elseif (echo2process == 2)          % Combine the echoes without the annulus/slewing region
    if (reconstruction.grid_psf)
       kdata(1:end,:) = complex(1);
    end
    kdata(acquisition.slewinglocs,:) = complex(0);         % Set "annulus" data values to 0
end


if (isfield(acquisition,'acq_extra_points') && acquisition.acq_extra_points > 0)
%   Skip the 'acq_extra_points' elements from the data array

%   Discard the last 4 points
%   kdata = kdata(1:acquisition.xres - acquisition.acq_extra_points,:); %

%   Discard the first 4 data points 
%   reconstruction.data2use = (acquisition.acq_extra_points+1):acquisition.xres;

%   Discard the first 3 data points
    reconstruction.data2use = (acquisition.acq_extra_points):(acquisition.xres-1); % <----the method that has so far been used for thesis images

%    start_index = acquisition.acq_extra_points;
%    stop_index = start_index + acquisition.xres-1; 
%    reconstruction.data2use = start_index:stop_index;
    kdata = kdata(reconstruction.data2use,:);
end
%% Plot Kspace Data
if options.make_plots
   figure; set(gcf, 'Color','w');
   imagesc(abs(kdata)); colormap('gray');
   title(sprintf('Raw K-Space (coil # %d)',coil));
end

end
