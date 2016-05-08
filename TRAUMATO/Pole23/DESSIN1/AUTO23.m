clear all
close all
%coordonnées des projections cartographiques 23 pôles globaux de Traumato GHM 295
%"23poles.xls"
coord=[	
6384.00	26327.00
5665.00	26620.00
6645.00	25760.00
6754.00	25935.00
6142.00	26364.00
5786.00	25977.00
6862.00	25684.00
7168.00	25884.00
5999.00	25984.00
5942.00	26401.00
7197.00	25591.00
5482.67	26045.33
5492.50	26373.00
6015.50	26704.75
6184.50	26132.33
6305.67	25888.00
6329.00	26036.50
6418.00	26014.00
6505.29	26271.29
6518.50	26195.50
6522.00	25964.00
6583.50	26352.75
6851.25	25969.00

];

%declaration des variables 
x=coord(:,1);
y=coord(:,2);


%noms des différentes villes
Pole23=[
'1-Armentières            '
'2-Calais                 '
'3-Cambrai                '
'4-Denain                 '
'5-Hazebrouck             '
'6-Hesdin                 '
'7-Le Cateau Cambrésis    '
'8-Maubeuge               '
'9-Saint Pol sur Ternoise '
'10-Saint-Omer            '
'11-Wignehies             '
'12-Berck-sur-Mer         '
'13-Boulogne-sur-Mer      '
'14-Dunkerque             '
'15-Béthune               '
'16-Arras                 '
'17-Lens                  '
'18-Henin Beaumont        '
'19-Lille                 '
'20-Seclin                '
'21-Douai                 '
'22-Roubaix-Tourcoing     '
'23-Valenciennes          '

];

%Traumato GHM 295 Matrice adjacence des 23 Poles triangulation de Delaunay

M23PT=[
0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	1	0	0	1	0	1	0
0	0	0	0	0	0	0	0	0	1	0	0	1	1	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	1	0	0
0	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	1
0	0	0	0	0	0	0	0	0	1	0	0	0	1	1	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	1	1	0	0	1	0	0	0	0	0	0	0	0	0	0
0	0	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	1
0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1
0	0	0	0	0	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	1	1	1	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
0	0	0	0	0	1	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0
1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	0	0	0	0
0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	1	0	0	1	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	1	1	0	0
1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	1
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
   
];

%tracé des liaisons en noir et des noeuds cercle rouge
gplot (M23PT,coord,'k')
hold on
gplot(M23PT,coord,'ro')


%noms des Poles, on récupère un vecteur de "handles"
h=text(coord(:,1)+2,coord(:,2),Pole23);

%on fixe la taille du texte des poles à 10
for i=1:length(coord)
   set(h(i),'Fontsize',5)
end


%traumato matrice de Gabriel
%coordonnées des projections cartographiques des 23 pôles
coord1=[
6384.00	26327.00
5665.00	26620.00
6645.00	25760.00
6754.00	25935.00
6142.00	26364.00
5786.00	25977.00
6862.00	25684.00
7168.00	25884.00
5999.00	25984.00
5942.00	26401.00
7197.00	25591.00
5482.67	26045.33
5492.50	26373.00
6015.50	26704.75
6184.50	26132.33
6305.67	25888.00
6329.00	26036.50
6418.00	26014.00
6505.29	26271.29
6518.50	26195.50
6522.00	25964.00
6583.50	26352.75
6851.25	25969.00

];

%declaration des variables 
x0=coord1(:,1);
y0=coord1(:,2);

%matrice adjacence de gabriel 39 pe
mtr_adj1=[
0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	1	0	0	1	1	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0
0	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1
0	0	0	0	0	0	0	0	0	1	0	0	0	1	1	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	1	1	0	1	0	0	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	1
0	0	0	0	0	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	1
0	0	0	0	0	0	0	0	0	1	0	0	0	0	1	1	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	1	1	0	0
1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
   
];

%tracé du schéma de connexion de Gabriel trait continu rouge
gplot(mtr_adj1,coord1,'r')


