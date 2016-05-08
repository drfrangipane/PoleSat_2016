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
gplot (mtr_adj,coord,'k')
grid
hold on
gplot(mtr_adj,coord,'o')


%noms des stations, on récupère un vecteur de "handles"
h=text(coord(:,1)+2,coord(:,2),villes);

%on fixe la taille du texte des stations à 5
for i=1:length(coord)
   set(h(i),'Fontsize',10)
end

%hemato_simulation
%coordonnées des projections cartographiques
coord1=[	
6029	26714	
6501	26262	
6846	25966	
5485	26373	
6346	26043	
5665	26620	
6596	26334	];

%declaration des variables 
x1=coord1(:,1);
y1=coord1(:,2);

%matrice adjacence
mtr_adj1=[0	1	0	0	0	1	0	
1	0	0	0	1	0	1	
0	0	0	0	0	0	1	
0	0	0	0	0	1	0	
0	1	0	0	0	0	0	
1	0	0	1	0	0	0	
0	1	1	0	0	0	0	

];

%tracé des liaisons en noir et des noeuds cercle rouge
gplot(mtr_adj1,coord1,'r')


%coordonnées des 6 points d'équilibre noté de Pt1 à Pt6 dont le point moyen lille stphi
Pt=[6408.3142	26131.044	
5826.767	26661.775	
6163.1998	26585.487	
6563.1782	26309.125	
5578.2388	26500.944	
6706.4571	26171.407	
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
];

%noms des Points d'équilibre, on récupère un vecteur de "handles"
h=text(Pt(:,1)+2,Pt(:,2),Pe);


%on fixe la taille du texte noms des différents "Points d'équilibre" à 10
for i=1:length(Pt)
   set(h(i),'Fontsize',10)
end



%INTERSECTION_DESSIN2- simulation triangulation et voisins relatifs
%
Inter=[
5875.082576	26284.6209	
5913.74		26324.99	
6002.84		26418.03	
6525.23		26048.29	
6680.776002	26153.961	];

%declaration des variables 
x1=Inter(:,1);
y1=Inter(:,2);

%graphique des points d'intersection
plot(x1,y1,'m*','markersize',7)

%noms des différents "Points d'intersection" dans l'ordre des variables	
PP=['i5-i3'	
'i2-i3'	
'i1-i3'	
'i1-i6'	
'i4-i6'];

%noms des Points d'équilibre, on récupère un vecteur de "handles"
h=text(Inter(:,1)+2,Inter(:,2),PP);


%on fixe la taille du texte noms des différents "Points d'équilibre" à 10
for i=1:length(Inter)
   set(h(i),'Fontsize',7)
end
grid

%DT1 droite terminale de coordonnées x0,y0 (point i5-i3) et de coordonnées
%x1,y1 (point d'équilibre P3)
x2=linspace(5551,5875.08258,25);
y2=1.044247788*(x2)+20149.5789;
p=plot(x2,y2,'g-')
for i=1:length(p)
   set(p(i),'LineWidth',3)
end	
pause(4)		
%DT2 droite terminale de coordonnées x0,y0 (point i5-i3;i2-i3 et i1-i3) et de coordonnées
%x1,y1 (point d'équilibre P3)
x3=linspace(5551,6198,25);
y3=1.044247788*(x3)+20149.5789;
p=plot(x3,y3,'y-')
for i=1:length(p)
   set(p(i),'LineWidth',3)
end	
%DT3 droite terminale de coordonnées x0,y0 (point i2-i3) et de coordonnées
%x1,y1 (point d'équilibre P2)
x4=linspace(5821,5913.73946,25);
y4=-3.872340426*(x4)+49225.0006;
p=plot(x4,y4,'r-')
for i=1:length(p)
   set(p(i),'LineWidth',3)
end	

%DT5 droite terminale de coordonnées x0,y0 (point i5-i3) et de coordonnées
%x1,y1 (point d'équilibre P5)
x5=linspace(5515,5875.08258,25);
y5=-0.728744939*(x5)+30566.0576;
p=plot(x5,y5,'g-')
for i=1:length(p)
   set(p(i),'LineWidth',3)
end	
		
%DT6 droite terminale de coordonnées x0,y0 (point i1-i3) et de coordonnées
%x1,y1 (point d'équilibre P1)
x6=linspace(6002.83546, 6408.31417,25);
y6=-0.707762557*(x6)+30666.6087;
p=plot(x6,y6,'c-')
for i=1:length(p)
   set(p(i),'LineWidth',3)
end	
pause(4)		
%DT7 droite terminale de coordonnées x0,y0 (point i1-i6) et de coordonnées
%x1,y1 (point d'équilibre P1)
x7=linspace(6408.31417,6525.23305,25);
y7=-0.707762557*(x7)+30666.6087;
p=plot(x7,y7,'c-')
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DT8 droite terminale de coordonnées x0,y0 (point i1-i6) et de coordonnées
%x1,y1 (point d'équilibre P6)
x8=linspace(6525.23305,6674,25);
y8=0.679347826*(x8)+21615.3902;
p=plot(x8,y8,'r-')
for i=1:length(p)
   set(p(i),'LineWidth',3)
end	
pause(4)
%DT9 droite terminale de coordonnées x0,y0 (point i1-i6) et de coordonnées
%x1,y1 (point d'équilibre P6)
x9=linspace(6034,6674,25);
y9=0.679347826*(x9)+21615.3902;
p=plot(x9,y9,'r-')
for i=1:length(p)
   set(p(i),'LineWidth',3)
end	

%DT10 droite terminale de coordonnées x0,y0 (point i4-i6) et de coordonnées
%x1,y1 (point d'équilibre P4)
x10=linspace(6479,6679,25);
y10=-1.319444444*(x10)+34968.8736;
p=plot(x10,y10,'g-')
for i=1:length(p)
   set(p(i),'LineWidth',3)
end	
	
		



hab31
%automatisation du dessin, segment de droite et points d'équilibre
axis equal
xlabel ('coordonnees x')
ylabel ('coordonnees y')
title (' hemato - simulation + nouveau service de Roubaix')






