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
0	0	0	0	1	0	0	0	0	0	0	0	1	0	1	0	1	0	
0	0	0	0	0	0	1	0	1	1	0	0	0	0	0	0	0	0	
0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	1	0	1	
0	0	1	0	0	0	0	0	0	0	0	0	0	0	1	1	0	1	
0	0	0	0	0	0	1	0	0	1	1	0	0	0	0	0	0	0	
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	
0	0	0	0	0	0	0	0	1	1	1	0	0	0	0	0	0	0	
0	0	0	0	0	0	1	0	1	0	1	0	0	0	0	0	0	0	
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	
1	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	
0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	1	0	0	
0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	
1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	1	
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	

];


%tracé des liaisons en noir et des noeuds cercle rouge
gplot (M18T,coord,'k')
hold on
gplot(M18T,coord,'ro')


%noms des Poles, on récupère un vecteur de "handles"
%h=text(coord(:,1)+2,coord(:,2),Pole18);

%on fixe la taille du texte des poles à 10
%for i=1:length(coord)
   set(h(i),'Fontsize',5)
%end


%coordonnées des  points d'équilibre noté de Pt1 à Pt37 dont le point moyen 22
%concernant deux établissements CH G Dron et CH Roubaix regroupés sur ce meme pole
%ablation des points 4 et 6 dont on ne trace pas les perpendiculaires
Pt=[
6170.5432	26359.636	
6473.8849	26338.602	
6361.0708	26205.892	
6457.4554	26255.183	
5760.5527	26643.104	
5779.1131	26529.781	
5624.2327	26561.626	
6693.8897	25809.542	
6502.6878	25813.682	
6606.7651	25823.414	
6699.4417	25941.82	
6709.8173	25864.064	
6770.9961	25940.942	
6678.5423	26018.468	
6128.8631	26399.387	
6146.4658	26339.657	
6106.3913	26370.588	
7093.0516	25904.112	
5967.6168	26506.866	
5804.2756	26392.421	
6027.2423	26306.56	
5673.025	26192.73	
5485.0087	26123.374	
5677.2564	26069.455	
6290.7261	26235.986	
6249.3523	26089.323	
6388.8287	25917.216	
6255.8264	25988.503	
6314.1282	25941.851	
6447.8713	26136.239	
6429.9887	25998.564	
6517.2086	26202.906	
6572.5832	26341.38	
6397.9848	26320.576	
6519.8815	26104.122	
6621.6365	26125.296	
6544.8782	26259.315	
];

%declaration des variables 
xo=Pt(:,1);
yo=Pt(:,2);

%dessin des points de la variable Pt en xo et yo
plot(xo,yo,'k.','markersize',8)

%noms des différents "Points d'équilibre" dans l'ordre des variables	
%nom du fichier "18-PolesPU-63ETS.xls"
Pe=[
 'P1  '	
'P2  '	
'P3  '	
'P4  '	
'P5  '	
'P6  '	
'P7  '	
'P8  '	
'P9  '	
'P10 '	
'P11 '	
'P12 '	
'P13 '	
'P14 '	
'P15 '	
'P16 '	
'P17 '	
'P18 '	
'P19 '	
'P20 '	
'P21 '	
'P22 '	
'P23 '	
'P24 '	
'P25 '	
'P26 '	
'P27 '	
'P28 '	
'P29 '	
'P30 '	
'P31 '	
'P32 '	
'P33 '	
'P34 '	
'P35 '	
'P36 '	
'P37 '	
  
];

%noms des Points d'équilibre formant le point de départ
%de la perpendicualaire, on récupère un vecteur de "handles"
h=text(Pt(:,1)+2,Pt(:,2),Pe);


%on fixe la taille du texte noms des différents "Points d'équilibre" à 10
for i=1:length(Pt)
   set(h(i),'Fontsize',8)
end

%INTERSECTION_DESSIN1 - MATLAB_PROG\TRAUMATO\FEVRIER\18-PolesPU-63ETS
%coordonnées des points d'intersection et de liaison 



Inter=[
6170.47934	26359.2183	
6179.49459	26418.1829	
6481.48025	26279.756	
6459.0526	26453.5159	
6394.78465	26199.509	
6401.73631	26198.1928	
6383.56116	26179.603	
5794.50647	26549.2507	
5785.88348	26538.344	
5794.17681	26548.8337	
5740.23818	26480.61	
6652.12081	25850.7609	
6516.83976	25984.2619	
6462.56707	25707.3199	
6476.80037	25745.053	
6712.90601	26049.5339	
6691.17385	25875.6767	
6718.20632	26091.9364	
%6958.79089	25403.7938	
6341.54007	25713.8077	
6110.4548	26392.5526	
6240.50649	26440.833	
%5016.42494	26343.6252	
6099.06026	26330.9605	
6108.03744	26379.4858	
5829.28545	25990.924	
5659.86896	26209.7205	
5671.2655	26117.7841	
6324.00284	26201.883	
6310.80475	26215.4088	
6146.54738	25934.311	
6384.03262	25930.8675	
6393.9521	25902.6318	
6198.41565	25960.0329	
6407.92265	26183.8508	
6475.38364	26103.4492	
6469.35444	26103.358	
6632.64816	26223.0348	
6459.51448	26449.9374	
6743.6239	26177.1625	
6608.13173	26105.4562	
	];

%declaration des variables 
x1=Inter(:,1);
y1=Inter(:,2);

%graphique des points d'intersection
plot(x1,y1,'m*','markersize',3)

%noms des différents "Points d''intersection" dans l'ordre des variables	
%on supprime le couple 16-1 trop excentré coord 5016.42494	26343.6252	
%13-18 coord 6958.79089	25403.7938	



Pi=[
'1 25  '	
'1 15  '	
'2 4   '	
'2 34  '	
'3 30  '	
'4 3   '	
'4 32  '	
'6 20  '	
'6 5   '	
'6 19  '	
'7 6   '	
'8 10  '	
'8 12  '	
'9 27  '	
'9 10  '	
'11 14 '	
'11 12 '	
'11 13 '	
%'13 18 '	
'14 36 '	
'15 17 '	
'15 19 '	
%'16 1  '	
'16 17 '	
'17 21 '	
'20 22 '	
'22 24 '	
'23 24 '	
'25 26 '	
'25 3  '	
'26 28 '	
'27 29 '	
'27 31 '	
'29 28 '	
'30 32 '	
'30 35 '	
'31 35 '	
'32 37 '	
'33 2  '	
'33 37 '	
'35 36 '	];
%noms des 45 couples d'intersection calculé avec la méthode des VR sur les 40PE 
% on récupère un vecteur de "handles"
h=text(Inter(:,1)+2,Inter(:,2),Pi);


%on fixe la taille du texte noms des différents "Points d'intersection" à 10
for i=1:length(Inter)
   set(h(i),'Fontsize',10)
end


%grid

%SS11
%HAB31

%automatisation du dessin, segment de droite et points d'équilibre
axis equal
xlabel ('coordonnees x')
ylabel ('coordonnees y')
title ('13 Poles - 19 ETS Publics GHM295 37 PE TD et 41 Points intersection','Fontsize',14)






