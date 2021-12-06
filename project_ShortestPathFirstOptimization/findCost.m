function[cost]=findCost(mat)%total exceeded capacity...
cost=0;
[Xi,Xj]=size(mat);
for i=1:Xi
   for j=i+1:Xj
      if mat(i,j).capacity-mat(i,j).usedCapacity<=0
         cost = cost + (mat(i,j).usedCapacity - mat(i,j).capacity);
      end
   end
end
