function[matrix]=clearUsedCapacity(matrix)
[Xi,Xj]=size(matrix);
for i=1:Xi
   for j=1:Xj
      matrix(i,j).usedCapacity=0;
   end
end
