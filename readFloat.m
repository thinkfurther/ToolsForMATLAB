function [output] = readFloat(filename, arrayShape)
    if ~isfile(filename)
     	error('File does not exist');
    end
    fid = fopen(filename,'rb');
    temp = fread(fid,'float');
    fclose(fid);
    if nargin == 1
        output = temp;
        return;
    end
    try
        output = reshape(temp, arrayShape);
    catch
       error('Shape does not match the file');
    end 
end