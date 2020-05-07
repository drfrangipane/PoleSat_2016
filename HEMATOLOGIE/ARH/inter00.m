clear all

%hemato_simulation 6 poles hospitaliers pour 7 �tablissement, Roubaix compris
%coordonn�es des projections cartographiques
coord=[
6029	26714	
6501	26262	
5485	26373		
	];

%declaration des variables 
x=coord(:,1);
y=coord(:,2);


%noms des diff�rentes poles hospitaliers
villes=[
'DUNKERQUE       '	
'LILLE           '	
'BOULOGNE SUR MER'	
];



%matrice adjacence de gabriel
mtr_adj=[ 
   0     1     1  
   1     0     0 
   1     0     0 
];

%trac� des liaisons en noir et des noeuds cercle rouge
gplot (mtr_adj,coord,'r')
grid
hold on
gplot(mtr_adj,coord,'ro')

%noms des stations, on r�cup�re un vecteur de "handles"
h=text(coord(:,1)+2,coord(:,2),villes);

%on fixe la taille du texte des stations � 5
for i=1:length(coord)
  set(h(i),'Fontsize',10)
end



%coordonn�es des 8 points d'�quilibre not� de Pt1 � Pt8  selon gabriel
%'Pt1 '		'Pt8 '


Pt=[
6221.80887	26529.361	
5770.18179	26551.7629	

];

%declaration des variables 
xo=Pt(:,1);
yo=Pt(:,2);

%dessin des points de la variable Pt en xo et yo
plot(xo,yo,'*','markersize',10)

%noms des diff�rents "Points d'�quilibre" dans l'ordre des variables	
Pe=['Pt1 '	
'Pt8 '	
];

%noms des Points d'�quilibre, on r�cup�re un vecteur de "handles"
h=text(Pt(:,1)+2,Pt(:,2),Pe);


%on fixe la taille du texte noms des diff�rents "Points d'�quilibre" � 10
for i=1:length(Pt)
   set(h(i),'Fontsize',10)
end

%INTERSECTION_DESSIN P^, dessin estim�e selon la pond�ration de K-MEANS
%coordonn�es des points d'intersection et de liaison
Inter=[
5957.33921	26253.1891	
];

%declaration des variables 
xi=Inter(:,1);
yi=Inter(:,2);

%graphique des points d'intersection
plot(xi,yi,'m*','markersize',7)

%noms des diff�rents "Points d'intersection" dans l'ordre des variables	
PP=[
'1-8'	
];

%noms des Points d'�quilibre, on r�cup�re un vecteur de "handles"
h=text(Inter(:,1)+2,Inter(:,2),PP);


%on fixe la taille du texte noms des diff�rents "Points d'�quilibre" � 10
%for i=1:length(Inter)
%   set(h(i),'Fontsize',10)
%end

%DT1' droite terminale de coordonn�es x0,y0 (point '1-8'	) et de coordonn�es
%x1,y1 (point d'�quilibre P1)
x1=linspace(5957.33921,6221.80887,25);
y1=1.04424779*(x1)+20032.2508	;
p=plot(x1,y1,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end
 




grid
grid

axis equal
xlabel ('coordonnees x')
ylabel ('coordonnees y')
title (' trac� de la droite perpendiculaire au point d''intersection 1-8 ')






