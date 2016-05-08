
%1-coordonn�es des projections cartographiques
coord=[6511	26266
6028	26716
5488	26370
6847	25966
6353	26041];

%2-d�claration des variables x et y de la matrice coord
x=coord(:,1);
y=coord(:,2);


%3-noms des diff�rentes villes pr�sent�es dans l'ordre des coordonn�es
villes=['LILLE           '	
'DUNKERQUE       '	
'BOULOGNE SUR MER'	
'VALENCIENNES    '	
'LENS            '];

%matrice adjacence des liaisons entre commune
mtr_adj=[0	1	0	0	1	
0	0	0	0	1	
0	1	0	0	1	
1	0	0	0	1	
1	1	1	1	0];

%****dessin du graphe
close all

%trac� des liaisons en noir et des noeuds carr� rouge
gplot (mtr_adj,coord,'k')
hold on
gplot(mtr_adj,coord,'rs')

%trac� des communes avec des points de couleur magenta
hold on
plot(x,y,'m.')

%noms des stations, on r�cup�re un vecteur de "handles"
h=text(coord(:,1)+2,coord(:,2),villes);

%on fixe la taille du texte des stations � 7
for i=1:length(coord)
   set(h(i),'Fontsize',7)
end

%centrage du dessin et suppression des axes
%choix des valeurs ([xmin xmax ymin ymax])
axis manual
axis ([min(x) max(x) min(y) max(y)])
axis ([5400 7400 25400 27000])
axis ('on')
title ('Triangulation de Delaunay avec contraintes rectangulaires h�matologie')



