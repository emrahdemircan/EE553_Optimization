%bu fonksiyon 2 nokta arasindaki en kisa yolu buluyor.....

function []= findPath(entry,cost,destinationNode,startingNode,nodeArr)
start=startingNode;
dest=destinationNode;
global connectionMatrix;
connectionMatrix;
global minCost;
global minArr;
global minArr2;
[Xi,Xj]=size(connectionMatrix);
for index=1:Xi
   %fprintf('%d\n',connectionMatrix(1,1).connected);
   if  connectionMatrix(entry,index).connected==1 & entry~=index
      if(index==destinationNode)
         nodeArr(entry,2)=index;
         nodeArr(index,1)=entry;
         %printNodeArr;
         %fprintf('COST: %d ROUTE: \',cost+connectionMatrix(entry,index).weight)
         cost=cost+connectionMatrix(entry,index).weight;         
         %while nodeArr(startingNode,2)~=0
         %      fprintf('%d->',startingNode);
         %      startingNode=nodeArr(startingNode,2);
         %   end%while
			%fprintf('%d\t%d\n',destinationNode,cost);
         if cost<minCost
            minArr=nodeArr;
            minCost=cost;
            %fprintf('minCost: %d\t',min)
            %while nodeArr(startingNode,2)~=0
            %   fprintf('%d->',startingNode);
            %   startingNode=nodeArr(startingNode,2);
            %end%while
            %fprintf('%d\n',destinationNode);
            %end%if cost < min
         end   
         if cost==minCost%2 tane ayni cost lu yol olabilir.....
            %fprintf('\nBuldu %d TO %d\t',startingNode,destinationNode);
            minArr2=nodeArr;
            %while minArr2(startingNode,2)~=0
            %   fprintf('%d->',startingNode);
            %   startingNode=minArr2(startingNode,2);
            %end%while
            %fprintf('%d\n',destinationNode);
         end            
         cost=cost-connectionMatrix(entry,index).weight;
      end
      if (index~=destinationNode)        
         exists=thisNodeExistsOnPath(index,entry,nodeArr,startingNode);
         if (~exists)
            %printNodeArr;
            nodeArr(entry,2)=index;
            nodeArr(index,1)=entry;
            cost=cost+connectionMatrix(entry,index).weight;
				%printNodeArr;fprintf('\n')
            %fprintf('%d-',index)
            findPath(index,cost,dest,start,nodeArr);
            cost=(cost-connectionMatrix(entry,index).weight);
         end
      end
   end
end

