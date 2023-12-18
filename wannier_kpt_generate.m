clear

data = readmatrix('IBZKPT'); 
data = data(:, 1:3);
outputFileID = fopen('wannier90_geninterp.kpt', 'w');

numRows = size(data, 1);

for i = 1:numRows
    fprintf(outputFileID, '#Comment \n');
    fprintf(outputFileID, 'frac \n');
    fprintf(outputFileID, '%d %f %f %f\n', i, data(i, :));
end

fclose(outputFileID);
