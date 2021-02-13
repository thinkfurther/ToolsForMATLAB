function writeFloat(filename, array)
    fid = fopen(filename,'wb');
    fwrite(fid,array(:),'float');
    fclose(fid);
end