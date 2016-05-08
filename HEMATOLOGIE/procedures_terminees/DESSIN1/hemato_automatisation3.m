%hemato_automatisation1
%coordonnées des projections cartographiques
coord=[	
6501	26262		
6029	26714
5485	26373
6846	25966	
6346	26043	];

%declaration des variables 
x=coord(:,1);
y=coord(:,2);

%graph des communes d'établissement seul
plot(x,y,'k.')
hold on

%noms des différentes villes
villes=['LILLE           '	
'DUNKERQUE       '	
'BOULOGNE SUR MER'	
'VALENCIENNES    '	
'LENS            '];



%noms des stations, on récupère un vecteur de "handles"
h=text(coord(:,1)+2,coord(:,2),villes);

%on fixe la taille du texte des stations à 5
for i=1:length(coord)
   set(h(i),'Fontsize',8)
end


%coordonnées des 5 points d'équilibre noté de Pt1 à Pt7 dont le point moyen lille stphi
%ablation des points 4 et 6 dont on ne trace pas les perpendiculaires
Pt=[
5736.4678	26530.63	
5765.4016	26265.529	
6163.1998	26585.487	
6408.3142	26131.044	
6628.771	25999.453];

%declaration des variables 
xo=Pt(:,1);
yo=Pt(:,2);

%dessin des points de la variable Pt en xo et yo
plot(xo,yo,'*','markersize',10)

%noms des différents "Points d'équilibre" dans l'ordre des variables	
Pe=['Pt1'	
'Pt2'	
'Pt3'	
'Pt5'
'Pt7'];

%noms des Points d'équilibre, on récupère un vecteur de "handles"
h=text(Pt(:,1)+2,Pt(:,2),Pe);


%on fixe la taille du texte noms des différents "Points d'équilibre" à 10
for i=1:length(Pt)
   set(h(i),'Fontsize',10)
end

%INTERSECTION_DESSIN1
%coordonnées des points d'intersection et de liaison
%i1-i2; i1-i3; i3-i5; i5-i7.
Inter=[
5817.4762		26401.3963	
5884.5067		26294.4620	
6002.8354		26418.0265	
6625.3770	25977.4149	
];

%declaration des variables 
x1=Inter(:,1);
y1=Inter(:,2);

%graphique des points d'intersection
plot(x1,y1,'m*','markersize',7)
grid

%DT1 droite terminale de coordonnées x0,y0 (point i1-i2) et de coordonnées
%x1,y1 (point d'équilibre P1)
x3=linspace(5665,5817.48,25);
y3=-1.595307918*(x3)+35682.0622;
p=plot(x3,y3,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DT2 droite terminale de coordonnées x0,y0 (point i1-i2) et de coordonnées
%x1,y1 (point d'équilibre P2)
x2=linspace(5643,5817.48,25);
y2=2.609090909*(x2)+11223.0721;
p=plot(x2,y2,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DT1' droite terminale de coordonnées x0,y0 (point i1-i2) et de coordonnées
%x1,y1 (point d'équilibre P1)
x4=linspace(5817.48,5884.51);
y4=-1.595307918*(x4)+35682.0622;
p=plot(x4,y4,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DT3 droite terminale de coordonnées x0,y0 (point i1-i3) et de coordonnées
%x1,y1 (point d'équilibre P3)
x5=linspace(5884.51,6200,25);
y5=1.044247788*(x5)+20149.5789	;
p=plot(x5,y5,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DT5 droite terminale de coordonnées x0,y0 (point i1-i2) et de coordonnées
%x1,y1 (point d'équilibre P1)
x6=linspace(6002.8355,6408.3142,25);
y6=-0.707762557*(x6)+30666.6087;
p=plot(x6,y6,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DT5' droite terminale de coordonnées x0,y0 (point i1-i3) et de coordonnées
%x1,y1 (point d'équilibre P3)
x7=linspace(6408.3142, 6625.3771,5);
y7=-0.707762557*(x7)+30666.6087;
p=plot(x7,y7,'c-');

for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DT7' droite terminale de coordonnées x0,y0 (point i5-i7) et de coordonnées
%x1,y1 (point d'équilibre P7)

x8=linspace(6566,6665,20);
y8= 6.493506494*(x8)-17044.5141;
p=plot(x8,y8,'r-');

for i=1:length(p)
   set(p(i),'LineWidth',3)
end	
	
%automatisation du dessin, segment de droite et points d'équilibre
axis equal
axis ([min(x) max(x) min(y) max(y)])
axis ([5400 7400 25400 27000])
xlabel ('coordonnees x')
ylabel ('coordonnees y')
title ('Etape 3, Points intersection et points de liaison')






