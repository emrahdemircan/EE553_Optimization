function[connectionMatrix]=connectionMatrixInit
%1. nokta icin yenileme...
connectionMatrix(1,1).connected=0;
connectionMatrix(1,1).capacity=0;
connectionMatrix(1,1).usedCapacity=0;
connectionMatrix(1,1).weight=inf;

connectionMatrix(1,2).connected=1;
connectionMatrix(1,2).capacity=75;
connectionMatrix(1,2).usedCapacity=0;
connectionMatrix(1,2).weight=3;

connectionMatrix(1,3).connected=0;
connectionMatrix(1,3).capacity=0;
connectionMatrix(1,3).usedCapacity=0;
connectionMatrix(1,3).weight=inf;

connectionMatrix(1,4).connected=0;
connectionMatrix(1,4).capacity=0;
connectionMatrix(1,4).usedCapacity=0;
connectionMatrix(1,4).weight=inf;

connectionMatrix(1,5).connected=0;
connectionMatrix(1,5).capacity=0;
connectionMatrix(1,5).usedCapacity=0;
connectionMatrix(1,5).weight=inf;

connectionMatrix(1,6).connected=1;
connectionMatrix(1,6).capacity=75;
connectionMatrix(1,6).usedCapacity=0;
connectionMatrix(1,6).weight=3;

connectionMatrix(1,7).connected=1;
connectionMatrix(1,7).capacity=79;
connectionMatrix(1,7).usedCapacity=0;
connectionMatrix(1,7).weight=3;

%2. nokta icin yenileme...
connectionMatrix(2,1).connected=1;
connectionMatrix(2,1).capacity=75;
connectionMatrix(2,1).usedCapacity=0;
connectionMatrix(2,1).weight=3;

connectionMatrix(2,2).connected=0;
connectionMatrix(2,2).capacity=0;
connectionMatrix(2,2).usedCapacity=0;
connectionMatrix(2,2).weight=inf;

connectionMatrix(2,3).connected=1;
connectionMatrix(2,3).capacity=78;
connectionMatrix(2,3).usedCapacity=0;
connectionMatrix(2,3).weight=3;

connectionMatrix(2,4).connected=0;
connectionMatrix(2,4).capacity=0;
connectionMatrix(2,4).usedCapacity=0;
connectionMatrix(2,4).weight=inf;

connectionMatrix(2,5).connected=0;
connectionMatrix(2,5).capacity=0;
connectionMatrix(2,5).usedCapacity=0;
connectionMatrix(2,5).weight=inf;

connectionMatrix(2,6).connected=0;
connectionMatrix(2,6).capacity=0;
connectionMatrix(2,6).usedCapacity=0;
connectionMatrix(2,6).weight=inf;

connectionMatrix(2,7).connected=1;
connectionMatrix(2,7).capacity=87;
connectionMatrix(2,7).usedCapacity=0;
connectionMatrix(2,7).weight=3;

%3. nokta icin yenileme...
connectionMatrix(3,1).connected=0;
connectionMatrix(3,1).capacity=0;
connectionMatrix(3,1).usedCapacity=0;
connectionMatrix(3,1).weight=inf;

connectionMatrix(3,2).connected=1;
connectionMatrix(3,2).capacity=78;
connectionMatrix(3,2).usedCapacity=0;
connectionMatrix(3,2).weight=3;

connectionMatrix(3,3).connected=0;
connectionMatrix(3,3).capacity=0;
connectionMatrix(3,3).usedCapacity=0;
connectionMatrix(3,3).weight=inf;

connectionMatrix(3,4).connected=1;
connectionMatrix(3,4).capacity=77;
connectionMatrix(3,4).usedCapacity=0;
connectionMatrix(3,4).weight=3;

connectionMatrix(3,5).connected=0;
connectionMatrix(3,5).capacity=0;
connectionMatrix(3,5).usedCapacity=0;
connectionMatrix(3,5).weight=inf;

connectionMatrix(3,6).connected=0;
connectionMatrix(3,6).capacity=0;
connectionMatrix(3,6).usedCapacity=0;
connectionMatrix(3,6).weight=inf;

connectionMatrix(3,7).connected=1;
connectionMatrix(3,7).capacity=97;
connectionMatrix(3,7).usedCapacity=0;
connectionMatrix(3,7).weight=3;

%4. nokta icin yenileme...
connectionMatrix(4,1).connected=0;
connectionMatrix(4,1).capacity=0;
connectionMatrix(4,1).usedCapacity=0;
connectionMatrix(4,1).weight=inf;

connectionMatrix(4,2).connected=0;
connectionMatrix(4,2).capacity=0;
connectionMatrix(4,2).usedCapacity=0;
connectionMatrix(4,2).weight=inf;

connectionMatrix(4,3).connected=1;
connectionMatrix(4,3).capacity=77;
connectionMatrix(4,3).usedCapacity=0;
connectionMatrix(4,3).weight=3;

