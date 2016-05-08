%hemato_automatisation1
%coordonnées des projections cartographiques
coord=[	
6501	26262		
6029	26714
5485	26373
6846	25966	
6346	26043	];

%declaration des variables 
x=coord(:,1);
y=coord(:,2);


%noms des différentes villes
villes=['LILLE           '	
'DUNKERQUE       '	
'BOULOGNE SUR MER'	
'VALENCIENNES    '	
'LENS            '];

%matrice adjacence
mtr_adj=[0	1	0	0	1	
0	0	0	0	1	
0	1	0	0	1	
1	0	0	0	1	
1	1	1	1	0];


%tracé des liaisons en noir et des noeuds cercle rouge
gplot (mtr_adj,coord,'k')
hold on
gplot(mtr_adj,coord,'ro')


%noms des stations, on récupère un vecteur de "handles"
h=text(coord(:,1)+2,coord(:,2),villes);

%on fixe la taille du texte des stations à 5
for i=1:length(coord)
   set(h(i),'Fontsize',5)
end


%coordonnées des 7 points d'équilibre noté de Pt1 à Pt7 dont le point moyen lille stphi
Pt=[
5736.4678	26530.63	
5765.4016	26265.529	
6163.1998	26585.487	
6143.0314	26472.627	
6408.3142	26131.044	
6709.7481	26082.9	
6628.771	25999.453];

%declaration des variables 
xo=Pt(:,1);
yo=Pt(:,2);

%dessin des points de la variable Pt en xo et yo
plot(xo,yo,'*','markersize',10)

%noms des différents "Points d'équilibre" dans l'ordre des variables	
Pe=['Pt1'	
'Pt2'	
'Pt3'	
'Pt4'	
'Pt5'	
'Pt6'	
'Pt7'];

%noms des Points d'équilibre, on récupère un vecteur de "handles"
h=text(Pt(:,1)+2,Pt(:,2),Pe);


%on fixe la taille du texte noms des différents "Points d'équilibre" à 10
for i=1:length(Pt)
   set(h(i),'Fontsize',10)
end

%INTERSECTION_DESSIN1
%coordonnées des points d'intersection et de liaison
Inter=[
5817.4762		26401.3963	
5884.5067		26294.4620	
6002.8354		26418.0265	
6625.3770	25977.4149	
];

%declaration des variables 
x1=Inter(:,1);
y1=Inter(:,2);

%graphique des points d'intersection
plot(x1,y1,'m*','markersize',7)
grid
	
%automatisation du dessin, segment de droite et points d'équilibre
axis equal
axis ([min(x) max(x) min(y) max(y)])
axis ([5400 7400 25400 27000])
xlabel ('coordonnees x')
ylabel ('coordonnees y')
title ('Etape 3, 7 Points d''equilibre et 4 points d''intersection')






