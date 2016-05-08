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


%coordonnées des  points d'équilibre noté de Pt1 à Pt40 dont le point moyen 22
%concernant deux établissements CH G Dron et CH Roubaix regroupés sur ce meme pole
%ablation des points 4 et 6 dont on ne trace pas les perpendiculaires
Pt=[
6170.5432	26359.636	
6473.8849	26338.602	
6212.9158	26502.379	
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
6291.4009	26533.769	
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
6690.3537	26199.603	
];

%declaration des variables 
xo=Pt(:,1);
yo=Pt(:,2);

%dessin des points de la variable Pt en xo et yo
plot(xo,yo,'k.','markersize',14)

%noms des différents "Points d'équilibre" dans l'ordre des variables	
%nom du fichier "18-PolesPU-63ETS.xls"
Pe=[
'1 '	
'2 '	
'3 '	
'4 '	
'5 '	
'6 '	
'7 '	
'8 '	
'9 '	
'10'	
'11'	
'12'	
'13'	
'14'	
'15'	
'16'	
'17'	
'18'	
'19'	
'20'	
'21'	
'22'	
'23'	
'24'	
'25'	
'26'	
'27'	
'28'	
'29'	
'30'	
'31'	
'32'	
'33'	
'34'	
'35'	
'36'	
'37'	
'38'	
'39'	
'40'	
];

%noms des Points d'équilibre formant le point de départ
%de la perpendicualaire, on récupère un vecteur de "handles"
h=text(Pt(:,1)+2,Pt(:,2),Pe);


%on fixe la taille du texte noms des différents "Points d'équilibre" à 10
for i=1:length(Pt)
   set(h(i),'Fontsize',12)
end

%INTERSECTION_DESSIN1 - MATLAB_PROG\TRAUMATO\FEVRIER\18-PolesPU-63ETS
%coordonnées des points d'intersection et de liaison 
% suppression inter (5 34	16867.8	  26179.6) (26 36	7081.8	27809.2	)



Inter=[
6170.47934	25786.2787	
6179.49459	26418.1829	
6481.48025	26279.756	
6459.0526	26453.5159	
6094.11434	26386.4864	
6362.19108	26647.9987	
6394.78465	26199.509	
6401.73631	26198.1928	
5794.17681	26548.8337	
5794.50647	26549.2507	
5785.88348	26538.344	
5740.23818	26480.61	
6652.12081	25850.7609	
6516.83976	25984.2619	
6476.80037	25745.053	
6462.56707	25707.3199	
6712.90601	26049.5339	
6691.17385	25875.6767	
6718.20632	26091.9364	
6110.4548	26392.5526	
6240.50649	26440.833	
6168.09527	26343.6252	
6099.06026	26330.9605	
6108.03744	26379.4858	
6958.79089	25403.7938	
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
6341.54007	25713.8077	
6655.81147	26175.5022	
	];


%declaration des variables 
xoo=Inter(:,1);
yoo=Inter(:,2);

%graphique des points d'intersection
plot(xoo,yoo,'m*','markersize',3)


