clear all
close all
%hemato_simulation
%coordonnées des projections cartographiques
coord=[	
6029	26714	
6501	26262	
6846	25966	
5485	26373	
6346	26043	
5665	26620	
6596	26334	];

%declaration des variables 
x=coord(:,1);
y=coord(:,2);


%noms des différentes villes
villes=['Dunkerque      '	
'Lille          '	
'Valenciennes   '	
'Boulogne       '	
'Lens           '	
'Calais         '	
'Roubaix        '	
];

%matrice adjacence
mtr_adj=[0	1	0	0	1	1	1	
0	0	0	0	1	0	1	
0	1	0	0	1	0	1	
0	0	0	0	1	1	0	
0	0	0	0	0	1	0	
0	0	0	0	0	0	0	
0	0	0	0	0	0	0	
];


%tracé des liaisons en noir et des noeuds cercle rouge

gplot(mtr_adj,coord,'r.')
hold on


%noms des stations, on récupère un vecteur de "handles"
h=text(coord(:,1)+2,coord(:,2),villes);

%on fixe la taille du texte des stations à 5
for i=1:length(coord)
   set(h(i),'Fontsize',10)
end


%coordonnées des 12 points d'équilibre noté de Pt1 à Pt12 dont le point moyen lille stphi
%'Pt1 '	'Pt2 '	'Pt3 '	'Pt4 '	'Pt5 '	'Pt6 '	'Pt7 '	'Pt8 '	'Pt9 '	'Pt10'	'Pt11'	'Pt12'	


Pt=[
6668.5801	26118.221	
6513.6697	26017.179	
6404.4218	26125.544	
6203.0408	26345.605	
5811.9041	26657.937	
5972.6035	26359.373	
6225.2171	26526.097	
6445.04734	26435.1676	
6574.02107	26317.3423	
5959.47785	26191.1444	
5592.71426	26520.8079	
6641.56031	26266.9352	


];

%declaration des variables 
xo=Pt(:,1);
yo=Pt(:,2);

%dessin des points de la variable Pt en xo et yo
plot(xo,yo,'*','markersize',10)

%noms des différents "Points d'équilibre" dans l'ordre des variables	
Pe=['Pt1 '	
'Pt2 '	
'Pt3 '	
'Pt4 '	
'Pt5 '	
'Pt6 '	
'Pt7 '	
'Pt8 '	
'Pt9 '	
'Pt10'	
'Pt11'	
'Pt12'	
	
];

%noms des Points d'équilibre, on récupère un vecteur de "handles"
h=text(Pt(:,1)+2,Pt(:,2),Pe);


%on fixe la taille du texte noms des différents "Points d'équilibre" à 10
for i=1:length(Pt)
   set(h(i),'Fontsize',10)
end


%DTP2 droite terminale de coordonnées x0,y0 (point i2-i3) et de coordonnées
%x1,y1 (point d'équilibre P2)
x2=linspace(6517.9806,6451,25);
y2=6.49350649*(x2)-16279.3776;
p=plot(x2,y2,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end
%DTP11 droite terminale de coordonnées x0,y0 (point i10-i11) et de coordonnées
%x1,y1 (point d'équilibre P11)
x3=linspace(5540,5978.16853,25);
y3=-0.72874494*(x3)+30596.4701;
p=plot(x3,y3,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end
		
%DTP10 droite terminale de coordonnées x0,y0 (point i10-i11) et de coordonnées
%x1,y1 (point d'équilibre P10)
x4=linspace(5808,5978.16853,25);
y4=2.60909091*(x4)+10642.3249;
p=plot(x4,y4,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end
		
%DTP5 droite terminale de coordonnées x0,y0 (point i11-i5) et de coordonnées
%x1,y1 (point d'équilibre P5)
x5=linspace(5906.33812,5803,25);
y5=-3.87234043*(x5)+49163.608;
p=plot(x5,y5,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end
		

		
%DTP7 droite terminale de coordonnées x0,y0 (point i7-i11) et de coordonnées
%x1,y1 (point d'équilibre P7)
x6=linspace(5962.2591,6198 ,25);
y6=1.04424779*(x6)+20025.4281	;
p=plot(x6,y6,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end		

%DT7' droite terminale de coordonnées x0,y0 (point i7-i3) et de coordonnées
%x1,y1 (point d'équilibre P3)
x7=linspace(6068.98601,6517.9806,25);
y7=-0.70776256*(x7)+30658.3544;
p=plot(x7,y7,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP1 droite terminale de coordonnées x0,y0 (point i1-i2) et de coordonnées
%x1,y1 (point d'équilibre P1)	

x8=linspace(6498.74618,6681,25);
y8=1.16554054*(x8)+18345.7208;
p=plot(x8,y8,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP9 droite terminale de coordonnées x0,y0 (point i1-i9) et de coordonnées
%x1,y1 (point d'équilibre P9)	

x9=linspace(6497,6671,25);
y9=-1.31944444*(x9)+34991.3979;
p=plot(x9,y9,'k-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


hab31
ss11
grid
%automatisation du dessin, segment de droite et points d'équilibre
axis equal
xlabel ('coordonnees x')
ylabel ('coordonnees y')
title (' hemato - simulation + nouveau service de Roubaix')






