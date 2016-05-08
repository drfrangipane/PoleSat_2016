clear all
close all
%coordonnées des projections cartographiques 19 pôles privés Traumato GHM 295
%"19poles.xls"
coord=[	
5665	26620
6645	25760
5786	25977
6862	25684
7168	25884
5999	25984
5942	26401
7197	25591
5483	26045
5493	26373
6016	26705
6185	26132
6306	25888
6418	26014
6505	26271
6519	26196
6522	25964
6584	26353
6851	25969

];

%declaration des variables 
x=coord(:,1);
y=coord(:,2);


%noms des différents poles hospitaliers privés
Pole19=[
'1-Calais                 '
'2-Cambrai                '
'3-Hesdin                 '
'4-Le Cateau Cambrésis    '
'5-Maubeuge               '
'6-Saint Pol sur Ternoise '
'7-Saint-Omer             '
'8-Wignehies              '
'9-Berck-sur-Mer          '
'10-Boulogne-sur-Mer      '
'11-Dunkerque             '
'12-Béthune               '
'13-Arras                 '
'14-Henin Beaumont        '
'15-Lille                 '
'16-Seclin                '
'17-Douai                 '
'18-Roubaix-Tourcoing     '
'19-Valenciennes          '

];

%Traumato GHM 295 Matrice adjacence des 19 Poles triangulation de Delaunay

M19PT=[
0	0	0	0	0	0	1	0	0	1	1	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	1	0	1
0	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0
0	1	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	1
0	0	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	1
0	0	1	0	0	0	1	0	0	0	0	1	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	1	1	1	0	0	1	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
0	0	1	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	1	0
0	0	0	0	0	0	0	0	0	0	0	0	1	1	1	1	0	0	0
0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	1	0	0
0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	1	1	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	1
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0

];


%tracé des liaisons en noir et des noeuds cercle rouge
gplot (M19PT,coord,'k')
hold on
gplot(M19PT,coord,'ro')


%noms des Poles, on récupère un vecteur de "handles"
h=text(coord(:,1)+2,coord(:,2),Pole19);

%on fixe la taille du texte des poles à 10
for i=1:length(coord)
   set(h(i),'Fontsize',5)
end

%traumato matrice de Gabriel
%coordonnées des projections cartographiques des 19 pôles
coord1=[
5665	26620
6645	25760
5786	25977
6862	25684
7168	25884
5999	25984
5942	26401
7197	25591
5483	26045
5493	26373
6016	26705
6185	26132
6306	25888
6418	26014
6505	26271
6519	26196
6522	25964
6584	26353
6851	25969

];

%declaration des variables 
x0=coord1(:,1);
y0=coord1(:,2);

%matrice adjacence de gabriel 32 pe
mtr_adj1=[
0	0	0	0	0	0	1	0	0	1	1	0	0	0	0	0	0	0	0
0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1
0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	1
0	0	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	1
0	0	1	0	0	0	1	0	0	0	0	1	1	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	1	1	1	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	1	1	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0

];

%tracé du schéma de connexion de Gabriel trait continu rouge
gplot(mtr_adj1,coord1,'r')



%coordonnées des  points d'équilibre noté de Pt1 à Pt32 %
Pt=[
5778	26531
5587	26508
5844	26663
6586	25859
6769	25886
5894	26269
6797	25707
6950	25660
6857	25828
6995	25771
7177	25790
6999	25929
5997	25984
5998	25993
6007	25991
5696	26386
5986	26584
6092	26235
5581	26023
5488	26229
6193	26547
6225	26050
6291	26078
6378	25969
6482	26130
6462	25993
6515	26216
6556	26325
6520	26129
6545	26259
6690	26079
6721	25967

];

%declaration des variables 
xo=Pt(:,1);
yo=Pt(:,2);

%dessin des points de la variable Pt en xo et yo
plot(xo,yo,'k*','markersize',5)

%noms des différents 29 "Points d'équilibre" dans l'ordre des variables	
%nom du fichier "dessin-19P-Privés.xls" établissements privés traumato
Pe=[
'P1 '
'P2 '
'P3 '
'P4 '
'P5 '
'P6 '
'P7 '
'P8 '
'P9 '
'P10'
'P11'
'P12'
'P13'
'P14'
'P15'
'P16'
'P17'
'P18'
'P19'
'P20'
'P21'
'P22'
'P23'
'P24'
'P25'
'P26'
'P27'
'P28'
'P29'
'P30'
'P31' 
'P32' 
];

%noms des Points d'équilibre formant le point de départ
%de la perpendicualaire, on récupère un vecteur de "handles"
h=text(Pt(:,1)+2,Pt(:,2),Pe);


%on fixe la taille du texte noms des différents "Points d'équilibre" à 10
for i=1:length(Pt)
   set(h(i),'Fontsize',9)
end

%INTERSECTION_DESSIN - MATLAB_PROG\TRAUMATO\FEVRIER\19 POLES PRIVES 37ETS\"dessin -19P-Privés.xls"
%coordonnées des points d'intersection et de liaison 36

