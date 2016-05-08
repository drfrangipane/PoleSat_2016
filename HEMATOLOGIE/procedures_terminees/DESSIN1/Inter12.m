%hemato_automatisation1
%coordonnées des projections cartographiques
coord=[	
6029	26714
5485	26373
6346	26043	];

%declaration des variables 
x=coord(:,1);
y=coord(:,2);


%noms des différentes villes
villes=[
'DUNKERQUE       '	
'BOULOGNE SUR MER'		
'LENS            '];

%matrice adjacence
mtr_adj=[0 0 1
   1 0 1
   1 1 0];


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


%coordonnées des 2 points d'équilibre noté de Pt1 à Pt2 dont le point moyen lille stphi
Pt=[
5736.4678	26530.63	
5765.4016	26265.529];

%declaration des variables 
xo=Pt(:,1);
yo=Pt(:,2);

%dessin des points de la variable Pt en xo et yo
plot(xo,yo,'*','markersize',10)

%noms des différents "Points d'équilibre" dans l'ordre des variables	
Pe=['Pt1'	
'Pt2'];

%noms des Points d'équilibre, on récupère un vecteur de "handles"
h=text(Pt(:,1)+2,Pt(:,2),Pe);


%on fixe la taille du texte noms des différents "Points d'équilibre" à 10
for i=1:length(Pt)
   set(h(i),'Fontsize',10)
end

%INTERSECTION_DESSIN1
%coordonnées des points d'intersection et de liaison
Inter=[
5817.48		26401.40	];

%declaration des variables 
x1=Inter(:,1);
y1=Inter(:,2);

%graphique des points d'intersection
plot(x1,y1,'m*','markersize',7)
grid

%DT1 droite terminale de coordonnées x0,y0 (point i1-i2) et de coordonnées
%x1,y1 (point d'équilibre P1)
x3=linspace(5665,5817.48,25);
y3=-1.595307918*(x3)+35682.0622;
p=plot(x3,y3,'r-')
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DT2 droite terminale de coordonnées x0,y0 (point i1-i2) et de coordonnées
%x1,y1 (point d'équilibre P2)
x2=linspace(5643,5817.48,25);
y2=2.609090909*(x2)+11223.0721;
p=plot(x2,y2,'r-')
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%centrage du dessin et suppression des axes
%automatisation du dessin, segment de droite et points d'équilibre
axis equal
axis ('on')
xlabel ('coordonnees x')
ylabel ('coordonnees y')
title ('Etape 3, Points intersection i1-i2')






