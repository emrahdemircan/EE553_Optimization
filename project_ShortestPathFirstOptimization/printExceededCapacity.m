function[]=printExceededCapacity(mat)
[Xi,Xj]=size(mat);
fprintf('\nCapacity exceeded matrix of the current topology is:\n');
for i=1:Xi
   for j=1:Xj
      if mat(i,j).capacity-mat(i,j).usedCapacity<0
         fprintf('%3.2f\t',mat(i,j).usedCapacity-mat(i,j).capacity);
      else
         fprintf('0\t');
      end
      
   end
   fprintf('\n')
end
fprintf('\n')