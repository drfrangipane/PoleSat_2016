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
gplot (mtr_adj,coord,'k')
grid
hold on
gplot(mtr_adj,coord,'ro')


%noms des stations, on récupère un vecteur de "handles"
h=text(coord(:,1)+2,coord(:,2),villes);

%on fixe la taille du texte des stations à 5
for i=1:length(coord)
   set(h(i),'Fontsize',10)
end


%coordonnées des 12 points d'équilibre noté de Pt1 à Pt12 dont le point moyen lille stphi
%'Pt1 '	'Pt2 '	'Pt3 '	'Pt4 '	'Pt5 '	'Pt6 '	'Pt7 '	'Pt8 '	'Pt9 '	'Pt10'	'Pt11'	'Pt12'	


Pt=[6709.7481	26082.9	
6600.0875	26003.871	
6408.3142	26131.044	
6143.0314	26472.627	
5826.767	26661.775	
5876.1507	26441.096	
6163.1998	26585.487	
6268.88831	26553.2283	
6563.17824	26309.1246	
5765.40161	26265.529	
5578.23876	26500.9443	
6706.45705	26171.4072	

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

%INTERSECTION_DESSIN3-2- simulation et ablation point 8,4 et 1
%coordonnées des points d'intersection et de liaison
Inter=[
5795.067932		26342.9311	
5793.78		26343.87	
5881.98		26447.97	
5864.41		26516.00	
5913.739459		26324.9882	
6002.835465		26418.0265	
6616.474195		26110.2776	
6680.776002		26153.9609	
6598.8993		25996.1549	

];

%declaration des variables 
x1=Inter(:,1);
y1=Inter(:,2);

%graphique des points d'intersection
plot(x1,y1,'m*','markersize',7)

%noms des différents "Points d'intersection" dans l'ordre des variables	
PP=[
'i10-i11    '	
'i11-i6     '	
'i5-i6      '	
'i3-i5      '	
'i7-i5      '	
'i3-i7      '	
'i2-i12     '	
'i12-i9     '	
'i2-i3      '	
	];

%noms des Points d'équilibre, on récupère un vecteur de "handles"
h=text(Inter(:,1)+2,Inter(:,2),PP);


%on fixe la taille du texte noms des différents "Points d'équilibre" à 10
for i=1:length(Inter)
   set(h(i),'Fontsize',10)
end
grid

%DT10' droite terminale de coordonnées x0,y0 (point i10-i11) et de coordonnées
%x1,y1 (point d'équilibre P10)
x2=linspace(5642,5795.06793,25);
y2=2.609090909*(x2)+11223.0721;
p=plot(x2,y2,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end
%DT11' droite terminale de coordonnées x0,y0 (point i10-i11) et de coordonnées
%x1,y1 (point d'équilibre P11)
x3=linspace(5519,5795.06793,25);
y3=-0.728744939*(x3)+30566.0576;
p=plot(x3,y3,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end
%DT6' droite terminale de coordonnées x0,y0 (point i11-i06) et de coordonnées
%x1,y1 (point d'équilibre P6)
x4=linspace(5793.77561,5876.15071,25);
y4=1.180242634*(x4)+19505.8119	;
p=plot(x4,y4,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end
%DT5' droite terminale de coordonnées x0,y0 (point i6-i5) et de coordonnées
%x1,y1 (point d'équilibre P5)
x5=linspace(5818,5881.97924,25);
y5=-3.872340426*(x5)+49225.0006;
p=plot(x5,y5,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DT7 droite terminale de coordonnées x0,y0 (point i7-i5) et de coordonnées
%x1,y1 (point d'équilibre P7)
x6=linspace(5913.73946,6202,25);
y6=1.044247788*(x6)+20149.5789;
p=plot(x6,y6,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end		
%DT7' droite terminale de coordonnées x0,y0 (point i7-i5) et de coordonnées
%x1,y1 (point d'équilibre P5)
x7=linspace(5913.73946,5876.15071,25);
y7=-3.872340426*(x7)+49225.0006;
p=plot(x7,y7,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end
		
%DT3 droite terminale de coordonnées x0,y0 (point i3-i5) et de coordonnées
%x1,y1 (point d'équilibre P3)	

x8=linspace(6002.83546,6596.44966,25);
y8=-0.707762557*(x8)+30666.6087;
p=plot(x8,y8,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DT3' droite terminale de coordonnées x0,y0 (point i3-i2) et de coordonnées
%x1,y1 (point d'équilibre P3)	

x9=linspace(6002.83546,6598.8993,25);
y9=-0.707762557*(x9)+30666.6087;
p=plot(x9,y9,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DT2 droite terminale de coordonnées x0,y0 (point i12-i2) et de coordonnées
%x1,y1 (point d'équilibre P2)	

x10=linspace(6538,6616.47419,25);
y10=6.493506494*(x10)-16853.8406;
p=plot(x10,y10,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DT12 droite terminale de coordonnées x0,y0 (point i12-i2) et de coordonnées
%x1,y1 (point d'équilibre P12)	

x11=linspace(6616.47419,6671,25);
y11=0.679347826*(x11)+21615.3902;

p=plot(x11,y11,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DT9' droite terminale de coordonnées x0,y0 (point i12-i9) et de coordonnées
%x1,y1 (point d'équilibre P9)	
x12=linspace(6479,6680.776,25);
y12=-1.319444444*(x12)+34968.8736;

p=plot(x12,y12,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end
	

				
		
ss11
hab31
grid
%automatisation du dessin, segment de droite et points d'équilibre
axis equal
xlabel ('coordonnees x')
ylabel ('coordonnees y')
title (' hemato - simulation + nouveau service de Roubaix')






