function pfile = get_pfile(folder_name)
% INPUTS
%   folder_name     character string containing full name of path
%                   containing the pfile of interest
%
% OUTPUTS
%   pfile           character string containing name of pfile
%

input_string = strcat(folder_name, 'P*.7');
listing = dir(input_string);

if (isempty(listing))
   error('There are no files with the following naming nomenclature ''P*.7''. Aborting routine');
else
   pfile = listing.name;
end

end
