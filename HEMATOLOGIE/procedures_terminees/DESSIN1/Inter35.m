%hemato_automatisation1
%coordonnées des projections cartographiques
coord=[	
6501	26262		
6029  26714	
6346	26043	];

%declaration des variables 
x=coord(:,1);
y=coord(:,2);


%noms des différentes villes
villes=['LILLE           '		
'DUNKERQUE       '		
'LENS            '];

%matrice adjacence
mtr_adj=[0	1	1	
1	0	1	
1	1	0		
];


%tracé des liaisons en noir et des noeuds cercle rouge
gplot (mtr_adj,coord,'k')
hold on
gplot(mtr_adj,coord,'ro')


%noms des stations, on récupère un vecteur de "handles"
h=text(coord(:,1)+2,coord(:,2),villes);

%on fixe la taille du texte des stations à 7
for i=1:length(coord)
   set(h(i),'Fontsize',7)
end


%coordonnées des 2 points d'équilibre noté de Pt5 et Pt7 
Pt=[
6163.1998	26585.487	
6408.3142	       26131.044];

%declaration des variables 
xo=Pt(:,1);
yo=Pt(:,2);

%dessin des points de la variable Pt en xo et yo
plot(xo,yo,'*','markersize',10)

%noms des différents "Points d'équilibre" dans l'ordre des variables	
Pe=[
'Pt3'	
'Pt5'	
];

%noms des Points d'équilibre, on récupère un vecteur de "handles"
h=text(Pt(:,1)+2,Pt(:,2),Pe);


%on fixe la taille du texte noms des différents "Points d'équilibre" à 10
for i=1:length(Pt)
   set(h(i),'Fontsize',10)
end

%INTERSECTION_DESSIN1
%coordonnées des points d'intersection et de liaison
Inter=[	
6002.84		26418.03];

%declaration des variables 
x1=Inter(:,1);
y1=Inter(:,2);

%graphique des points d'intersection
plot(x1,y1,'m*','markersize',7)
grid	

%DT5 droite terminale de coordonnées x0,y0 (point i1-i2) et de coordonnées
%x1,y1 (point d'équilibre P1)
x6=linspace(6002.8355,6408.3142,25);
y6=-0.707762557*(x6)+30666.6087;
p=plot(x6,y6,'c-')
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DT5' droite terminale de coordonnées x0,y0 (point i1-i3) et de coordonnées
%x1,y1 (point d'équilibre P3)
x7=linspace(6408.3142, 6625.3771,5);
y7=-0.707762557*(x7)+30666.6087;
p=plot(x7,y7,'c-');

for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%centrage du dessin et suppression des axes
%automatisation du dessin, segment de droite et points d'équilibre
axis equal
axis ('on')
xlabel ('coordonnees x')
ylabel ('coordonnees y')
title ('Etape 3, Points intersection i3-i5')






