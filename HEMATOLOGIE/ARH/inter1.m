clear all

%hemato_simulation 6 poles hospitaliers pour 7 �tablissement, Roubaix compris
%coordonn�es des projections cartographiques
coord=[
6029	26714	
6346	26043	
5485	26373		
	];

%declaration des variables 
x=coord(:,1);
y=coord(:,2);


%noms des diff�rentes poles hospitaliers
villes=[
'DUNKERQUE       '	
'LENS            '	
'BOULOGNE SUR MER'	
];



%matrice adjacence de gabriel
mtr_adj=[ 
   0     1     1  
   1     0     1 
   1     1     0 
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



%coordonn�es des 8 points d'�quilibre not� de Pt7 � Pt8  selon gabriel
%'Pt7 '		'Pt8 '


Pt=[
5816.60385	26245.9044	
5770.18179	26551.7629	

];

%declaration des variables 
xo=Pt(:,1);
yo=Pt(:,2);

%dessin des points de la variable Pt en xo et yo
plot(xo,yo,'*','markersize',10)

%noms des diff�rents "Points d'�quilibre" dans l'ordre des variables	
Pe=['Pt7 '	
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
5871.73681	26389.7513	
];

%declaration des variables 
xi=Inter(:,1);
yi=Inter(:,2);

%graphique des points d'intersection
plot(xi,yi,'m*','markersize',7)

%noms des diff�rents "Points d'intersection" dans l'ordre des variables	
PP=[
'7-8'	
];

%noms des Points d'�quilibre, on r�cup�re un vecteur de "handles"
h=text(Inter(:,1)+2,Inter(:,2),PP);


%on fixe la taille du texte noms des diff�rents "Points d'�quilibre" � 10
%for i=1:length(Inter)
%   set(h(i),'Fontsize',10)
%end


 
%DT7' droite terminale de coordonn�es x0,y0 (points ''7-8') et de coordonn�es
%x7,y7 (point d'�quilibre P7)
x7=linspace(5871.73681,5770.18179,25);
y7=-1.59530792*(x7)+35756.9796				;
p=plot(x7,y7,'y-');
for i=1:length(p)
 set(p(i),'LineWidth',3)
end



grid
grid

axis equal
xlabel ('coordonnees x')
ylabel ('coordonnees y')
title (' trac� de la droite perpendiculaire au point d''intersection 7-8')






