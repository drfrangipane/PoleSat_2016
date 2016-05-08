clear all
close all
%coordonnées des projections cartographiques
%"18poles.xls"
coord=[	
6384.00		26327.00	
5665.00		26620.00	
6645.00		25760.00	
6754.00		25935.00	
6142.00		26364.00	
7168.00		25884.00	
5942.00		26401.00	
5482.67		26045.33	
5492.50		26373.00	
6015.50		26704.75	
6184.50		26132.33	
6305.67		25888.00	
6329.00		26036.50	
6505.29		26271.29	
6518.50		26195.50	
6522.00		25964.00	
6583.50		26352.75	
6851.25		25969.00];

%declaration des variables 
x=coord(:,1);
y=coord(:,2);


%noms des différents poles hospitaliers publics
Pole18=[
'1  -Armentières      '	
'2  -Calais           '	
'3  -Cambrai          '	
'4  -Denain           '	
'5  -Hazebrouck       '	
'6  -Maubeuge         '	
'7  -Saint-Omer       '	
'8  -Berck-sur-Mer    '	
'9  -Boulogne-sur-Mer '	
'10 -Dunkerque        '	
'11 -Béthune          '	
'12 -Arras            '	
'13 -Lens             '	
'14 -Lille            '	
'15 -Seclin           '	
'16 -Douai            '	
'17 -Roubaix-Tourcoing'	
'18 -Valenciennes     '	
];

%Traumato GHM 295 Matrice adjacence des 18 Poles

M18T=[
0	0	0	0	1	0	0	0	0	1	0	0	1	0	1	0	1	0	
0	0	0	0	0	0	1	0	1	1	0	0	0	0	0	0	0	0	
0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	1	0	1	
0	0	1	0	0	0	0	0	0	0	0	0	0	0	1	1	0	1	
0	0	0	0	0	0	1	0	0	1	1	0	0	0	0	0	0	0	
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	
0	0	0	0	0	0	0	0	1	1	1	0	0	0	0	0	0	0	
0	0	0	0	0	0	1	0	1	0	1	0	0	0	0	0	0	0	
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	
1	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	
0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	1	0	0	
0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	
1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	1	
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	

];


%tracé des liaisons en noir et des noeuds cercle rouge
gplot (M18T,coord,'k')
hold on
gplot(M18T,coord,'ro')


%noms des Poles, on récupère un vecteur de "handles"
h=text(coord(:,1)+2,coord(:,2),Pole18);

%on fixe la taille du texte des poles à 10
for i=1:length(coord)
   set(h(i),'Fontsize',5)
end

%traumato matrice de Gabriel
%coordonnées des projections cartographiques
coord1=[6384.00		26327.00	
5665.00		26620.00	
6645.00		25760.00	
6754.00		25935.00	
6142.00		26364.00	
7168.00		25884.00	
5942.00		26401.00	
5482.67		26045.33	
5492.50		26373.00	
6015.50		26704.75	
6184.50		26132.33	
6305.67		25888.00	
6329.00		26036.50	
6505.29		26271.29	
6518.50		26195.50	
6522.00		25964.00	
6583.50		26352.75	
6851.25		25969.00	];

%declaration des variables 
x0=coord1(:,1);
y0=coord1(:,2);

%matrice adjacence de gabriel 26 + 3 liens
mtr_adj1=[
0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	0	0	0	
0	0	0	0	0	0	1	0	1	1	0	0	0	0	0	0	0	0	
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	
0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	
0	0	0	0	0	0	1	0	0	1	1	0	0	0	0	0	0	0	
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	
0	0	0	0	0	0	0	1	1	1	1	0	0	0	0	0	0	0	
0	0	0	0	0	0	1	0	1	0	1	0	0	0	0	0	0	0	
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	
1	0	0	0	0	0	1	1	0	0	0	0	1	0	0	0	0	0	
0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0	
0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	
1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	
];

%tracé du schéma de connexion de Gabriel trait continu rouge
gplot(mtr_adj1,coord1,'r')



%coordonnées des  points d'équilibre noté de Pt1 à Pt29 dont le point moyen 22
%concernant deux établissements CH G Dron et CH Roubaix regroupés sur ce meme pole
%
Pt=[
6170.54	26359.64	
6361.07	26205.89	
5760.55	26643.10	
5779.11	26529.78	
5624.23	26561.63	
6606.77	25823.41	
6699.44	25941.82	
6709.82	25864.06	
6771.00	25940.94	
6128.86	26399.39	
6146.47	26339.66	
6106.39	26370.59	
7093.05	25904.11	
5967.62	26506.87	
5804.28	26392.42	
5485.01	26123.37	
6290.73	26235.99	
6249.35	26089.32	
6388.83	25917.22	
6314.13	25941.85	
6447.87	26136.24	
6429.99	25998.56	
6517.21	26202.91	
6572.58	26341.38	
6397.98	26320.58	
6519.88	26104.12	
5673.025	26192.73	
5677.2564	26069.455	
6027.2423	26306.56	
];

%declaration des variables 
xo=Pt(:,1);
yo=Pt(:,2);

%dessin des points de la variable Pt en xo et yo
plot(xo,yo,'k*','markersize',5)

%noms des différents 29 "Points d'équilibre" dans l'ordre des variables	
%nom du fichier "18-PolesPU-63ETS.xls"
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
'P29'	];

%noms des Points d'équilibre formant le point de départ
%de la perpendicualaire, on récupère un vecteur de "handles"
h=text(Pt(:,1)+2,Pt(:,2),Pe);


%on fixe la taille du texte noms des différents "Points d'équilibre" à 10
for i=1:length(Pt)
   set(h(i),'Fontsize',9)
end

%INTERSECTION_DESSIN1 - MATLAB_PROG\TRAUMATO\FEVRIER\18-PolesPU-63ETS
%coordonnées des points d'intersection et de liaison

Inter=[
 6179.49459	26418.1829	
6168.09527	26343.6252	
6170.47934	26359.2183	
6394.78465	26199.509	
6346.56471	26208.6384	
5785.88348	26538.344	
5740.23818	26480.61	
5794.50647	26549.2507	
5794.17681	26548.8337	
6692.29077	25874.981	
6720.10791	26107.1491	
6691.17385	25875.6767	
6718.20632	26091.9364	
6240.50649	26440.833	
6110.4548	26392.5526	
6099.06026	26330.9605	
6958.79089	25403.7938	
6310.80475	26215.4088	
6324.00284	26201.883	
6166.89135	25964.9862	
6454.11604	25731.3756	
6384.03262	25930.8675	
6393.9521	25902.6318	
6407.92265	26183.8508	
6475.38364	26103.4492	
6469.35444	26103.358	
6686.13226	26232.3605	
5659.86896	26209.7205	
6108.03744	26379.4858	
5829.28545	25990.924	
5671.2655	26117.7841	
  
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
axis equal
xlabel ('coordonnees x')
ylabel ('coordonnees y')
title ('Dessin3, 26 PE GABRIEL + 3 PE ajoutés au choix intersection et points de liaison','Fontsize',14)






