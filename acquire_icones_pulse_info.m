function [icones_pulse_info, acquisition] = acquire_icones_pulse_info(filename)
%
% INPUTS
% 	filename 	full filename, includiing path if necessary, indicating location of relevant "external_icone.grad_info"
%
% OUTPUTS
%	pulse_info	structure (floats & strings) containing names of pulses & their properties (pulse widths, amplitudes, etc)
%


%% Message to user
disp('Acquiring icones pulse info');
%% Open file and load data into cell array
fid = fopen(filename);

% Read the data in sections corresponding to data type (i.e. integer,
% float, string) as they appear in the 'external_icone.grad_info' 
% generated by:
% /export/home/lhernandez/matlab/ICONE/1_iconecreation/generate_icone_files.m
% all_formats = [];

formats = ['%*s %s %d';
           '%*s %s %f';
           '%*s %s %d';
           '%*s %s %d';
           '%*s %s %s';
           '%*s %s %d'];

lines_with_this_format =    [1;
                             4;
                             14;
                             1;
                             4;
                             1];

num_cells = length(lines_with_this_format);

% Preallocate memory for cell containing data (names and values)
pulse_info = cell(1,num_cells);

%% 
icones_pulse_info = struct;

% Load data into cell
for jj=1:num_cells
        pulse_info{jj} = textscan(fid, formats(jj,:),lines_with_this_format(jj),'CommentStyle',{'/*','*/'});
        for kk=1:lines_with_this_format(jj)
            if iscell(pulse_info{jj}{2}(kk))
                icones_pulse_info.(char(pulse_info{jj}{1}{kk})) = char(pulse_info{jj}{2}{kk});
            else
                icones_pulse_info.(char(pulse_info{jj}{1}{kk})) = pulse_info{jj}{2}(kk);
            end
        end
end
%% Concatenate into 1 cell
% field_names  = [pulse_info{1}{:,1}; pulse_info{2}{:,1}; pulse_info{3}{:,1}; pulse_info{4}{:,1}; pulse_info{5}{:,1}; pulse_info{6}{:,1}];
% field_values = [pulse_info{1}{:,2}; pulse_info{2}{:,2}; pulse_info{3}{:,2}; pulse_info{4}{:,2}; pulse_info{5}{:,2}; pulse_info{6}{:,2}];

% Close the file
fclose(fid);
%%

acquisition.ampx        = double(icones_pulse_info.ICONE_AMPX); % g/cm
acquisition.amp_gradcal = acquisition.ampx;
acquisition.slew	= icones_pulse_info.ICONE_SLEW*10;
acquisition.gradres     = double(icones_pulse_info.ICONE_RES);
acquisition.xres        = acquisition.gradres*2;
acquisition.rotmat_file = char(icones_pulse_info.ICONE_ROTATION_NAME);
acquisition.rotmat_file = strrep(acquisition.rotmat_file,'"','');

acquisition.gx_file = char(icones_pulse_info.ICONE_PULSE_NAMEX);
acquisition.gx_file = strrep(acquisition.gx_file,'"','');

acquisition.gy_file = char(icones_pulse_info.ICONE_PULSE_NAMEY);
acquisition.gy_file = strrep(acquisition.gy_file,'"','');

acquisition.gz_file = char(icones_pulse_info.ICONE_PULSE_NAMEZ);
acquisition.gz_file = strrep(acquisition.gz_file,'"','');

acquisition.proj        = double(icones_pulse_info.ICONE_NPULSES);
acquisition.dt          = 1/double(icones_pulse_info.ICONE_BW)/2*1000;                 % us
acquisition.fov		= double(icones_pulse_info.ICONE_FOV);
acquisition.Nx 		= double(icones_pulse_info.ICONE_XRES);

end %eof
