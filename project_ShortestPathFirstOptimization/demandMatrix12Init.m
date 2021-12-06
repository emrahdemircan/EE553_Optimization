function[demandMatrix]=demandMatrixInit
for i=1:12
   for j=1:12
      demandMatrix(i,j)=0;
   end
end

demandMatrix(1,2)=10;
demandMatrix(1,3)=11;
demandMatrix(1,4)=13;
demandMatrix(1,5)=13;
demandMatrix(1,6)=16;
demandMatrix(1,7)=7;
demandMatrix(1,8)=19;
demandMatrix(1,9)=10;
demandMatrix(1,10)=6;
demandMatrix(1,11)=13;
demandMatrix(1,12)=14;

demandMatrix(2,3)=3;
demandMatrix(2,4)=21;
demandMatrix(2,5)=19;
demandMatrix(2,6)=21;
demandMatrix(2,7)=14;
demandMatrix(2,8)=32;
demandMatrix(2,9)=14;
demandMatrix(2,10)=5;
demandMatrix(2,11)=68;
demandMatrix(2,12)=32;

demandMatrix(3,4)=27;
demandMatrix(3,5)=21;
demandMatrix(3,6)=25;
demandMatrix(3,7)=17;
demandMatrix(3,8)=35;
demandMatrix(3,9)=14;
demandMatrix(3,10)=3;
demandMatrix(3,11)=107;
demandMatrix(3,12)=24;


demandMatrix(4,5)=11;
demandMatrix(4,6)=21;
demandMatrix(4,7)=15;
demandMatrix(4,8)=51;
demandMatrix(4,9)=21;
demandMatrix(4,10)=19;
demandMatrix(4,11)=84;
demandMatrix(4,12)=40;

demandMatrix(5,6)=13;
demandMatrix(5,7)=20;
demandMatrix(5,8)=35;
demandMatrix(5,9)=5;
demandMatrix(5,10)=18;
demandMatrix(5,11)=74;
demandMatrix(5,12)=28;

demandMatrix(6,7)=16;
demandMatrix(6,8)=34;
demandMatrix(6,9)=4;
demandMatrix(6,10)=9;
demandMatrix(6,11)=30;
demandMatrix(6,12)=18;

demandMatrix(7,8)=21;
demandMatrix(7,9)=14;
demandMatrix(7,10)=12;
demandMatrix(7,11)=4;
demandMatrix(7,12)=15;

demandMatrix(8,9)=28;
demandMatrix(8,10)=47;
demandMatrix(8,11)=129;
demandMatrix(8,12)=14;

demandMatrix(9,10)=7;
demandMatrix(9,11)=61;
demandMatrix(9,12)=13;

demandMatrix(10,11)=24;
demandMatrix(10,12)=19;

demandMatrix(11,12)=97;
