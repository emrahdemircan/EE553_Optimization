global connectionMatrix;
global routesFound;
global routeMatrix;
maxStep=10000;
minCost=Inf;
connectionMatrix=connectionMatrixInit;
demandMatrix=demandMatrixInit;
[Xi,Xj]=size(connectionMatrix);
for i=1:Xi
   for j=i:Xj
      if demandMatrix(i,j)>0
         RouteDemandsSAL(i,j);
         %fprintf('Total Paths found from %d to %d: %d\n',i,j,routesFound(i,j));         
      end
   end
end
%Below for loop finds hop numbers for all routes for all demands...********************
for indI=1:Xi
   for indJ=indI:Xj
      if demandMatrix(indI,indJ)>0
      for i=1:routesFound(indI,indJ)
         node=indI;
         hops=0;
         while routeMatrix(indI,indJ,i,node,2)~=0
            hops=hops+1;
            node=routeMatrix(indI,indJ,i,node,2);
         end
         hopMatrix(indI,indJ,i)=hops;
         %fprintf('%d to %d route:%d\thops:%d\n',indI,indJ,i,hopMatrix(indI,indJ,i))
      end
      %fprintf('\n');
      end
   end%indJ
end%for indI
%*************************************************************************************
%Find minimal 3 minimum hop routes for all demands...*********************************
for j=1:Xi
   for k=1:Xj
      minHop(j,k,1).hops=Inf;
      minHop(j,k,2).hops=Inf;
      minHop(j,k,3).hops=Inf;
      minHop(j,k,1).routeNumber=0;
      minHop(j,k,2).routeNumber=0;
      minHop(j,k,3).routeNumber=0;
   end
end

for p=1:Xi
   for q=p:Xj
      if demandMatrix(p,q)>0
         for i=1:routesFound(p,q)
            if hopMatrix(p,q,i)<minHop(p,q,1).hops
               minHop(p,q,3).routeNumber=minHop(p,q,2).routeNumber;
               minHop(p,q,3).hops=minHop(p,q,2).hops;
					minHop(p,q,2).routeNumber=minHop(p,q,1).routeNumber;
               minHop(p,q,2).hops=minHop(p,q,1).hops;
               minHop(p,q,1).routeNumber=i;
               minHop(p,q,1).hops=hopMatrix(p,q,i);
            end
            if (hopMatrix(p,q,i)>minHop(p,q,1).hops) & (hopMatrix(p,q,i)<minHop(p,q,2).hops)
					minHop(p,q,3).routeNumber=minHop(p,q,2).routeNumber;
               minHop(p,q,3).hops=minHop(p,q,2).hops;
               minHop(p,q,2).routeNumber=i;
               minHop(p,q,2).hops=hopMatrix(p,q,i);
            end
            if (hopMatrix(p,q,i)>minHop(p,q,1).hops) & (hopMatrix(p,q,i)>minHop(p,q,2).hops) & (hopMatrix(p,q,i)<minHop(p,q,3).hops)
               minHop(p,q,3).routeNumber=i;               
               minHop(p,q,3).hops=hopMatrix(p,q,i);
            end
         end%end for i...
      end%if demand...
   end%for q...
end%for p...
%for j=1:Xi
%   for k=j:Xj
%      if demandMatrix(j,k)>0
%      	fprintf('%d to %d minHop1:%d\t route:%d\n',j,k,minHop(j,k,1).hops,minHop(j,k,1).routeNumber);
%      	fprintf('%d to %d minHop2:%d\t route:%d\n',j,k,minHop(j,k,2).hops,minHop(j,k,2).routeNumber);
%      	fprintf('%d to %d minHop3:%d\t route:%d\n',j,k,minHop(j,k,3).hops,minHop(j,k,3).routeNumber);
%      end
%   end
%end
for y=1:Xi
   for z=y:Xj
      if demandMatrix(y,z)>0
         for i=1:12
         	minRouteMatrix(y,z,1,i,1)=routeMatrix(y,z,minHop(y,z,1).routeNumber,i,1);
         	minRouteMatrix(y,z,1,i,2)=routeMatrix(y,z,minHop(y,z,1).routeNumber,i,2);
         	minRouteMatrix(y,z,2,i,1)=routeMatrix(y,z,minHop(y,z,2).routeNumber,i,1);
         	minRouteMatrix(y,z,2,i,2)=routeMatrix(y,z,minHop(y,z,2).routeNumber,i,2);
         	minRouteMatrix(y,z,3,i,1)=routeMatrix(y,z,minHop(y,z,3).routeNumber,i,1);
            minRouteMatrix(y,z,3,i,2)=routeMatrix(y,z,minHop(y,z,3).routeNumber,i,2);
         end
      end%if demand...
   end%for y...
end%for z...

%*************************************************************************************

for step=1:maxStep
   %fprintf('Step:\t%d\n',step);
   connectionMatrix=connectionMatrixInit;
	for i=1:Xi
   	for j=1:Xj
      	if demandMatrix(i,j)>0
         	random=ceil(rand*2);
            %fprintf('%d->%d\tUse route %d\t: %d->',i,j,random,i);
            current=i;
            %fprintf('%d->',current);
            while minRouteMatrix(i,j,random,current,2)~=0
               %if minRouteMatrix(i,j,random,current,2)~=j
               %   fprintf('%d->',minRouteMatrix(i,j,random,current,2));
               %else
               %   fprintf('%d\n',minRouteMatrix(i,j,random,current,2));
               %end
            	connectionMatrix(current,minRouteMatrix(i,j,random,current,2)).usedCapacity=connectionMatrix(current,minRouteMatrix(i,j,random,current,2)).usedCapacity+demandMatrix(i,j);
               connectionMatrix(minRouteMatrix(i,j,random,current,2),current).usedCapacity=connectionMatrix(current,minRouteMatrix(i,j,random,current,2)).usedCapacity;
               current=minRouteMatrix(i,j,random,current,2);
            end
         end
   	end
   end
   cost=findCost(connectionMatrix);
   if cost<=minCost
      minCost=cost;
      fprintf('Step: %d\tCost: %d\n',step,cost);
      printUsedCapacity(connectionMatrix);
 		printExceededCapacity(connectionMatrix);
   end
end%for step...
