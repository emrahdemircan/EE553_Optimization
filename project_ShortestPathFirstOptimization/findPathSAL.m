%bu fonksiyon 2 nokta arasindaki en kisa yolu buluyor.....

function []= findPathSAL(entry,destinationNode,startingNode,nodeArr)
global routesFound;
global routeMatrix;
start=startingNode;
dest=destinationNode;
global connectionMatrix;
[Xi,Xj]=size(connectionMatrix);
for index=1:Xi
   if  connectionMatrix(entry,index).connected==1 & entry~=index
      if(index==destinationNode)
         routesFound(start,dest)=routesFound(start,dest)+1;
         nodeArr(entry,2)=index;
         nodeArr(index,1)=entry;
         %while nodeArr(startingNode,2)~=0
         %   fprintf('%d->',startingNode);
         %   startingNode=nodeArr(startingNode,2);
         %end%while
         %fprintf('%d\t\t',destinationNode);
         for i=1:12
         	routeMatrix(start,dest,routesFound(start,dest),i,1)=nodeArr(i,1);
            routeMatrix(start,dest,routesFound(start,dest),i,2)=nodeArr(i,2);
         end
      end
      if (index~=destinationNode)        
         exists=thisNodeExistsOnPath(index,entry,nodeArr,startingNode);
         if (~exists)
            nodeArr(entry,2)=index;
            nodeArr(index,1)=entry;
            findPathSAL(index,dest,start,nodeArr);
         end
      end
   end
end
