clear all

%hemato_simulation 6 poles hospitaliers pour 7 établissement, Roubaix compris
%coordonnées des projections cartographiques
%coordonnées recentrees pour visualisation des noms des aires 

coord=[
6029	26714	
6501	26262	
6596	26334	
6846	25966	
6346	26043	
5485	26373		
	];

%declaration des variables 
x=coord(:,1);
y=coord(:,2);


%noms des différentes poles hospitaliers
villes=[
'DUNKERQUE       '	
'LILLE           '	
'ROUBAIX         '	
'VALENCIENNES    '	
'LENS            '	
'BOULOGNE SUR MER'	
];

%matrice adjacence de la triangulation de Delaunay
mtr_adj=[ 
     0     1     1     0     1     1
     0     0     1     1     1     0
     0     0     0     1     0     0
     0     0     0     0     1     0
     0     0     0     0     0     1
     0     0     0     0     0     0
];


%tracé des liaisons en noir et des noeuds cercle rouge
%gplot (mtr_adj,coord,'k')
grid
hold on
gplot(mtr_adj,coord,'ro')

%noms des stations, on récupère un vecteur de "handles"
%h=text(coord(:,1)+2,coord(:,2),villes);

%on fixe la taille du texte des stations à 5
%for i=1:length(coord)
 %  set(h(i),'Fontsize',10)
%end



% recentrage des noms de poles pour dessin terminal
coord2=[
5902	26577
6406 	26262	
6596	26334	
6702 	25843	
6346	26043	
5485	26373		
	];

%declaration des variables 
x=coord2(:,1);
y=coord2(:,2);

%noms des différentes poles hospitaliers
villes=[
'DUNKERQUE       '	
'LILLE           '	
'ROUBAIX         '	
'VALENCIENNES    '	
'LENS            '	
'BOULOGNE SUR MER'	
];



%matrice adjacence de la triangulation de Delaunay
mtr_adj2=[ 
     0     1     1     0     1     1
     0     0     1     1     1     0
     0     0     0     1     0     0
     0     0     0     0     1     0
     0     0     0     0     0     1
     0     0     0     0     0     0
];


  
%tracé des liaisons en noir et des noeuds cercle rouge
%gplot(mtr_adj2,coord2,'r.')

%noms des stations, on récupère un vecteur de "handles"
h=text(coord2(:,1)+2,coord2(:,2),villes);

%on fixe la taille du texte des stations à 10
for i=1:length(coord2)
   set(h(i),'Fontsize',11)
end




%hemato_simulation 6 poles hospitaliers pour 7 établissement, Roubaix compris
%coordonnées des projections cartographiques
coord1=[
6029	26714	
6501	26262	
6596	26334	
6846	25966	
6346	26043	
5485	26373		
	];

%declaration des variables 
x0=coord1(:,1);
y0=coord1(:,2);
%matrice adjacence de gabriel
mtr_adj1=[ 
     0     1     0     0     0     1
     0     0     1     1     1     0
     0     0     0     1     0     0
     0     0     0     0     1     0
     0     0     0     0     0     1
     0     0     0     0     0     0
];
%tracé des liaisons en noir et des noeuds cercle rouge
%gplot (mtr_adj1,coord1,'r')



%coordonnées des 8 points d'équilibre noté de Pt1 à Pt8  selon gabriel
%'Pt1 '	'Pt2 '	'Pt3 '	'Pt4 '	'Pt5 '	'Pt6 '	'Pt7 '	'Pt8 '


Pt=[
6221.80887	26529.361	
6554.57471	26302.604	
6689.3781	26196.5474	
6653.61019	26131.0649	
6429.11893	26160.439	
6584.17871	26006.3205	
5816.60385	26245.9044	
5770.18179	26551.7629	

];

%declaration des variables 
xo=Pt(:,1);
yo=Pt(:,2);

%dessin des points de la variable Pt en xo et yo
%plot(xo,yo,'*','markersize',10)

%noms des différents "Points d'équilibre" dans l'ordre des variables	
Pe=['Pt1 '	
'Pt2 '	
'Pt3 '	
'Pt4 '	
'Pt5 '	
'Pt6 '	
'Pt7 '	
'Pt8 '	
];

%noms des Points d'équilibre, on récupère un vecteur de "handles"
%h=text(Pt(:,1)+2,Pt(:,2),Pe);


%on fixe la taille du texte noms des différents "Points d'équilibre" à 10
%for i=1:length(Pt)
 %  set(h(i),'Fontsize',10)
%end

