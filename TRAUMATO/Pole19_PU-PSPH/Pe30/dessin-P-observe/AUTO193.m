clear all
close all
%coordonnées des projections cartographiques 19 pôles PU-PSPH Traumato GHM 295
%"19poles.xls"
coord=[	
6384	26327
5665	26620
6645	25760
6754	25935
6142	26364
7168	25884
5942	26401
5483	26045
5493	26373
6016	26705
6185	26132
6306	25888
6329	26037
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


%noms des différents poles hospitaliers PU-PSPH
Pole19=[
'1-Armentières            '
'2-Calais                 '
'3-Cambrai                '
'4-Denain                 '
'5-Hazebrouck             '
'6-Maubeuge               '
'7-Saint-Omer             '
'8-Berck-sur-Mer          '
'9-Boulogne-sur-Mer       '
'10-Dunkerque             '
'11-Béthune               '
'12-Arras                 '
'13-Lens                  '
'14-Henin Beaumont        '
'15-Lille                 '
'16-Seclin                '
'17-Douai                 '
'18-Roubaix-Tourcoing     '
'19-Valenciennes          '
];

%Traumato GHM 295 Matrice adjacence des 19 Poles triangulation de Delaunay

M19PUPSPHT=[
0	0	0	0	1	0	0	0	0	1	0	0	1	0	0	1	0	1	0
0	0	0	0	0	0	1	0	1	1	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	1	0	1
0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	1
0	0	0	0	0	0	1	0	0	1	1	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1
0	0	0	0	0	0	0	0	1	1	1	0	0	0	0	0	0	0	0
0	0	0	0	0	0	1	0	1	0	1	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0
1	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	1	0	1	1	0	0	1	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	1	1	0	0
1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	1
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0

];


%tracé des liaisons en noir et des noeuds cercle rouge
gplot (M19PUPSPHT,coord,'k')
hold on
gplot(M19PUPSPHT,coord,'ro')


%noms des Poles, on récupère un vecteur de "handles"
h=text(coord(:,1)+2,coord(:,2),Pole19);

%on fixe la taille du texte des poles à 10
for i=1:length(coord)
   set(h(i),'Fontsize',5)
end

%traumato matrice de Gabriel
%coordonnées des projections cartographiques des 19 pôles
coord1=[
6384	26327
5665	26620
6645	25760
6754	25935
6142	26364
7168	25884
5942	26401
5483	26045
5493	26373
6016	26705
6185	26132
6306	25888
6329	26037
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

%matrice adjacence de gabriel 27 pe
mtr_adj1=[
0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0
0	0	0	0	0	0	1	0	1	1	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0
0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1
0	0	0	0	0	0	1	0	0	1	1	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1
0	0	0	0	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	1	1	0	0
1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0

];

%tracé du schéma de connexion de Gabriel trait continu rouge
gplot(mtr_adj1,coord1,'r')



%coordonnées des  points d'équilibre noté de Pt1 à Pt30  dont 3 ajoutés secteur littoral
%segments 7-11, 8-7, 8-11% %
Pt=[
6170.580057	26359.63032
6362.235187	26212.04221
5779.137131	26529.76162
5624.23295	26561.62631
5765.503708	26644.30154
6606.790353	25823.3721
6709.801487	25864.03908
6699.424717	25941.82191
6770.708301	25940.84146
6106.404012	26370.58526
6128.00915	26401.68682
6147.918497	26331.73839
7094.307257	25903.77548
5804.266959	26392.42041
5968.7879	26511.7051
5487.913084	26220.15463
6276.398914	26222.00579
6236.586176	26097.78944
6313.660619	25938.8758
6330.02273	25915.31926
6359.92705	26028.68136
6495.942326	26154.76151
6490.010069	25979.37977
6404.782414	26317.45331
6516.55397	26206.66075
6567.547876	26336.13503
6519.8817	26104.11044
6044.31398	26287.64595
5788.264064	26281.96064
5913.270873	26098.71148
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
];

%noms des Points d'équilibre formant le point de départ
%de la perpendicualaire, on récupère un vecteur de "handles"
h=text(Pt(:,1)+2,Pt(:,2),Pe);


%on fixe la taille du texte noms des différents "Points d'équilibre" à 10
for i=1:length(Pt)
   set(h(i),'Fontsize',9)
end

%INTERSECTION_DESSIN - MATLAB_PROG\TRAUMATO\FEVRIER\19 POLES PU-PSPH 26ETS\"dessin -19P-PU-PSPH.xls"
%coordonnées des points d'intersection et de liaison 36

Inter=[
6179.958837	26420.97261
6268.873246	26229.71831
6356.830414	26213.06549
5789.905745	26543.3822
5794.501258	26549.19478
5797.609386	26553.12607
5740.263571	26480.59278
6336.719411	25660.53521
6692.308668	25874.93461
6691.153725	25875.65398
6718.108517	26091.29231
6959.412168	25401.0929
6110.988857	26395.3682
6244.592475	26444.9672
6166.846493	26335.21079
6097.506413	26322.49013
6166.074711	26335.06921
5815.610231	26210.32038
6301.742147	26196.03332
6464.139819	26440.90076
6301.447852	25940.79475
6336.323169	25935.3149
6189.377973	25354.06502
6408.217442	26203.33645
6429.596428	26191.4985
6585.621676	26105.10435
6550.197089	26104.56878
6673.837942	26234.08538

];

%declaration des variables 
xi=Inter(:,1);
yi=Inter(:,2);

%graphique des points d'intersection
plot(xi,yi,'m*','markersize',3)


%DTP1 droite terminale de coordonnées x0,y0 (points inter 11-12-1) et de coordonnées
%x1,y1 (point d'équilibre P1)
x1=linspace(6166.846493,6179.958837, 25);%6171 
y1=6.540540541*(x1)+ -13999.2987;
p=plot(x1,y1,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end
		
%DTP2 droite terminale de coordonnées x0,y0 (points inter 24-17-22-2) et de coordonnées
%x2,y2 (point d'équilibre P2)
x2=linspace(6408.217442,6268.873246, 25);%6362 6356.830414 6356.8304146268.873246

y2=-0.189328744*(x2)+ 27416.59621;
p=plot(x2,y2,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end
	
%DTP3 droite terminale de coordonnées x0,y0 (points inter 15-14-4-3) et de coordonnées
%x3,y3 (point d'équilibre P3)
x3=linspace(5740.263571,5797.609386, 25);  %5686.811215  5686.811215
y3=1.264840183*(x3)+ 19220.07676;
p=plot(x3,y3,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP4 droite terminale de coordonnées x0,y0 (points inter 3-4) et de coordonnées
%x4,y4 (point d'équilibre P4)
x4=linspace(5740.263571,5579, 25);  % 5624
y4=-0.698380567*(x4)+ 30489.48131;
p=plot(x4,y4,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP5 droite terminale de coordonnées x0,y0 (points inter 3-5) et de coordonnées
%x5,y5 (point d'équilibre P5)
x5=linspace(5789.905745, 5756 , 25);% 5766
y5=-4.135693215*(x5)+ 50488.6561;
p=plot(x5,y5,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP6 droite terminale de coordonnées x0,y0 (points inter 7-6) et de coordonnées
%x6,y6 (point d'équilibre P6)
x6=linspace(6692.308668,6336.719411, 25);  %   6607
y6=0.602941176*(x6)+ 21839.86615;
p=plot(x6,y6,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP7 droite terminale de coordonnées x0,y0 (points inter 6-8-7) et de coordonnées
%x7,y7 (point d'équilibre P7)
x7=linspace(6692.308668,6821.989576, 25);%  6710 6691.153725  6821.989576

y7=-0.622857143*(x7)+ 30043.28687;
p=plot(x7,y7,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP8 droite terminale de coordonnées x0,y0 (points inter 9-7-8) et de coordonnées
%x8,y8 (point d'équilibre P8)
x8=linspace(6718.108517, 6691.153725, 25); % 6699   6691.153725  6691.153725

y8=8*(x8)+	-27653.57582;
p=plot(x8,y8,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP9 droite terminale de coordonnées x0,y0 (points inter 8-9) et de coordonnées
%x9,y9 (point d'équilibre P9)
x9=linspace(6710,6880 	, 25);  %6771 6959.412168 6718.108517  6959.412168   

y9=-2.860294118*(x9)+	45307.05859;
p=plot(x9,y9,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP10 droite terminale de coordonnées x0,y0 (points inter 19-11-12-10) et de coordonnées
%x10,y10 (point d'équilibre P10)
x10=linspace(6097.506413,6110.988857, 25); %6125.496073 5998  6110.988857  6097.506413



y10=5.405405405*(x10)+ -6637.003995;
p=plot(x10,y10,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP11 droite terminale de coordonnées x0,y0 (points inter 15-10-1-11) et de coordonnées
%x11,y11 (point d'équilibre P11)
x11=linspace(6273,6110.988857, 25);%6244.592475   6273  6128   6110.988857  6179.958837 6244.592475

y11=0.371239912*(x11)+	24126.72524;
p=plot(x11,y11,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP12 droite terminale de coordonnées x0,y0 (points inter 28-1-10-17-12) et de coordonnées
%x12,y12 (point d'équilibre P12)
x12=linspace(6166.846493,6079.196515, 25);% 6097.506413   6079.196515     6166.074711  6148 6097.506413
y12=0.183453237*(x12)+	25203.88284;
p=plot(x12,y12,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP13 droite terminale de coordonnées x0,y0 (points inter 9-13) et de coordonnées
%x13,y13 (point d'équilibre P13)
x13=linspace(7014,7105, 25);%6959.412168  7094
y13=3.726470588*(x13)+	-532.9518566;
p=plot(x13,y13,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP14 droite terminale de coordonnées x0,y0 (points inter 29-10-19-16-3-14) et de coordonnées
%x14,y14 (point d'équilibre P14)
x14=linspace(5794.501258 ,5813.149642, 25);% 5815.610231  
y14=-16.05357143*(x14)+ 119571.6346;
p=plot(x14,y14,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP15 droite terminale de coordonnées x0,y0 (points inter 11-3-15) et de coordonnées
%x15,y15 (point d'équilibre P15)
x15=linspace(5797.609386,6244.592475 , 25);%5969 6244.592475 6244.592475

y15=-0.241975309*(x15)+ 27956.00439;
p=plot(x15,y15,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP16 droite terminale de coordonnées x0,y0 (points inter 29-14-16) et de coordonnées
%x16,y16 (point d'équilibre P16)
x16=linspace( 5461,5844.404983, 25);%5844.404983   6075.313169

y16=-0.030010173*(x16)+	26384.84785; 
p=plot(x16,y16,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end



%DTP17 droite terminale de coordonnées x0,y0 (points inter 18-12-2-17) et de coordonnées
%x17,y17 (point d'équilibre P17)
x17=linspace(6166.074711,6301.742147, 25); %6268.873246 6276 6166.074711 6166.074711
y17=-1.024828767*(x17)+	32654.23995;
p=plot(x17,y17,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP18 droite terminale de coordonnées x0,y0 (points inter 19-17-18) et de coordonnées
%x18,y18 (point d'équilibre P18)
x18=linspace(6301.742147,6040, 25);%6148.413601 6148.413601  6237  6023

y18=1.507826087*(x18)+16694.10211;
p=plot(x18,y18,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP19 droite terminale de coordonnées x0,y0 (points inter 18- 14-20-21-19) et de coordonnées
%x19,y19 (point d'équilibre P19)
x19=linspace( 6336.323169,6148.413601, 25);%  5827.763106  6301.447852 5688  5827.763106  6148.413601


y19=-0.157126824*(x19)+26930.92124;
p=plot(x19,y19,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP20 droite terminale de coordonnées x0,y0 (points inter 23-19-20) et de coordonnées
%x20,y20 (point d'équilibre P20)
x20=linspace(6301.447852,6420.451821, 25);%6314   6420.451821

y20=-0.891534392*(x20)+ 31558.75223;
p=plot(x20,y20,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP21 droite terminale de coordonnées x0,y0 (points inter 2-18-19-21) et de coordonnées
%x21,y21 (point d'équilibre P21)
x21=linspace(6336.323169, 6404.270349 , 25);%6464.139819 6360   
y21=3.955555556*(x21)+871.6365894;
p=plot(x21,y21,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP22 droite terminale de coordonnées x0,y0 (points inter 2-25-27-22) et de coordonnées
%x22,y22 (point d'équilibre P22)
x22=linspace(6408.217442,6585.621676 , 25);  %6496  6585.621676   6429.596428  
y22=-0.553719008*(x22)+29751.68826;
p=plot(x22,y22,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP23 droite terminale de coordonnées x0,y0 (points inter 27-6-21-23) et de coordonnées
%x23,y23 (point d'équilibre P23)
x23=linspace(6305 , 6550.197089, 25);  %6490   6189.377973  6336.719411 6293 
y23=2.08*(x23)+12480.15883;
p=plot(x23,y23,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP24 droite terminale de coordonnées x0,y0 (points inter 2-24) et de coordonnées
%x24,y24 (point d'équilibre P24)
x24=linspace(6356.830414,6444, 25);  % 64056229.153906  
y24=2.176923077*(x24)+12374.73467;
p=plot(x24,y24,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end



%DTP25 droite terminale de coordonnées x0,y0 (points inter 22-25) et de coordonnées
%x25,y25 (point d'équilibre P25)
x25=linspace(6429.596428,6673.837942, 25); % 6517 
y25=0.174363808*(x25)+25070.40958;
p=plot(x25,y25,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP26 droite terminale de coordonnées x0,y0 (points inter 25-26 ) et de coordonnées
%x26,y26 (point d'équilibre P26)
x26=linspace( 6673.837942,6477 , 25);%    6568
y26=-0.960105217*(x26)+	32641.672;
p=plot(x26,y26,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP27 droite terminale de coordonnées x0,y0 (points inter  9- 22-23-27) et de coordonnées
%x27,y27 (point d'équilibre P27)
x27=linspace(6712.60841,6550.197089, 25);  %6520  6585.621676 6550.197089   6550.197089

y27=0.01511879*(x27)+ 26005.53772;
p=plot(x27,y27,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP28 droite terminale de coordonnées x0,y0 (points inter 12-29-30-28  ) et de coordonnées
%x28,y28 (point d'équilibre P28)
x28=linspace(5891.00738,6079.196515, 25);  %6044 5905.393843  6079.196515

y28=0.902605459*(x28)+ 20832.01516;
p=plot(x28,y28,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP29 droite terminale de coordonnées x0,y0 (points inter 14-28-30-29  ) et de coordonnées
%x29,y29 (point d'équilibre P29)
x29=linspace(5891.00738,5813.149642, 25);  %5910.052487 5788  
y29=-1.291471415*(x29)+ 33757.33822;
p=plot(x29,y29,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP30 droite terminale de coordonnées x0,y0 (points inter 29-28-30 ) et de coordonnées
%x30,y30 (point d'équilibre P30)
x30=linspace(5905.393843,5951, 25);  %5913  5905.393843  5910.052487 5905.393843

y30=-8.067049808*(x30)+ 73801.36215;
p=plot(x30,y30,'m-');
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
axis ([5400 7400 25500 26800])
xlabel ('coordonnees x')
ylabel ('coordonnees y')

title ('Dessin 19 POLES - GHM 295, 27+3sgts PE GABRIEL "dessin-19P-PU-PSPH"','Fontsize',14)