%coordonnées des  points d'équilibre noté de Pt1 à Pt dont le point moyen lille stphi
%ablation des points 4 et 6 dont on ne trace pas les perpendiculaires
Pt=[
6170.543193	26359.63596
6362.24032	26212.06932
5788.500639	26522.3587
5600.971087	26528.31802
5814.834887	26656.22969
6592.421803	25847.20286
6720.871289	25881.8117
6801.593014	25824.39031
6700.173658	25941.72829
6785.903676	25946.15398
6115.251807	26368.94842
6126.80541	26404.9293
6148.744874	26327.23382
5996.928071	25983.93191
5904.520244	26299.13195
6785.26154	25710.87614
6949.569914	25659.68955
6858.156347	25785.9015
6998.237331	25773.04401
7044.468949	25917.14961
5997.085827	25998.00369
6006.763839	25990.20828
5750.87005	26389.09424
5977.511367	26547.75616
7176.994782	25793.12169
5597.965515	26019.35942
5488.027918	26223.98115
6298.529515	25890.23424
6274.685432	26220.33382
6236.533261	26097.82454
6316.586675	25957.49805
6356.413435	25944.92071
6371.833158	26025.67139
6488.204525	26140.78728
6475.895784	25986.16549
6423.125559	26309.02713
6515.098502	26215.00805
6559.497107	26327.74973
6519.695404	26116.43258
   
];

%declaration des variables 
xo=Pt(:,1);
yo=Pt(:,2);

%dessin des points de la variable Pt en xo et yo
plot(xo,yo,'k*','markersize',5)

%noms des différents 39 "Points d'équilibre" dans l'ordre des variables	
%nom du fichier "dessin-23P-globaux.xls" établissements privés traumato
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
'P33'
'P34'
'P35'
'P36'
'P37'
'P38'
'P39'

];

%noms des Points d'équilibre formant le point de départ
%de la perpendicualaire, on récupère un vecteur de "handles"
h=text(Pt(:,1)+2,Pt(:,2),Pe);


%on fixe la taille du texte noms des différents "Points d'équilibre" à 10
for i=1:length(Pt)
   set(h(i),'Fontsize',9)
end

%INTERSECTION_DESSIN - MATLAB_PROG\TRAUMATO\FEVRIER\23 POLES globaux 63ETS\"dessin 23P-PU-P-PSPH.xls"
%coordonnées des points d'intersection et de liaison 44

Inter=[
5908.074068	24642.94601
6166.237498	26331.47439
6032.936903	25459.61644
6264.736709	26230.52956
6317.872184	26220.46949
5298.435591	25902.50474
5745.923419	26468.50532
5835.708404	26582.06898
5748.620826	26425.20231
5832.583949	26582.82502
6685.92374	25903.57903
6696.177827	25909.76164
6822.876579	25818.27698
6829.174021	25836.25783
6698.112312	25779.86475
6722.394766	26119.49715
6842.141445	25785.29743
6106.086843	26319.40807
6047.912321	26004.9512
6300.808575	26469.52622
6503.419347	26544.74343
5789.905121	26261.40351
6167.091174	26330.59951
5987.573618	26268.57457
5945.119738	27560.38548
6526.342817	26070.34817
5699.383053	26374.60695
6981.233342	25773.74598
7010.793452	25791.65886
7003.597422	25764.84307
6996.773244	25775.28406
6093.349222	25881.92791
5761.666715	26215.7692
6141.01206	26508.19303
5643.013832	26219.32999
6484.656843	26471.95175
6347.808554	25952.59226
6352.337357	25948.55467
6411.65174	26183.17601
6358.032544	26212.86598
6531.85633	26116.61644
6538.662058	26116.71934
6368.167968	26189.38868
6652.051566	26238.88771

];

%declaration des variables 
xi=Inter(:,1);
yi=Inter(:,2);

%graphique des points d'intersection
plot(xi,yi,'m*','markersize',3)


grid
ss11
hab31
figure(1)

%automatisation du dessin, segment de droite et points d'équilibre
%centrage du dessin et suppression des axes
%choix des valeurs ([xmin xmax ymin ymax])
axis equal

axis ([min(x) max(x) min(y) max(y)])
axis ([5400 7380 25500 26820])
xlabel ('coordonnees x')
ylabel ('coordonnees y')

title ('Dessin 23 POLES - GHM 295, 39PE GABRIEL "dessin-23P-PU-P-PSPH"','Fontsize',14)

	







