clear all

%hemato_simulation 6 poles hospitaliers pour 7 �tablissement, Roubaix compris
%coordonn�es des projections cartographiques
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


%noms des diff�rentes poles hospitaliers
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


  
%trac� des liaisons en noir et des noeuds cercle rouge
gplot (mtr_adj,coord,'k')
grid
hold on
gplot(mtr_adj,coord,'ro')


%noms des stations, on r�cup�re un vecteur de "handles"
h=text(coord(:,1)+2,coord(:,2),villes);

%on fixe la taille du texte des stations � 5
for i=1:length(coord)
   set(h(i),'Fontsize',12)
end

%hemato_simulation 6 poles hospitaliers pour 7 �tablissement, Roubaix compris
%coordonn�es des projections cartographiques
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
%trac� des liaisons en noir et des noeuds cercle rouge
gplot (mtr_adj1,coord1,'r')



%coordonn�es des 8 points d'�quilibre not� de Pt1 � Pt8  selon gabriel
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
plot(xo,yo,'*','markersize',14)

%noms des diff�rents "Points d'�quilibre" dans l'ordre des variables	
Pe=['Pt1 '	
'Pt2 '	
'Pt3 '	
'Pt4 '	
'Pt5 '	
'Pt6 '	
'Pt7 '	
'Pt8 '	
];

%noms des Points d'�quilibre, on r�cup�re un vecteur de "handles"
h=text(Pt(:,1)+2,Pt(:,2),Pe);


%on fixe la taille du texte noms des diff�rents "Points d'�quilibre" � 10
for i=1:length(Pt)
   set(h(i),'Fontsize',14)
end





grid
%automatisation du dessin, segment de droite et points d'�quilibre
axis equal
xlabel (' x')
ylabel (' y')
title (' 8 points d''�quilibre - Modele estim� - Pond�ration Pe - K-means - ')






