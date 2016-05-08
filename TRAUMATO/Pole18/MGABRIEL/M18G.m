clear all
close all
%fichier sparse en exemple page 147 du livre

i=[1,	1,	2,	2,	2,	3,	4,	4,	4,	5,	5,	5,	6,	7,	7,	8,	11,	11,	12,	12,	13,	13,	14,	14,	14,	15];	
																											
j=[5,	13,	7,	9,	10,	16,	3,	18,	16,	10,	11,	7,	18,	10,	9,	9,	1,	13,	16,	13,	16,	15,	1,	15,	17,	16];	
																											
s=[1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1];	

%taille de la matrice
n=18;
m=18;

M18=sparse(i,j,s,n,m)
M18_pleine=full(M18)
figure(1)
spy(M18)
grid
figure(2)
pltmat(M18,'M18','r',20)
