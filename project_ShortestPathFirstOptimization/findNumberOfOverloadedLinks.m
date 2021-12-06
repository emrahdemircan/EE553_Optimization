function[num]=findNumberOfOverloadedLinks(connectionMatrix)
[Xi,Xj]=size(connectionMatrix);
num=0;
for i=1:Xi
   for j=i:Xj
      if (connectionMatrix(i,j).usedCapacity-connectionMatrix(i,j).capacity)>0
         num=num+1;
      end
   end
end
