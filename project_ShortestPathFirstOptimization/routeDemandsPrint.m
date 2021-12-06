%bu fonksiyon iki nokta arasindaki en kisa mesafeli yolu print ediyor....
%kullanilan linkler uzerinden gecen data/time degerlerini guncelliyor.

function[]=routeDemandsPrint(start,destination,demandMatrix)
global connectionMatrix;
i=start;
j=destination;
cost=0;
flag=0;
global minCost;
minCost=inf;
nodeArr=nodeArrInit;
global minArr;
global minArr2;
minArr=nodeArr;
minArr2=nodeArr;
startingNode=i;
destinationNode=j;
findPath(startingNode,cost,destinationNode,startingNode,nodeArr);

% asagidaki while blogu eger iki esit costlu route bulduysak ogrenmek icin kullaniyoruz....
startingNode=i;
while minArr(startingNode,2)~=0
   if minArr2(startingNode,2)~=minArr(startingNode,2)
      flag=1;
   end
   startingNode=minArr(startingNode,2);
end
if flag==1
   startingNode=i;
	fprintf('Route %d TO %d PRIMARY\t->\tminCost: %3.3f\t',i,j,minCost);
	while minArr(startingNode,2)~=0
   	fprintf('%d->',startingNode);
		startingNode=minArr(startingNode,2);
	end
	fprintf('%d\n',destinationNode);

	fprintf('Route %d TO %d SECONDARY\t->\tminCost: %3.3f\t',i,j,minCost);
	startingNode=i;
	while minArr2(startingNode,2)~=0
      fprintf('%d->',startingNode);
      startingNode=minArr2(startingNode,2);
	end
	fprintf('%d\n',destinationNode);
else
	startingNode=i;
	fprintf('Route %d TO %d PRIMARY\t->\tminCost: %3.3f\t',i,j,minCost);
	while minArr(startingNode,2)~=0
   	fprintf('%d->',startingNode);
		startingNode=minArr(startingNode,2);
	end
   fprintf('%d\n',destinationNode);
end

