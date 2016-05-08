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



%coordonnées des  points d'équilibre noté de Pt1 à Pt30 dont 3 ajoutés secteur littoral
%segments 7-11, 8-7, 8-11%
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








