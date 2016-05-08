%hemato_automatisation1
%coordonnées des projections cartographiques, lille dunk et boul
coord=[
6501	26262
6029	26714
5485	26373	];

%declaration des variables 
x=coord(:,1);
y=coord(:,2);


%noms des différentes villes
villes=['LILLE           '
'DUNKERQUE       '	
'BOULOGNE SUR MER'];

%matrice adjacence
mtr_adj=[
0	1	1	
0	0	1	
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


%coordonnées des 2 points d'équilibre noté de Pt1 et Pt3 dont le point moyen lille stphi
Pt=[
5736.4678	26530.63	
6163.1998 	26585.487		
];

%declaration des variables 
xo=Pt(:,1);
yo=Pt(:,2);

%dessin des points de la variable Pt en xo et yo
plot(xo,yo,'*','markersize',10)

%noms des différents "Points d'équilibre" dans l'ordre des variables	
Pe=['Pt1'	
   'Pt3'];

%noms des Points d'équilibre, on récupère un vecteur de "handles"
h=text(Pt(:,1)+2,Pt(:,2),Pe);


%on fixe la taille du texte noms des différents "Points d'équilibre" à 10
for i=1:length(Pt)
   set(h(i),'Fontsize',10)
end

%INTERSECTION_DESSIN1
%coordonnées des points d'intersection et de liaison %i1-i2	%i1-i3
%i1-i3;
Inter=[ 
   5884.51 26294.46]

%declaration des variables 
x1=Inter(:,1);
y1=Inter(:,2);

%graphique des points d'intersection
plot(x1,y1,'m*','markersize',7)
grid

%DT1' droite terminale de coordonnées x0,y0 (point i1-i2) et de coordonnées
%x1,y1 (point d'équilibre P1)
x4=linspace(5817.48,5884.51);
y4=-1.595307918*(x4)+35682.0622;
p=plot(x4,y4,'g-')
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DT3 droite terminale de coordonnées x0,y0 (point i1-i3) et de coordonnées
%x1,y1 (point d'équilibre P3)
x5=linspace(5884.51,6200,25);
y5=1.044247788*(x5)+20149.5789	;
p=plot(x5,y5,'g-')
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


	

%centrage du dessin et suppression des axes
%automatisation du dessin, segment de droite et points d'équilibre
axis equal
axis ('on')
xlabel ('coordonnees x')
ylabel ('coordonnees y')
title ('Etape 3, Point d''intersection i1-i3')






