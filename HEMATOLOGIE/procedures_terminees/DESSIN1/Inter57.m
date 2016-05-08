%hemato_automatisation1
%coordonn�es des projections cartographiques
coord=[	
6501	26262		
6846	25966		
6346	26043	];

%declaration des variables 
x=coord(:,1);
y=coord(:,2);


%noms des diff�rentes villes
villes=['LILLE           '		
'VALENCIENNES    '		
'LENS            '];

%matrice adjacence
mtr_adj=[0	1	1	
1	0	1	
1	1	0	
];


%trac� des liaisons en noir et des noeuds cercle rouge
gplot (mtr_adj,coord,'k')
hold on
gplot(mtr_adj,coord,'ro')


%noms des stations, on r�cup�re un vecteur de "handles"
h=text(coord(:,1)+2,coord(:,2),villes);

%on fixe la taille du texte des stations � 7
for i=1:length(coord)
   set(h(i),'Fontsize',7)
end


%coordonn�es des 2 points d'�quilibre not� de Pt5 et Pt7 
Pt=[	
6408.3142	26131.044	
6628.771 	25999.453];

%declaration des variables 
xo=Pt(:,1);
yo=Pt(:,2);

%dessin des points de la variable Pt en xo et yo
plot(xo,yo,'*','markersize',10)

%noms des diff�rents "Points d'�quilibre" dans l'ordre des variables	
Pe=[	
'Pt5'		
'Pt7'];

%noms des Points d'�quilibre, on r�cup�re un vecteur de "handles"
h=text(Pt(:,1)+2,Pt(:,2),Pe);


%on fixe la taille du texte noms des diff�rents "Points d'�quilibre" � 10
for i=1:length(Pt)
   set(h(i),'Fontsize',10)
end

%INTERSECTION_DESSIN1
%coordonn�es des points d'intersection et de liaison
Inter=[	
6625.38 		25977.41];

%declaration des variables 
x1=Inter(:,1);
y1=Inter(:,2);

%graphique des points d'intersection
plot(x1,y1,'m*','markersize',7)
grid
	
%DT7' droite terminale de coordonn�es x0,y0 (point i5-i7) et de coordonn�es
%x1,y1 (point d'�quilibre P7)

x8=linspace(6566,6665,50);
y8= 6.493506494*(x8)-17044.5141;
p=plot(x8,y8,'r-');

for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%centrage du dessin et suppression des axes
%automatisation du dessin, segment de droite et points d'�quilibre

axis equal
xlabel ('coordonnees x')
ylabel ('coordonnees y')
title ('Etape 3, Points intersection i5-i7')