Inter=[
5853.192758	26625.45988
5693.716474	26423.74787
5847.057984	26617.70037
5693.118912	26433.34086
6007.934144	26213.48002
6244.006969	25652.71606
6721.760673	25940.77344
6836.547881	25818.97648
6828.043517	25827.36894
6721.892028	25932.1237
5988.702727	26234.2174
5698.88029	26340.85018
6060.991734	26207.6205
6980.374562	25770.65253
6955.394022	25832.17251
6994.677877	25772.06821
6968.002602	25812.88138
5942.792357	27631.20435
7551.494653	26205.26878
5791.915428	25964.75076
5929.131286	26088.60254
6153.983769	25807.41062
5223.429898	25451.63262
5625.996997	26224.94202
6142.722943	26490.37241
6436.119094	26154.92037
6294.505181	26084.69301
6294.852419	26085.37819
6440.199895	26167.95626
6476.261709	26135.80591
6028.942996	26232.6173
5996.800881	26250.415
6535.276217	26258.55609
6352.438678	26289.02323
6716.893118	26261.30192
6719.002272	26122.41412

];

%declaration des variables 
xi=Inter(:,1);
yi=Inter(:,2);

%graphique des points d'intersection
plot(xi,yi,'m*','markersize',3)
%DTP1 droite terminale de coordonnées x0,y0 (points inter 16-3-1) et de coordonnées
%x1,y1 (point d'équilibre P1)
x1=linspace(5853.192758, 5693.716474, 25);%5778 
y1=1.264840183*(x1)+ 19222.10648;
p=plot(x1,y1,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end
		
%DTP2 droite terminale de coordonnées x0,y0 (points inter 16-20-2) et de coordonnées
%x2,y2 (point d'équilibre P2)
x2=linspace(5693.118912,5528, 25);%6007.934144  5587
y2=-0.698380567*(x2)+ 30409.30448;
p=plot(x2,y2,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end
	
%DTP3 droite terminale de coordonnées x0,y0 (points inter 1-3) et de coordonnées
%x3,y3 (point d'équilibre P3)
x3=linspace(5853.19,5837, 25);  % 5844
y3=-4.135693215*(x3)+ 50832.46946;
p=plot(x3,y3,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP4 droite terminale de coordonnées x0,y0 (points inter 32-27-4) et de coordonnées
%x4,y4 (point d'équilibre P4)
x4=linspace(6244.006969,6721.760673, 25);  %6586 
y4=0.602941176*(x4)+ 21887.94715;
p=plot(x4,y4,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP5 droite terminale de coordonnées x0,y0 (points inter 32-7-5) et de coordonnées
%x5,y5 (point d'équilibre P5)
x5=linspace(6836.547881,6721.892028 , 25);%6769 6721.892028

y5=-0.986842105*(x5)+ 32565.56978;
p=plot(x5,y5,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP6 droite terminale de coordonnées x0,y0 (points inter 16-13-6) et de coordonnées
%x6,y6 (point d'équilibre P6)
x6=linspace(5988.702727,5698.88029, 25);  % 5894  
y6=-0.367924528*(x6)+ 28437.60803;
p=plot(x6,y6,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP7 droite terminale de coordonnées x0,y0 (points inter 5-7) et de coordonnées
%x7,y7 (point d'équilibre P7)
x7=linspace(6836.55,6754, 25);%6797   
y7=2.855263158*(x7)+ 6298.833186;
p=plot(x7,y7,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP8 droite terminale de coordonnées x0,y0 (points inter 11-8) et de coordonnées
%x8,y8 (point d'équilibre P8)
x8=linspace(6980.374562, 6931 , 25); %6950 
y8=3.602150538*(x8)+	626.2925454;
p=plot(x8,y8,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP9 droite terminale de coordonnées x0,y0 (points inter 5-9) et de coordonnées
%x9,y9 (point d'équilibre P9)
x9=linspace(6828.04,6955.394022	, 25);  %6857
y9=0.037719298*(x9)+	25569.81993;
p=plot(x9,y9,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP10 droite terminale de coordonnées x0,y0 (points inter 9-10) et de coordonnées
%x10,y10 (point d'équilibre P10)
x10=linspace(6955.39, 6995, 25); %  
y10=-1.53*(x10)+36473.92537;
p=plot(x10,y10,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP11 droite terminale de coordonnées x0,y0 (points inter 10-8-11) et de coordonnées
%x11,y11 (point d'équilibre P11)
x11=linspace(6980.37,7303, 25);%7177  6994.68(10),  
y11=0.098976109*(x11)+	25079.76221;
p=plot(x11,y11,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP12 droite terminale de coordonnées x0,y0 (points inter 10-12) et de coordonnées
%x12,y12 (point d'équilibre P12)
x12=linspace(6968.00,6999, 25);%   
y12=3.726470588*(x12)+	-153.1753705;
p=plot(x12,y12,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP13 droite terminale de coordonnées x0,y0 (points inter 18-6-13) et de coordonnées
%x13,y13 (point d'équilibre P13)
x13=linspace( 5988.70,6003, 25);%5997   
y13=-30.42857143*(x13)+	208461.8861;
p=plot(x13,y13,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP14 droite terminale de coordonnées x0,y0 (points inter 15-17-14) et de coordonnées
%x14,y14 (point d'équilibre P14)
x14=linspace(6004.889422, 5998, 25);%7551.494653 
y14=0.136690647*(x14)+ 25173.05009;
p=plot(x14,y14,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP15 droite terminale de coordonnées x0,y0 (points inter 14- 23-18-15) et de coordonnées
%x15,y15 (point d'équilibre P15)
x15=linspace(6004.889422,6268, 25);%6153.983769    5929.131286 6007   
y15=-1.250561798*(x15)+ 33503.34762;
p=plot(x15,y15,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP16 droite terminale de coordonnées x0,y0 (points inter 20-1-2-6-16) et de coordonnées
%x16,y16 (point d'équilibre P16)
x16=linspace( 5693.12, 5706.250399, 25);%5696   (2),5693.72,  5698.88 (6) 
y16=-16.05357143*(x16)+	117828.232; 
p=plot(x16,y16,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end



%DTP17 droite terminale de coordonnées x0,y0 (points inter 21-1-14-17) et de coordonnées
%x17,y17 (point d'équilibre P17)
x17=linspace(5847.06,6183.384797, 25); %5986 7551.49 (14),  
y17=-0.241975309*(x17)+	28032.54403;
p=plot(x17,y17,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP18 droite terminale de coordonnées x0,y0 (points inter 25-13-6-14-15-18) et de coordonnées
%x18,y18 (point d'équilibre P18)
x18=linspace(6293,5991.634163, 25);%5791.92(14) 6227.318165 5991.634163    5929.13(15) 6060.99   6092

y18=0.902605459*(x18)+20736.93627;
p=plot(x18,y18,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP19 droite terminale de coordonnées x0,y0 (points inter 20-13-19) et de coordonnées
%x19,y19 (point d'équilibre P19)
x19=linspace(5625.996997,5559, 25);%5581 5942.79    
y19=4.43902439*(x19)+1251.004133;
p=plot(x19,y19,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP20 droite terminale de coordonnées x0,y0 (points inter 16-2-19-20) et de coordonnées
%x20,y20 (point d'équilibre P20)
x20=linspace(5706.250399,5458, 25);% 5626.00(19) 6007.93 5488  5458

y20=-0.030010173*(x20)+ 26393.77917;
p=plot(x20,y20,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP21 droite terminale de coordonnées x0,y0 (points inter 17-6-18-21) et de coordonnées
%x21,y21 (point d'équilibre P21)
x21=linspace(6183.384797, 6193, 25);%5933.876134   5223.43  

y21=1.129933262*(x21)+19549.50543;
p=plot(x21,y21,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP22 droite terminale de coordonnées x0,y0 (points inter 15-23-22) et de coordonnées
%x22,y22 (point d'équilibre P22)
x22=linspace(6294.51 , 6035.117184, 25);  %6225
y22=0.495907231*(x22)+22963.20238;
p=plot(x22,y22,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP23 droite terminale de coordonnées x0,y0 (points inter 25-15-23) et de coordonnées
%x23,y23 (point d'équilibre P23)
x23=linspace(6368.910741,6294.505181 , 25);  %6153.98  6291 6100 
y23=1.973239437*(x23)+13664.12715;
p=plot(x23,y23,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP24 droite terminale de coordonnées x0,y0 (points inter 4-24) et de coordonnées
%x24,y24 (point d'équilibre P24)
x24=linspace(6287.027248,6378 , 25);  % 
y24=3.194444444*(x24)+5595.095488;
p=plot(x24,y24,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end



%DTP25 droite terminale de coordonnées x0,y0 (points inter 18-26-24-    4-25) et de coordonnées
%x25,y25 (point d'équilibre P25)
%x25=linspace(6227.318165,6705.809733, 25); % 6922.888776  6482    6440.20  


%y25=-0.891534392*(x25)+31909.61596;
%p=plot(x25,y25,'m-');
%for i=1:length(p)
 %  set(p(i),'LineWidth',3)
%end

%DTP31 droite terminale de coordonnées x0,y0 (points inter 32-31) et de coordonnées
%x31,y31 (point d'équilibre P31)
x31=linspace(6719.002272,  6690, 25);% 
y31=1.469094923*(x31)+16251.562;
p=plot(x31,y31,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP32 droite terminale de coordonnées x0,y0 (points inter 4-5-30-31-32 ) et de coordonnées
%x32,y32 (point d'équilibre P32)
x32=linspace(6721.89,  6719.002272, 25);% 6721.76    (5), 6716.89(30),6719.00 (31)  6721
y32=-65.85*(x32)+468568.7138;
p=plot(x32,y32,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


grid
ss11
hab31
figure(1)

%automatisation du dessin, segment de droite et points d'équilibre
%centrage du dessin et suppression des axes
%choix des valeurs ([xmin xmax ymin ymax])
axis equal
axis ([min(x) max(x) min(y) max(y)])
axis ([5400 7390 25500 26800])
xlabel ('coordonnees x')
ylabel ('coordonnees y')
title ('Dessin privé-GHM 295, 32 PE GABRIEL "dessin-19P-Privés"','Fontsize',14)