%DTP1 droite terminale de coordonnées x0,y0 (points 1 17) et de coordonnées
%x1,y1 (point d'équilibre P1)
x1=linspace(6168.09527,6170.54319,25);
y1=6.54054054*(x1)-13999.052;
p=plot(x1,y1,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP2 droite terminale de coordonnées x0,y0 (point 35 2) et de coordonnées
%x1,y1 (point d'équilibre P2)
x2=linspace(6459.51448,6473.88488	,25);   
y2=-7.74757282*(x2)+	76495.4962	;
p=plot(x2,y2,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end



%DTP4 droite terminale de coordonnées x0,y0 (point 4 5 27) et de coordonnées
%x1,y1 (point d'équilibre P4)
x4=linspace(6401.73631,6310.80475,25);	%	6361.07077
y4=-0.18932874*(x4)+	27410.2255;
p=plot(x4,y4,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP5 droite terminale de coordonnées x0,y0 (point 2 5 ) et de coordonnées
%x1,y1 (point d'équilibre P5)
x5=linspace(6481.48025,6457.45537,25);		
y5=1.02281369*(x5)+19650.4093;
p=plot(x5,y5,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP6 droite terminale de coordonnées x0,y0 (point 7 6  ) et de coordonnées
%x1,y1 (point d'équilibre P6)
x6=linspace(5785.88348,5760.55268,25); %
y6=-4.13569322*(x6)+50466.983;		
p=plot(x6,y6,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP7 droite terminale de coordonnées x0,y0 (point 7 8 ) et de coordonnées
%x1,y1 (point d'équilibre P7)
x7=linspace(5740.23818,5779.11313,25); 
y7=1.26484018*(x7)+19220.1261;		
p=plot(x7,y7,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end



%DTP11 droite terminale de coordonnées x0,y0 (point 9 10 11) et de coordonnées
%x1,y1 (point d'équilibre P11)
x11=linspace(6652.12081,6476.80037,25);	
y11=0.60294118*(x11)+21839.9233;	
p=plot(x11,y11,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP13 droite terminale de coordonnées x0,y0 (point 9 12 13) et de coordonnées
%x1,y1 (point d'équilibre P13)
x13=linspace(6516.83976,6709.8173	,25); 
y13=-0.62285714*(x13)+30043.3221;	
p=plot(x13,y13,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP14 droite terminale de coordonnées x0,y0 (point 12 14 19) et de coordonnées
%x1,y1 (point d'équilibre P14)
x14=linspace(6718.20632,6958.79089,25); 	
y14=-2.86029412*(x14)+45307.9824;	
p=plot(x14,y14,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP15 droite terminale de coordonnées x0,y0 (point 12 15 38) et de coordonnées
%x1,y1 (point d'équilibre P15)
x15=linspace(6341.54007,	6712.90601,25); 	
y15=0.90403071*(x15)+19980.8607;	
p=plot(x15,y15,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP16 droite terminale de coordonnées x0,y0 (point 1 3 16) et de coordonnées
%x1,y1 (point d'équilibre P16)
x16=linspace(	6179.49459,6094.11434,25); 	
y16=0.37123991*(x16)+24124.1079;		
p=plot(x16,y16,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


	
%DTP17 droite terminale de coordonnées x0,y0 (point 1 17) et de coordonnées
%x1,y1 (point d'équilibre P17)


%DTP18 droite terminale de coordonnées x0,y0 (point 16 17 18) et de coordonnées
%x1,y1 (point d'équilibre P18)
x18=linspace(6110.4548,6099.06026,25); 	
y18=5.40540541*(x18)-6636.93278;		
p=plot(x18,y18,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP20 droite terminale de coordonnées x0,y0 (point 7 16 20) et de coordonnées
%x1,y1 (point d'équilibre P20)
x20=linspace(5794.17681,6240.50649,25); 	
y20=-0.24197531*(x20)+27950.8815;		
p=plot(x20,y20,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP21 droite terminale de coordonnées x0,y0 (point 7 21 ) et de coordonnées
%x1,y1 (point d'équilibre P21)
x21=linspace(5794.50647,5804.27562,25);  
y21=-16.0535714*(x21)+119571.774	;	
p=plot(x21,y21,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP22 droite terminale de coordonnées x0,y0 (point 18 22) et de coordonnées
%x1,y1 (point d'équilibre P22)
x22=linspace(6108.03744,6027.24232,25);	
y22=0.90260546*(x22)+20866.3379;
p=plot(x22,y22,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP23 droite terminale de coordonnées x0,y0 (point 21 23) et de coordonnées
%x1,y1 (point d'équilibre P23)
x23=linspace(5829.28545,5673.02502,25);	
y23=-1.29147142*(x23)+	33519.2795;
p=plot(x23,y23,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP25 droite terminale de coordonnées x0,y0 (point 23 24  25 ) et de coordonnées
%x1,y1 (point d'équilibre P25)
x25=linspace(5659.86896,5677.25643,25);  
y25= -8.06704981*(x25)+	71868.1653	;
p=plot(x25,y25,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP26 droite terminale de coordonnées x0,y0 (point 3 26) et de coordonnées
%x1,y1 (point d'équilibre P26)
x26=linspace(6362.19108,6291.40093,25);
y26=1.61363636*(x26)+	16381.7358;
p=plot(x26,y26,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP27 droite terminale de coordonnées x0,y0 (point 1 27) et de coordonnées
%x1,y1 (point d'équilibre P27)
x27=linspace(6170.47934,6290.72614,25);
y27=3.73986851*(x27)+2709.49731;
p=plot(x27,y27,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP28 droite terminale de coordonnées x0,y0 (point 27 28) et de coordonnées
%x1,y1 (point d'équilibre P28)
x28=linspace(6324.00284,6249.35225,25);
y28=1.50782609*(x28)+16666.3865	;
p=plot(x28,y28,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP29 droite terminale de coordonnées x0,y0 (point 10 29) et de coordonnées
%x1,y1 (point d'équilibre P29)
x29=linspace(6462.56707,6388.82866,25);
y29=-2.84649123*(x29)+44102.9603	;
p=plot(x29,y29,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP30 droite terminale de coordonnées x0,y0 (point 28 30 31) et de coordonnées
%x1,y1 (point d'équilibre P30)
x30=linspace(6146.54738,6255.82637,25);		
y30=0.49590723*(x30)+22886.1937	;
p=plot(x30,y30,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP31 droite terminale de coordonnées x0,y0 (point 29 31) et de coordonnées
%x1,y1 (point d'équilibre P31)
x31=linspace(6384.03262,6314.12816,25);		
y31=-0.15712682*(x31)+26933.9702	;
p=plot(x31,y31,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP32 droite terminale de coordonnées x0,y0 (point 4 32) et de coordonnées
%x1,y1 (point d'équilibre P32)
x32=linspace(6394.78465,6447.87133,25);		
y32=-1.1918239*(x32)+	33820.9661	;
p=plot(x32,y32,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP33 droite terminale de coordonnées x0,y0 (point 29 33) et de coordonnées
%x1,y1 (point d'équilibre P33)
x33=linspace(6393.9521,6429.98874,25);		
y33=2.66206897*(x33)+	8881.49034	;
p=plot(x33,y33,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP34 droite terminale de coordonnées x0,y0 (point 32 34) et de coordonnées
%x1,y1 (point d'équilibre P34)
x34=linspace(	6517.20861,  6407.92265,25);
y34=0.17436381*(x34)+	25066.541	;
p=plot(x34,y34,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP36 droite terminale de coordonnées x0,y0 (point 2 36) et de coordonnées
%x1,y1 (point d'équilibre P36)
x36=linspace(6459.0526,  6397.98477,25);
y36=2.17692308*(x36)+	12392.6552	;
p=plot(x36,y36,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

	%DTP37 droite terminale de coordonnées x0,y0 (point 32 33 37) et de coordonnées
%x1,y1 (point d'équilibre P37)
x37=linspace(6469.35444, 6519.88153,25);
y37=0.01511879*(x37)+26005.5492;
p=plot(x37,y37,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP38 droite terminale de coordonnées x0,y0 (point 37 38) et de coordonnées
%x1,y1 (point d'équilibre P38)
x38=linspace(6608.13173, 6621.63647,25);
y38=1.46909492*(x38)+16397.4834	;
p=plot(x38,y38,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP39 droite terminale de coordonnées x0,y0 (point 34 35 39) et de coordonnées
%x1,y1 (point d'équilibre P39)
x39=linspace(6544.87818, 6743.6239,25);
y39=-0.41335453*(x39)+28964.6699	;
p=plot(x39,y39,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP40 droite terminale de coordonnées x0,y0 (point 38 40) et de coordonnées
%x1,y1 (point d'équilibre P40)
x40=linspace(6655.81147, 6690.35369,25);
y40=0.69771987*(x40)+21531.6103	;
p=plot(x40,y40,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end
		
	

	

	



grid
ss11
hab31

%automatisation du dessin, segment de droite et points d'équilibre
axis equal
xlabel ('coordonnees x')
ylabel ('coordonnees y')
title ('Etape 3, 40 PE 43 Points intersection et points de liaison')






