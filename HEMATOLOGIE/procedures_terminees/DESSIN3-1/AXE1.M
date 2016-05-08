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
%'Pt3 '	'Pt5 '	'Pt6 '	'Pt9 '	'Pt10'	'Pt11'	'PtM1' 'PtM2'

Pt=[
6408.3142	26131.044	
5826.767	26661.775	
5876.1507	26441.096	
6563.17824	26309.1246	
5765.40161	26265.529	
5578.23876	26500.9443	
6191.70651	26537.1141
6672.09754	26086.0593	
];

%declaration des variables 
xo=Pt(:,1);
yo=Pt(:,2);

%dessin des points de la variable Pt en xo et yo
plot(xo,yo,'*','markersize',10)

%noms des différents "Points d'équilibre" dans l'ordre des variables	
Pe=[	
'Pt3 '	
'Pt5 '	
'Pt6 '	
'Pt9 '	
'Pt10'	
'Pt11'	
'PtM1'
'PtM2'
];

%noms des Points d'équilibre, on récupère un vecteur de "handles"
h=text(Pt(:,1)+2,Pt(:,2),Pe);


%on fixe la taille du texte noms des différents "Points d'équilibre" à 10
for i=1:length(Pt)
   set(h(i),'Fontsize',10)
end

%INTERSECTION_DESSIN2- simulation + point moyen 
%(pt7-8 et4 =M1) et (Pt1-2-et 12 = M2)
%coordonnées des points d'intersection et de liaison
Inter=[
5795.067932		26342.9311	
5793.78		26343.87	
5881.98		26447.97	
5864.41		26516.00	
6047.435988		26386.46	
6596.449655		25997.889	
6704.030245		26123.2782	

];

%declaration des variables 
x1=Inter(:,1);
y1=Inter(:,2);

%graphique des points d'intersection
plot(x1,y1,'m*','markersize',7)

%noms des différents "Points d'intersection" dans l'ordre des variables	
PP=[
'i10-i11   '	
'i11-i6    '	
'i5-i6     '	
'i3-i5     '	
'i3-M1     '	
'i3-M2     '	
'i9-M2     '	
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
%DTM1' droite terminale de coordonnées x0,y0 (point i3-M1) et de coordonnées
%x1,y1 (point d'équilibre M1)
x6=linspace(6047.43599,6191.7065,25);
y6=1.044247788*(x6)+20071.4383;
p=plot(x6,y6,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end
%DT3' droite terminale de coordonnées x0,y0 (point i3-i5, m1-i3 et i3-M2) et de coordonnées
%x1,y1 (point d'équilibre P3)6596.44966		25997.8886	

x7=linspace(5864.41309,6596.44966,25);
y7=-0.707762557*(x7)+30666.6087;
p=plot(x7,y7,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTM2' droite terminale de coordonnées x0,y0 (point M2-i3) et de coordonnées
%x1,y1 (point d'équilibre M2 sur D1)	

x8=linspace(6312,6712,25);
y8=1.165540541*(x8)+18309.4591;
p=plot(x8,y8,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DT9' droite terminale de coordonnées x0,y0 (point M2-i9) et de coordonnées
%x1,y1 (point d'équilibre P9)	

x9=linspace(6476,6704.03024,25);
y9=-1.319444444*(x9)+34968.8736;
p=plot(x9,y9,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end
		
			
		
		
		
hab31
grid
%automatisation du dessin, segment de droite et points d'équilibre
axis equal
xlabel ('coordonnees x')
ylabel ('coordonnees y')
title (' hemato - simulation + nouveau service de Roubaix')






