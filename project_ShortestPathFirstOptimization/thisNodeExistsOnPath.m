function [exists] = thisNodeExistsOnPath(query,current,nodeArr,startingNode)
exists=0;
while nodeArr(current,1)~= 0
		if (nodeArr(current,1)==query | query==startingNode)
        exists=1;
 	   end
       current=nodeArr(current,1);
end
     

