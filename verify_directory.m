function [] = verify_directory(data_folder)
  	if(~isdir(data_folder))
      		mystring = sprintf('%s is not a valid directory', data_folder);
      		disp(mystring);
      		error('Please provide a legitimate directory');
	end
end %eof
