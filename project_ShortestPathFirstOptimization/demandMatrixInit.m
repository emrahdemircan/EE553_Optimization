function[demandMatrix]=demandMatrixInit
for i=1:7
   for j=1:7
      demandMatrix(i,j)=0;
   end
end

demandMatrix(1,2)=24;
demandMatrix(1,3)=25;
demandMatrix(1,4)=28;
demandMatrix(1,5)=19;
demandMatrix(1,6)=49;
demandMatrix(1,7)=32;
demandMatrix(2,3)=36;
demandMatrix(2,4)=17;
demandMatrix(2,5)=38;
demandMatrix(2,6)=26;
demandMatrix(2,7)=49;
demandMatrix(3,4)=31;
demandMatrix(3,5)=46;
demandMatrix(3,6)=46;
demandMatrix(3,7)=34;
demandMatrix(4,5)=24;
demandMatrix(4,6)=25;
demandMatrix(4,7)=31;
demandMatrix(5,6)=36;
demandMatrix(5,7)=33;
demandMatrix(6,7 )=21;