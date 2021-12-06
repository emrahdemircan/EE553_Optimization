function[matrix]=neighbour(old)
[Xi,Xj]=size(old);
iC=ceil(rand(1)*Xi);
jC=iC;
while jC==iC | old(iC,jC).connected==0
   jC=ceil(rand(1)*Xj);
end
temp=rand(1);
if temp>=0.5
   temp=1;
else
   temp=-1;
end
matrix=old;
matrix(iC,jC).weight=matrix(iC,jC).weight+temp;
matrix(jC,iC).weight=matrix(iC,jC).weight;
%printWeight(matrix);
