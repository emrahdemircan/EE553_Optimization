global connectionMatrix;
connectionMatrix=connectionMatrixInit;
w_old=connectionMatrix;%current network topology...
[w_old ,oldCost]=networkCost(w_old);
min_cost=oldCost;
w_old=clearUsedCapacity(w_old);
w_best=w_old;
T=100;%initial temperature...
tlb=1;%temperature lower bound...
clb=0;%cost lower bound...
cub=100;%counter upper bound...
a=0.1;%temperature decrese factor...
findCost(w_best);
while T>=tlb & min_cost>clb
   for counter=1:cub
      T;
      %fprintf('counter:%d\n',counter);
      w_new=neighbour(w_old);
      %printWeight(w_new);
      w_new=clearUsedCapacity(w_new);
      %w_old=clearUsedCapacity(w_old);
      %[w_old , oldCost]=networkCost(w_old);
      [w_new , newCost]=networkCost(w_new);
      %oldCost;
      %newCost;
      %w_new=clearUsedCapacity(w_new);
      %w_old=clearUsedCapacity(w_old);
      %fprintf('printing w_old...\n');
      %printWeight(w_old);
      deltaC=newCost-oldCost;
      %fprintf('deltaC=%3.3f\n',deltaC);
      %fprintf('newCost: %3.3f oldCost: %3.3f\n',newCost,oldCost);
      if deltaC<=0
         w_old=w_new;
         oldCost=newCost;
         newCost;
         min_cost;
         if newCost<min_cost%networkCost(w_new)<min_cost
            %w_best=clearUsedCapacity(w_best);
            w_best=w_new;
            min_cost=newCost;
            %[w_best,min_cost]=networkCost(w_new);
            %w_best=clearUsedCapacity(w_best);
            fprintf('Temperature: %d\tIteration: %d\tCost: %3.2f\tPrinting weight system...\n',T,counter,min_cost);
            printWeight(w_best);
         end%end if networkCost...
      end%end if deltaC...
      if deltaC>0
         r=rand(1);
         e=exp(-deltaC/T);
         %fprintf('r=%1.4f e=%1.4f\n',r,e);
         if r<e
            w_old=w_new;
            oldCost=newCost;
            %w_old=clearUsedCapacity(w_old);
            %printWeight(w_old);
         end
         %printWeight(w_old);
      end% end if deltaC>0...
   end%end for...
   %pause;
   T=T*a;
   fprintf('Temperature: %d\n',T);
   %printWeight(w_best);   
   %w_best=clearUsedCapacity(w_best);
   w_old=w_best;
   oldCost=min_cost;
   %[w_best,cost_best]=networkCost(w_best);
   %fprintf('printing w_best...\n');
   %printWeight(w_best);
   %cost_best
end%end while...
printUsedCapacity(w_best);
printExceededCapacity(w_best);

connectionMatrix=w_best;
connectionMatrix=clearUsedCapacity(connectionMatrix);
demandMatrix=demandMatrixInit;
[Xi,Xj]=size(connectionMatrix);
for i=1:Xi
   for j=i:Xj
      if demandMatrix(i,j)~=0
         routeDemandsPrint(i,j,demandMatrix)
      end
   end
end
number=findNumberOfOverloadedLinks(w_best);
cbbb=findobj(gcbf,'Tag','cost');
set(cbbb,'String',min_cost);
nbbb=findobj(gcbf,'Tag','number');
set(nbbb,'String',number);
