function[matrix , cost]=networkCost12(matrix)
global connectionMatrix;
[Xi,Xj]=size(matrix);
matrix=clearUsedCapacity(matrix);
connectionMatrix=matrix;
demandMatrix=demandMatrix12Init;
for i=1:Xi
   for j=i:Xj
      if demandMatrix(i,j)>0
         routeDemands(i,j,demandMatrix);
      end
   end
end
cost=findCost(connectionMatrix);
matrix=connectionMatrix;
connectionMatrix=connectionMatrix12Init;