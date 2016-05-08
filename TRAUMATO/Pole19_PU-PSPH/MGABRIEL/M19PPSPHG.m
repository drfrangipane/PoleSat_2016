%fichier sparse en exemple page 147 du livre

i=[1,	1,	2,	2,	2,	3,	4,	4,	4,	5,	5,	5,	6,	7,	7,	8,	11,	11,	12,	12,	14,	14,	14,	15,	15,	15,	16];	

j=[5,	13,	7,	9,	10,	17,	3,	17,	19,	7,	10,	11,	19,	9,	10,	9,	1,	13,	13,	14,	13,	16,	17,	1,	16,	18,	17];	
																																									
s=[1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1];	


%taille de la matrice carrée = nombre de poles soit 18
n=19;
m=19;

M19=sparse(i,j,s,n,m)
M19_pleine=full(M19)
figure(1)
spy(M19)
grid
figure(2)
pltmat(M19,'M19','k',20)