connectionMatrix(4,4).connected=0;
connectionMatrix(4,4).capacity=0;
connectionMatrix(4,4).usedCapacity=0;
connectionMatrix(4,4).weight=inf;

connectionMatrix(4,5).connected=1;
connectionMatrix(4,5).capacity=71;
connectionMatrix(4,5).usedCapacity=0;
connectionMatrix(4,5).weight=3;

connectionMatrix(4,6).connected=0;
connectionMatrix(4,6).capacity=0;
connectionMatrix(4,6).usedCapacity=0;
connectionMatrix(4,6).weight=inf;

connectionMatrix(4,7).connected=1;
connectionMatrix(4,7).capacity=100;
connectionMatrix(4,7).usedCapacity=0;
connectionMatrix(4,7).weight=3;

%5. nokta icin yenileme...
connectionMatrix(5,1).connected=0;
connectionMatrix(5,1).capacity=0;
connectionMatrix(5,1).usedCapacity=0;
connectionMatrix(5,1).weight=inf;

connectionMatrix(5,2).connected=0;
connectionMatrix(5,2).capacity=0;
connectionMatrix(5,2).usedCapacity=0;
connectionMatrix(5,2).weight=inf;

connectionMatrix(5,3).connected=0;
connectionMatrix(5,3).capacity=0;
connectionMatrix(5,3).usedCapacity=0;
connectionMatrix(5,3).weight=inf;

connectionMatrix(5,4).connected=1;
connectionMatrix(5,4).capacity=71;
connectionMatrix(5,4).usedCapacity=0;
connectionMatrix(5,4).weight=3;

connectionMatrix(5,5).connected=0;
connectionMatrix(5,5).capacity=0;
connectionMatrix(5,5).usedCapacity=0;
connectionMatrix(5,5).weight=inf;

connectionMatrix(5,6).connected=1;
connectionMatrix(5,6).capacity=80;
connectionMatrix(5,6).usedCapacity=0;
connectionMatrix(5,6).weight=3;

connectionMatrix(5,7).connected=1;
connectionMatrix(5,7).capacity=95;
connectionMatrix(5,7).usedCapacity=0;
connectionMatrix(5,7).weight=3;

%6. nokta icin yenileme...
connectionMatrix(6,1).connected=1;
connectionMatrix(6,1).capacity=75;
connectionMatrix(6,1).usedCapacity=0;
connectionMatrix(6,1).weight=3;

connectionMatrix(6,2).connected=0;
connectionMatrix(6,2).capacity=0;
connectionMatrix(6,2).usedCapacity=0;
connectionMatrix(6,2).weight=inf;

connectionMatrix(6,3).connected=0;
connectionMatrix(6,3).capacity=0;
connectionMatrix(6,3).usedCapacity=0;
connectionMatrix(6,3).weight=inf;

connectionMatrix(6,4).connected=0;
connectionMatrix(6,4).capacity=0;
connectionMatrix(6,4).usedCapacity=0;
connectionMatrix(6,4).weight=inf;

connectionMatrix(6,5).connected=1;
connectionMatrix(6,5).capacity=80;
connectionMatrix(6,5).usedCapacity=0;
connectionMatrix(6,5).weight=3;

connectionMatrix(6,6).connected=0;
connectionMatrix(6,6).capacity=0;
connectionMatrix(6,6).usedCapacity=0;
connectionMatrix(6,6).weight=inf;

connectionMatrix(6,7).connected=1;
connectionMatrix(6,7).capacity=86;
connectionMatrix(6,7).usedCapacity=0;
connectionMatrix(6,7).weight=3;

%7. nokta icin yenileme...
connectionMatrix(7,1).connected=1;
connectionMatrix(7,1).capacity=79;
connectionMatrix(7,1).usedCapacity=0;
connectionMatrix(7,1).weight=3;

connectionMatrix(7,2).connected=1;
connectionMatrix(7,2).capacity=87;
connectionMatrix(7,2).usedCapacity=0;
connectionMatrix(7,2).weight=3;

connectionMatrix(7,3).connected=1;
connectionMatrix(7,3).capacity=97;
connectionMatrix(7,3).usedCapacity=0;
connectionMatrix(7,3).weight=3;

connectionMatrix(7,4).connected=1;
connectionMatrix(7,4).capacity=100;
connectionMatrix(7,4).usedCapacity=0;
connectionMatrix(7,4).weight=3;

connectionMatrix(7,5).connected=1;
connectionMatrix(7,5).capacity=95;
connectionMatrix(7,5).usedCapacity=0;
connectionMatrix(7,5).weight=3;

connectionMatrix(7,6).connected=1;
connectionMatrix(7,6).capacity=86;
connectionMatrix(7,6).usedCapacity=0;
connectionMatrix(7,6).weight=3;

connectionMatrix(7,7).connected=0;
connectionMatrix(7,7).capacity=0;
connectionMatrix(7,7).usedCapacity=0;
connectionMatrix(7,7).weight=inf;

