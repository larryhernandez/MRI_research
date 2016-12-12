function datapath2write = CreateOutputDirectory(echo2process, acquisition, reconstruction, write_files)

%% Simple consistency check--- Maybe put in CreateOutputDirectory function?
% Maybe create a consistency check function instead?
if (reconstruction.grid_psf == 1 && reconstruction.grid_ramp ==1)
    error('grid_psf and grid_ramp cannot both be set to 1!');
end
%% Choose directory for writing output
if (reconstruction.grid_psf && echo2process == 3)
     datapath2write  = strcat(acquisition.datapathbase,'psf_files/');
    %datapath2write  = '/data/data_msk/lhernandez/ICONE/psf_files/');

elseif (reconstruction.grid_ramp == 1)
    datapath2write  = strcat(acquisition.datapathbase,'grid_ramp_files/');

elseif (echo2process == 0)
    if reconstruction.grid_psf
        datapath2write  = strcat(acquisition.datapathbase,'first_echo_files/psf_files/');
    else
        datapath2write  = strcat(acquisition.datapathbase,'first_echo_files/');
    end
    
elseif (echo2process == 1)
    if reconstruction.grid_psf
        datapath2write  = strcat(acquisition.datapathbase,'second_echo_files/psf_files/');
    else
        datapath2write  = strcat(acquisition.datapathbase,'second_echo_files/');    
    end
    
elseif (echo2process == 2)
    datapath2write  = strcat(acquisition.datapathbase,'combined_echoes_files/');

elseif (echo2process == 3)
    datapath2write  = strcat(acquisition.datapathbase, 'fullrecon_files/');

else
    error('Choose an apropriate option: grid_psf, grid_ramp, or echo2process!');
end


if reconstruction.densitycomptype == 1 % voronoi
   datapath2write = strcat(datapath2write, 'voronoi_files/'); 

elseif reconstruction.densitycomptype == 3 % dcf_pseudoanalytic
   datapath2write = strcat(datapath2write, 'dcf_pseudoanalytic_files/'); 
end

if reconstruction.proj2skip ~= 0
    datapath2write  = strcat(datapath2write, 'skip_proj_files/');
end

if (reconstruction.mask_kgrid ~= 0)
    datapath2write  = strcat(datapath2write, 'gridded_kthresh_files/');
end

% Create directory 'datapath2write' if it does not exist
if write_files
    if ~isdir(datapath2write),
            mkdir(datapath2write);
    end
end

end
