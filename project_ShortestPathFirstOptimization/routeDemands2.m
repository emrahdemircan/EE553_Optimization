%bu fonksiyon iki nokta arasindaki en kisa mesafeli yolu print ediyor....
%kullanilan linkler uzerinden gecen data/time degerlerini guncelliyor.

function[]=routeDemands2(start,destination,demandMatrix)
global connectionMatrix;
%connectionMatrix=connectionMatrix12Init;
%demandMatrix=demandMatrix12Init;
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
	fprintf('Route %d TO %d PRIMARY\t->\t minCost: %3.3f\t',i,j,minCost);
	while minArr(startingNode,2)~=0
      connectionMatrix(startingNode,minArr(startingNode,2)).usedCapacity=connectionMatrix(startingNode,minArr(startingNode,2)).usedCapacity + demandMatrix(start,destination)/2;
      fprintf('%d-> %3.0f ->',startingNode,connectionMatrix(startingNode,minArr(startingNode,2)).usedCapacity);
		connectionMatrix(minArr(startingNode,2),startingNode).usedCapacity=connectionMatrix(startingNode,minArr(startingNode,2)).usedCapacity;
	end
	fprintf('%d\n',destinationNode);

	fprintf('Route %d TO %d SECONDARY\t->\t minCost: %3.3f\t',i,j,minCost);
	startingNode=i;
	while minArr2(startingNode,2)~=0
      connectionMatrix(startingNode,minArr2(startingNode,2)).usedCapacity=connectionMatrix(startingNode,minArr2(startingNode,2)).usedCapacity + demandMatrix(start,destination)/2;
		fprintf('%d-> %3.0f ->',startingNode,connectionMatrix(startingNode,minArr(startingNode,2)).usedCapacity);
      connectionMatrix(minArr2(startingNode,2),startingNode).usedCapacity=connectionMatrix(startingNode,minArr(startingNode,2)).usedCapacity;
		startingNode=minArr2(startingNode,2);
	end
	fprintf('%d\n',destinationNode);
else
	startingNode=i;
	fprintf('Route %d TO %d PRIMARY\t->\t minCost: %3.3f\t',i,j,minCost);
	while minArr(startingNode,2)~=0
   	connectionMatrix(startingNode,minArr(startingNode,2)).usedCapacity=connectionMatrix(startingNode,minArr(startingNode,2)).usedCapacity + demandMatrix(start,destination);
		fprintf('%d-> %3.0f ->',startingNode,connectionMatrix(startingNode,minArr(startingNode,2)).usedCapacity);
		connectionMatrix(minArr(startingNode,2),startingNode).usedCapacity=connectionMatrix(startingNode,minArr(startingNode,2)).usedCapacity;
		startingNode=minArr(startingNode,2);
	end
   fprintf('%d\n',destinationNode);
end

