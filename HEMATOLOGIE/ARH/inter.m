clear all

%hemato_simulation 6 poles hospitaliers pour 7 établissement, Roubaix compris
%coordonnées des projections cartographiques
coord=[
6029	26714	
6501	26262	
6596	26334	
6846	25966	
6346	26043	
5485	26373		
	];

%declaration des variables 
x=coord(:,1);
y=coord(:,2);


%noms des différentes poles hospitaliers
villes=[
'DUNKERQUE       '	
'LILLE           '	
'ROUBAIX         '	
'VALENCIENNES    '	
'LENS            '	
'BOULOGNE SUR MER'	
];

%matrice adjacence de la triangulation de Delaunay
mtr_adj=[ 
     0     1     1     0     1     1
     0     0     1     1     1     0
     0     0     0     1     0     0
     0     0     0     0     1     0
     0     0     0     0     0     1
     0     0     0     0     0     0
];


  
%tracé des liaisons en noir et des noeuds cercle rouge
gplot (mtr_adj,coord,'k')
%grid
hold on
gplot(mtr_adj,coord,'ro')


%noms des stations, on récupère un vecteur de "handles"
h=text(coord(:,1)+2,coord(:,2),villes);

%on fixe la taille du texte des stations à 5
for i=1:length(coord)
   set(h(i),'Fontsize',10)
end

%hemato_simulation 6 poles hospitaliers pour 7 établissement, Roubaix compris
%coordonnées des projections cartographiques
coord1=[
6029	26714	
6501	26262	
6596	26334	
6846	25966	
6346	26043	
5485	26373		
	];

%declaration des variables 
x0=coord1(:,1);
y0=coord1(:,2);
%matrice adjacence de gabriel
mtr_adj1=[ 
     0     1     0     0     0     1
     0     0     1     1     1     0
     0     0     0     1     0     0
     0     0     0     0     1     0
     0     0     0     0     0     1
     0     0     0     0     0     0
];
%tracé des liaisons en noir et des noeuds cercle rouge
gplot (mtr_adj1,coord1,'r')



%coordonnées des 8 points d'équilibre noté de Pt1 à Pt8  selon gabriel
%'Pt1 '	'Pt2 '	'Pt3 '	'Pt4 '	'Pt5 '	'Pt6 '	'Pt7 '	'Pt8 '


Pt=[
6221.80887	26529.361	
6554.57471	26302.604	
6689.3781	26196.5474	
6653.61019	26131.0649	
6429.11893	26160.439	
6584.17871	26006.3205	
5816.60385	26245.9044	
5770.18179	26551.7629	

];

%declaration des variables 
xo=Pt(:,1);
yo=Pt(:,2);

%dessin des points de la variable Pt en xo et yo
plot(xo,yo,'b*','markersize',16)

%noms des différents "Points d'équilibre" dans l'ordre des variables	
Pe=['Pt1 '	
'Pt2 '	
'Pt3 '	
'Pt4 '	
'Pt5 '	
'Pt6 '	
'Pt7 '	
'Pt8 '	
];

%noms des Points d'équilibre, on récupère un vecteur de "handles"
h=text(Pt(:,1)+2,Pt(:,2),Pe);


%on fixe la taille du texte noms des différents "Points d'équilibre" à 10
for i=1:length(Pt)
   set(h(i),'Fontsize',11)
end

%INTERSECTION_DESSIN P^, dessin estimée selon la pondération de K-MEANS
%coordonnées des points d'intersection et de liaison
Inter=[
5957.33921	26253.1891	
6311.6298	26623.1563	
6932.15315	25804.4102	
6653.45189	26172.141	
6738.31673	26229.7938	
6592.40309	26059.7255	
6590.34054	26046.3324	
5871.73681	26389.7513	
	
];

%declaration des variables 
xi=Inter(:,1);
yi=Inter(:,2);

%graphique des points d'intersection
plot(xi,yi,'m*','markersize',16)

%noms des différents "Points d'intersection" dans l'ordre des variables	
PP=[
'1-8'	
'1-2'	
'2-5'	
'2-3'	
'3-4'	
'4-6'	
'5-6'	
'7-8'	
];

%noms des Points d'équilibre, on récupère un vecteur de "handles"
h=text(Inter(:,1)+2,Inter(:,2),PP);


%on fixe la taille du texte noms des différents "Points d'équilibre" à 10
for i=1:length(Inter)
   set(h(i),'Fontsize',14)
end

grid

grid
%automatisation du dessin, segment de droite et points d'équilibre
axis equal
xlabel (' x')
ylabel (' y')
title (' position des points d''intersection ')






