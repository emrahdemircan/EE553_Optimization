global connectionMatrix;
connectionMatrix=connectionMatrix12_2Init;
w_old=connectionMatrix;%current network topology...
[w_old ,oldCost]=networkCost12_2(w_old);
min_cost=oldCost;
w_old=clearUsedCapacity(w_old);
w_best=w_old;
T=1000;%initial temperature...
tlb=1;%temperature lower bound...
clb=0;%cost lower bound...
cub=200;%counter upper bound...
a=0.1;%temperature decrese factor...
findCost(w_best);
while T>=tlb & min_cost>clb
   for counter=1:cub
      T;
      %fprintf('counter:%d\n',counter);
      w_new=neighbour(w_old);
      %printWeight(w_new);
      w_new=clearUsedCapacity(w_new);
      [w_new , newCost]=networkCost12_2(w_new);
      deltaC=newCost-oldCost;
      if deltaC<=0
         w_old=w_new;
         oldCost=newCost;
         newCost
         min_cost
         if newCost<min_cost%networkCost(w_new)<min_cost
            w_best=w_new;
            min_cost=newCost;
            fprintf('Temperature: %d\tIteration: %d\tCost: %3.2f\tPrinting weight system...\n',T,counter,min_cost);
            printWeight(w_best);
         end%end if networkCost...
      end%end if deltaC...
      if deltaC>0
         r=rand(1);
         e=exp(-deltaC/T);
         if r<e
            w_old=w_new;
            oldCost=newCost;
         end
      end% end if deltaC>0...
   end%end for...
   %pause;
   T=T*a;
   fprintf('Temperature: %d\n',T);
   w_old=w_best;
   oldCost=min_cost;
end%end while...
printUsedCapacity(w_best);
printExceededCapacity(w_best);

connectionMatrix=w_best;
connectionMatrix=clearUsedCapacity(connectionMatrix);
demandMatrix=demandMatrix12Init;
[Xi,Xj]=size(connectionMatrix);
for i=1:Xi
   for j=i:Xj
      if demandMatrix(i,j)~=0
         routeDemandsPrint(i,j,demandMatrix)
      end
   end
end
