function[]=printNodeArr(nodeArr)
Xi=size(nodeArr);
for i=1:Xi
   fprintf('Node:%d\tbefore\t: %d\tnext: %d\n',i,nodeArr(i,1),nodeArr(i,2));
end
