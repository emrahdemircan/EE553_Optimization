function[]=printUsedCapacity(mat)
[Xi,Xj]=size(mat);
fprintf('\nCapacity used matrix of the current topology is:\n');
for i=1:Xi
   for j=1:Xj
      %if j<i
         %fprintf('0\t');
      %else
         fprintf('%3.0f\t',mat(i,j).usedCapacity);
      %end      
   end
   fprintf('\n')
end
fprintf('\n')
