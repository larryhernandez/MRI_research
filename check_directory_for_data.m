function [status_flag] = check_directory_for_data(data_folder, file_name)

%% Look for KDATA files
full_data_file_name = strcat(data_folder, file_name);

if(exist(full_data_file_name, 'file'))
   fprintf(sprintf('%s file exists in the folder %s \n',file_name, data_folder));
   status_flag = 1;
else
   fprintf(sprintf('%s does not exist in %s \n', file_name,data_folder ));
   status_flag = 0;
end


end % eof
