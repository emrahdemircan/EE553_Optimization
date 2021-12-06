function[]=printMatrix(mat)
[Xi,Xj]=size(mat);
for i=1:Xi
   for j=1:Xj
      if mat(i,j).connected==1
      fprintf('%d->%d\t:\t',i,j);
      fprintf('%d\t%d\t%d\t\n',mat(i,j).connected,mat(i,j).capacity,mat(i,j).weight)
      end
   end
end
