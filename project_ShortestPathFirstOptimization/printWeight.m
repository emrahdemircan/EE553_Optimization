function[]=printWeight(mat)
[Xi,Xj]=size(mat);
fprintf('\nWeight matrix of the current topology is:\n');
for i=1:Xi
   for j=1:Xj
      if mat(i,j).weight~=1000
         fprintf('%2.2f\t',mat(i,j).weight);
      else
         fprintf('~\t');
      end
   end
   fprintf('\n')
end
fprintf('\n')
