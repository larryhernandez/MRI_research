function [data_raw, status] = open_floats(filename)
    fid = fopen(filename);
    if (fid == -1)
        ERROR_MESSAGE = sprintf('Cannot open file %s !', filename);
        error(ERROR_MESSAGE);
    end

    data_raw = fread(fid,'float');
    status = fclose(fid);
end