%INTERSECTION_DESSIN P^, dessin estimée selon la pondération de K-MEANS
%coordonnées des points d'intersection et de liaison
Inter=[
5957.33921	26253.1891	
6311.6298	26623.1563	
6932.15315	25804.4102	
6653.45189	26172.141	
6738.31673	26229.7938	
6592.40309	26059.7255	
6590.34054	26046.3324	
5871.73681	26389.7513	
	
];

%declaration des variables 
xi=Inter(:,1);
yi=Inter(:,2);

%graphique des points d'intersection
%plot(xi,yi,'m*','markersize',7)

%noms des différents "Points d'intersection" dans l'ordre des variables	
PP=[
'1-8'	
'1-2'	
'2-5'	
'2-3'	
'3-4'	
'4-6'	
'5-6'	
'7-8'	
];

%noms des Points d'équilibre, on récupère un vecteur de "handles"
%h=text(Inter(:,1)+2,Inter(:,2),PP);


%on fixe la taille du texte noms des différents "Points d'équilibre" à 10
%for i=1:length(Inter)
 %  set(h(i),'Fontsize',10)
%end


%sujet des modification sur x1=linspace(5957.33921, 6194,25)
%5957.33921  coordonnées de gauche = point intersection
% 6194 coordonnées de droite = point d'équilibre
% nous retrouvons ensuite tjs 25 en derniere position chiffre par defaut pour le tracé


%DT1' droite terminale de coordonnées x0,y0 (point '1-8'	) et de coordonnées
%x1,y1 (point d'équilibre P1)
x1=linspace(5957.33921, 6194,25);%d-6221.80887
y1=1.04424779*(x1)+20032.2508	;
p=plot(x1,y1,'y-');
for i=1:length(p)
 set(p(i),'LineWidth',4)
end

%DT2' droite terminale de coordonnées x0,y0 (point '1-2'	) et de coordonnées
%x2,y2 (point d'équilibre P2)
x2=linspace(6465,6670.05588,25);%g-6469  6554.57471 6311.6298   
y2=-1.31944444*(x2)+34951.0012		;
p=plot(x2,y2,'y-');
for i=1:length(p)
 set(p(i),'LineWidth',4)
end

%DT3' droite terminale de coordonnées x0,y0 (points '2-3' ) et de coordonnées
%x3,y3 (point d'équilibre P3)
x3=linspace(6653.45189,6671,25);%d-6689.3781
y3=0.67934783*(x3)+	21652.133		;
p=plot(x3,y3,'y-');
for i=1:length(p)
 set(p(i),'LineWidth',4)
end
	
%DT4' droite terminale de coordonnées x0,y0 (points '3-4' ) et de coordonnées
%x4,y4 (point d'équilibre P4)
x4=linspace(6674 ,6584.47435,25);%d-6653.61019     g-6738.31673
y4=1.16554054*(x4)+18376.0125		;
p=plot(x4,y4,'y-');
for i=1:length(p)
 set(p(i),'LineWidth',4)
end
			
%DT5' droite terminale de coordonnées x0,y0 (points '2-5') et de coordonnées
%x5,y5 (point d'équilibre P5)
x5=linspace(6094.98559,6590.34054,25);   % ig- 6932.15315   6429.11893 
y5=	-0.70776256*(x5)+30710.7286			;
p=plot(x5,y5,'y-');
for i=1:length(p)
 set(p(i),'LineWidth',4)
end


%DT6' droite terminale de coordonnées x0,y0 (points '4-6' ert '5-6') et de coordonnées
%x6,y6 (point d'équilibre P6)
x6=linspace(6592.40309,6524,25);%    d-6584.17871
y6=6.49350649*(x6)-16748.0867			;
p=plot(x6,y6,'y-');
for i=1:length(p)
 set(p(i),'LineWidth',4)
end

%DT7' droite terminale de coordonnées x0,y0 (points ''7-8') et de coordonnées
%x7,y7 (point d'équilibre P7)
x7=linspace(5684 , 5871.73681,25);5816.60385   
y7=2.60909091*(x7)+11069.8562			;
p=plot(x7,y7,'y-');
for i=1:length(p)
 set(p(i),'LineWidth',4)
end


%DT8' droite terminale de coordonnées x0,y0 (points ''7-8') et de coordonnées
%x8,y8 (point d'équilibre P8)
x8=linspace(5957.33921,  5706,25); % d-5770.18179   g-5871.73681
y8=-1.59530792*(x8)+35756.9796				;
p=plot(x8,y8,'y-');
for i=1:length(p)
 set(p(i),'LineWidth',4)
end
	




	


hab31
ss11

%automatisation du dessin, segment de droite et points d'équilibre
axis equal
xlabel (' x')
ylabel (' y')
title (' Aires d''attraction - Modèle estimé (Pe: K-Means) - 6 pôles pour 7 établissements','Fontsize',13')






