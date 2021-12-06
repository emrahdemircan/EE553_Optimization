%bu fonksiyon iki nokta arasindaki en kisa mesafeli yolu print ediyor....
%kullanilan linkler uzerinden gecen data/time degerlerini guncelliyor.

function[]=routeDemandsSAL(start,destination)
global connectionMatrix;
global routesFound;
global routeMatrix;%routelar kaydedilir...
routesFound(start,destination)=0;%kac tane route bulundu, onu gosterir...
[Xi,Xj]=size(connectionMatrix);
i=start;
j=destination;
nodeArr=nodeArrInit;
startingNode=i;
destinationNode=j;
findPathSAL(startingNode,destinationNode,startingNode,nodeArr);

