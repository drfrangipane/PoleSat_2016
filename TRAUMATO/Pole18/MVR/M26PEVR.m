%fichier sparse en exemple page 147 du livre
%construction d'une matrice relative aux 26 points d''équilibre (Gabi)
%moulinés par l'algorithme des Voisins relatifs

i=[1,	1,	1,	1,	1,	2,	2,	2,	3,	3,	3,	4,	4,	4,	4,	5,	5,	5,	6,	7,	7,	7,	8,	8,	8,	10,	11,	11,	12,	12,	12,	13,	13,	14,	14,	14,	15,	15,	15,	17];	

j=[5,	17,	10,	13,	15,	10,	7,	9,	18,	12,	16,	16,	3,	18,	15,	10,	11,	7,	18,	10,	9,	11,	7,	9,	11,	17,	1,	13,	16,	11,	13,	15,	16,	15,	17,	1,	16,	18,	17,	18];	
																																									
s=[1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1];	


%taille de la matrice carrée = nombre de poles soit 18
n=26;
m=26;

M26=sparse(i,j,s,n,m)
M26_pleine=full(M26)
figure(1)
spy(M26)
grid
figure(2)
pltmat(M26,'M26-PE','k',20)
