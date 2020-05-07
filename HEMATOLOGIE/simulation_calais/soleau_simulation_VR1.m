clear all
close all
%Dessin de modèle P chapeau de l'attraction théorique,selon les Voisins Relatifs - avec simulation sur Calais
%spécialité étudiée l'hématologie clinique_7 pôles hospitaliers pour 8 établissements dont 1 service fictif (Calais)
%région Nord - Pas-de-Calais
%édition programme année 2002, base de données COREDIM, année 2ème semestre 1994 - 1er semestre 1995

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
gplot(mtr_adj,coord,'ro')
hold on

%noms des stations, on récupère un vecteur de "handles"
%h=text(coord(:,1)+2,coord(:,2),villes);

%on fixe la taille du texte des stations à 5
%for i=1:length(coord)
 %  set(h(i),'Fontsize',14)
%end

%coordonnées des 12 points d'équilibre noté de Pt1 à Pt12 dont le point moyen lille stphi
%'Pt1 '	'Pt2 '	'Pt3 '	'Pt4 '	'Pt5 '	'Pt6 '	'Pt7 '	'Pt8 '	'Pt9 '	'Pt10'	'Pt11'	'Pt12'	
Pt=[6709.7481	26082.9	
6600.0875	26003.871	
6408.3142	26131.044	
6143.0314	26472.627	
5826.767 	26661.775	
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
%plot(xo,yo,'*','markersize',7)

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
%h=text(Pt(:,1)+2,Pt(:,2),Pe);

%on fixe la taille du texte noms des différents "Points d'équilibre" à 10
%for i=1:length(Pt)
 %  set(h(i),'Fontsize',10)
%end

%DT10' droite terminale de coordonnées x0,y0 (point i10-i11) et de coordonnées
%x1,y1 (point d'équilibre P10)
x2=linspace(5642,5795.06793,25);
y2=2.609090909*(x2)+11223.0721;
p=plot(x2,y2,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end
%DT11' droite terminale de coordonnées x0,y0 (point i10-i11) et de coordonnées
%x1,y1 (point d'équilibre P11)
x3=linspace(5519,5795.06793,25);
y3=-0.728744939*(x3)+30566.0576;
p=plot(x3,y3,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DT11' droite terminale de coordonnées x0,y0 (point i11-i5) et de coordonnées
%x1,y1 (point d'équilibre P11)
x4=linspace(5935.542001,5795.06793,25);
y4=-0.728744939*(x4)+30566.0576;
p=plot(x4,y4,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DT11' droite terminale de coordonnées x0,y0 (point i11-i5) et de coordonnées
%x1,y1 (point d'équilibre P5)
x5=linspace(5935.542001,5826.76705,25);
y5=-3.872340426*(x5)+49225.0006;
p=plot(x5,y5,'y-');
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
		
%DT3 droite terminale de coordonnées x0,y0 (point i3-i7) et de coordonnées
%x1,y1 (point d'équilibre P3)	

x8=linspace(6002.83546,6596.44966,25);
y8=-0.707762557*(x8)+30666.6087;
p=plot(x8,y8,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DT3' droite terminale de coordonnées x0,y0 (point i3-i2) et de coordonnées
%x1,y1 (point d'équilibre P3)	

x9=linspace(6002.83546,6598.8993,25);
y9=-0.707762557*(x9)+30666.6087;
p=plot(x9,y9,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DT2 droite terminale de coordonnées x0,y0 (point i3-i2) et de coordonnées
%x1,y1 (point d'équilibre P2)	

x10=linspace(6538,6600.08751,25);
y10=6.493506494*(x10)-16853.8406;
p=plot(x10,y10,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DT9' droite terminale de coordonnées x0,y0 (point i12-i9) et de coordonnées
%x1,y1 (point d'équilibre P9)	
x12=linspace(6479,6680.776,25);
y12=-1.319444444*(x12)+34968.8736;

p=plot(x12,y12,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DT1' droite terminale de coordonnées x0,y0 (point i1-i2) et de coordonnées
%x1,y1 (point d'équilibre P1)	
x13=linspace(6590.93127,6740 ,25);
y13=1.16554054*(x13)+18262.4168;

p=plot(x13,y13,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end







%hab31
%ss11
%grid
%automatisation du dessin, segment de droite et points d'équilibre
%axis equal
%xlabel ('coordonnees x')
%ylabel ('coordonnees y')
title (' hemato - simulation + nouveau service de Roubaix')






