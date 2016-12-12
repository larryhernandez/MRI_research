function status = write_floats(data, fullfilepath)
    fid = fopen(fullfilepath,'w');
    if (fid == -1)
        error('Cannot open file!');
    end
    fwrite(fid,data,'float');
    status = fclose(fid);
end