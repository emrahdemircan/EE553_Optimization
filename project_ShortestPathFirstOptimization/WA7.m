global connectionMatrix;
connectionMatrix=connectionMatrixInit;
demandMatrix=demandMatrixInit;
w_old=connectionMatrix;
max_step=100;
%calculate the links' costs for the first time...%%
for i=1:7
   for j=1:7
      %if w_old(i,j).connected==1
         w_old(i,j).costOld=w_old(i,j).usedCapacity;
         w_old(i,j).costNew=0;%initialize the cost new entry....
      %end
   end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

w_best=connectionMatrix;
cost_best=inf;
[w_best,cost_best]=networkCost(w_best);
w_best=clearUsedCapacity(w_best);
cost=cost_best;
step=0;
%[w_old,cost]=networkCost(w_old);
while cost>0 & step<max_step
   	fprintf('Step:%d\t\tCost:%d\n',step,cost);
   	[w_old,cost]=networkCost(w_old);
      if cost<cost_best
         w_best=w_old;
         cost_best=cost;
         fprintf('A better weight system found -> COST: %d\n',cost_best);
         printWeight(w_best);
      end
      for i=1:7
      	for j=i+1:7
         	if w_old(i,j).connected==1 & w_old(i,j).usedCapacity~=0
       			delta=w_old(i,j).capacity-w_old(i,j).usedCapacity;
            	if delta>=0%link is under_loaded...
               	w_old(i,j).costNew=w_old(i,j).usedCapacity;
                  w_old(i,j).weight=w_old(i,j).weight-rand(1);%10*(w_old(i,j).usedCapacity/w_old(i,j).capacity);
            	   w_old(i,j).costOld=w_old(i,j).costNew;
           	    	w_old(j,i).costOld=w_old(i,j).costOld;
            	   w_old(j,i).costNew=w_old(i,j).costNew;
            	   w_old(j,i).weight=w_old(i,j).weight;
               else%link is over_loaded...
                  w_old(i,j).costNew=w_old(i,j).capacity+delta^2;
               	wDif=2*abs(log( w_old(i,j).costNew / ((w_old(i,j).costNew-w_old(i,j).costOld)+1)  ));
               	w_old(i,j).weight=w_old(i,j).weight+wDif;%2;%rand(1)*wDif;
               	w_old(i,j).costOld=w_old(i,j).costNew;
              	 	w_old(j,i).costOld=w_old(i,j).costOld;
               	w_old(j,i).costNew=w_old(i,j).costNew;
               	w_old(j,i).weight=w_old(i,j).weight;
            	end
         	end
      	end
      end%end for
      step=step+1;
      w_old=clearUsedCapacity(w_old);
end %end while  
fprintf('\nBest weight system found -> COST: %d\n',cost_best);
connectionMatrix=w_best;
connectionMatrix=clearUsedCapacity(connectionMatrix);
for i=1:7
   for j=1:7
      if demandMatrix(i,j)~=0
         routeDemandsPrint(i,j,demandMatrix);
      end
   end
end
%printWeight(connectionMatrix);
printUsedCapacity(w_best);
printExceededCapacity(w_best);
number=findNumberOfOverloadedLinks(w_best);
caaa=findobj(gcbf,'Tag','cost');
set(caaa,'String',cost_best);
naaa=findobj(gcbf,'Tag','number');
set(naaa,'String',number);
