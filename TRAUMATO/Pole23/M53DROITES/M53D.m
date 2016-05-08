%fichier sparse en exemple page 147 du livre

i=[];
j=[];
xo=[];
i1=[];
j1=[];
yo=[];



%taille de la matrice
n=23;
m=23;

M23=sparse(i,j,s,n,m)
M23_pleine=full(M23)
figure(1)
spy(M23)
grid
figure(2)
pltmat(M23,'M23','r',20)
