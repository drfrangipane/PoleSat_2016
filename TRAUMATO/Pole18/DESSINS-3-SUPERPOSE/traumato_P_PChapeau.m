clear all
close all
% dessin de mod�le P de l'attraction observ�e
%sp�cialit� �tudi�e traumato-orthop�die - GHM 295, 18 p�les hospitaliers publics pour 19 �tablissements
%r�gion Nord - Pas-de-Calais
%�dition du programme ann�e 2002, base de donn�es r�gionale, GTIM-ARH, ann�e 1999

%coordonn�es des projections cartographiques centr�es pour finaliser le dessin
%"18poles.xls"
centre=[	
   6222    26333
   5582    26605
   6500    25704
    6716    25972
    6124    26375
    7067    25746
    5825    26410
    5471    26024
    5471    26326
    5801    26640
    5947    26163
    6180    25829
    6253    26038
    6406    26257
    6462    26153
    6434    25937
    6535    26403
    6810    25902];

%declaration des variables 
c=centre(:,1);
d=centre(:,2);

%noms des diff�rents poles hospitaliers publics
P18=[
'1  -Armenti�res      '	
'2  -Calais           '	
'3  -Cambrai          '	
'4  -Denain           '	
'5  -Hazebrouck       '	
'6  -Maubeuge         '	
'7  -Saint-Omer       '	
'8  -Berck-sur-Mer    '	
'9  -Boulogne-sur-Mer '	
'10 -Dunkerque        '	
'11 -B�thune          '	
'12 -Arras            '	
'13 -Lens             '	
'14 -Lille            '	
'15 -Seclin           '	
'16 -Douai            '	
'17 -Roubaix-Tourcoing'	
'18 -Valenciennes     '	
];

%noms des Poles, on r�cup�re un vecteur de "handles"
h=text(centre(:,1)+2,centre(:,2),P18);

%on fixe la taille du texte des poles � 12
for i=1:length(centre)
   set(h(i),'Fontsize',10)
end
hold on

%coordonn�es des projections cartographiques
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

%noms des diff�rents poles hospitaliers publics
Pole18=[
'1  -Armenti�res      '	
'2  -Calais           '	
'3  -Cambrai          '	
'4  -Denain           '	
'5  -Hazebrouck       '	
'6  -Maubeuge         '	
'7  -Saint-Omer       '	
'8  -Berck-sur-Mer    '	
'9  -Boulogne-sur-Mer '	
'10 -Dunkerque        '	
'11 -B�thune          '	
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

%trac� des liaisons en noir et des noeuds cercle rouge
%gplot (M18T,coord,'k')
hold on
gplot(M18T,coord,'ro')

%noms des Poles, on r�cup�re un vecteur de "handles"
h=text(coord(:,1)+2,coord(:,2),Pole18);

%on fixe la taille du texte des poles � 10
for i=1:length(coord)
   set(h(i),'Fontsize',10)
end

%traumato matrice de Gabriel
%coordonn�es des projections cartographiques
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

%trac� du sch�ma de connexion de Gabriel trait continu rouge
gplot(mtr_adj1,coord1,'r')

%coordonn�es des  points d'�quilibre not� de Pt1 � Pt29 dont le point moyen 22
%concernant deux �tablissements CH G Dron et CH Roubaix regroup�s sur ce meme pole
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

%noms des diff�rents 29 "Points d'�quilibre" dans l'ordre des variables	
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

%noms des Points d'�quilibre formant le point de d�part
%de la perpendicualaire, on r�cup�re un vecteur de "handles"
h=text(Pt(:,1)+2,Pt(:,2),Pe);


%on fixe la taille du texte noms des diff�rents "Points d'�quilibre" � 10
for i=1:length(Pt)
   set(h(i),'Fontsize',9)
end

%INTERSECTION_DESSIN1 - MATLAB_PROG\TRAUMATO\FEVRIER\18-PolesPU-63ETS
%coordonn�es des points d'intersection et de liaison

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
a=Inter(:,1);
b=Inter(:,2);

%graphique des points d'intersection
plot(a,b,'m*','markersize',3)

%couleur bleue pour le modele observ� 	
%DTP1 droite terminale de coordonn�es x0,y0 (points 1 11 10) et de coordonn�es
%x1,y1 (point d'�quilibre P1)
x1=linspace(6168.09527,6179.49459);
y1=6.54054054*(x1)-13999.052;
p=plot(x1,y1,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end
		
%DTP2 droite terminale de coordonn�es x0,y0 (point 17 2) et de coordonn�es
%x1,y1 (point d'�quilibre P2)
x2=linspace(6310.80475,6394.78465,25);%6027.2423  6361.0708
y2=		-0.18932874	*(x2)+	27410.2255			;
p=plot(x2,y2,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP3 droite terminale de coordonn�es x0,y0 (point 3 4 ) et de coordonn�es
%x1,y1 (point d'�quilibre P3)
x3=linspace(5756,5785.88348,25);
y3=-4.13569322*(x3)+	50466.983;
p=plot(x3,y3,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP4 droite terminale de coordonn�es x0,y0 (point 4 5 ) et de coordonn�es
%x1,y1 (point d'�quilibre P4)
x4=linspace(5740.23818,5794.17681,25);%5756  5785.88348
y4=1.26484018*(x4)+	19220.1261;
p=plot(x4,y4,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP5 droite terminale de coordonn�es x0,y0 (point 4 5 ) et de coordonn�es
%x1,y1 (point d'�quilibre P5)
x5=linspace(5740.23818,5564,25);
y5=-0.69838057*(x5)+30489.4808;
p=plot(x5,y5,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP6 droite terminale de coordonn�es x0,y0 (point 6 8 ) et de coordonn�es
%x1,y1 (point d'�quilibre P6)
x6=linspace(6692.29077,6454.11604,25); %6606.7651
y6=0.60294118*(x6)+21839.9233;
p=plot(x6,y6,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP7 droite terminale de coordonn�es x0,y0 (point 7 26 ) et de coordonn�es
%x1,y1 (point d'�quilibre P7)
x7=linspace(6723,6691.17385,25); %6720.10791    6699.4417
y7=8*(x7)-27653.7141;
p=plot(x7,y7,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP8 droite terminale de coordonn�es x0,y0 (point 7 8 9) et de coordonn�es
%x1,y1 (point d'�quilibre P8)
x8=linspace(6691.17385,6822.38673,25);%6709.8173
y8=-0.62285714*(x8)+ 30043.3221;
p=plot(x8,y8,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP9 droite terminale de coordonn�es x0,y0 (point 9 7 8) et de coordonn�es
%x1,y1 (point d'�quilibre P9)
x9=linspace(6718.20632,6876 ,25);  %  6770.99611 6822.38673 
y9=-2.86029412*(x9)+ 45307.9824;
p=plot(x9,y9,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP10 droite terminale de coordonn�es x0,y0 (point 1 10) et de coordonn�es
%x1,y1 (point d'�quilibre P10)
x10=linspace(6110.4548,6280,25);%,6128.86312
y10=0.37123991*(x10)+24124.1079;
p=plot(x10,y10,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP11 droite terminale de coordonn�es x0,y0 (point 1 11 12) et de coordonn�es
%x1,y1 (point d'�quilibre P11)
x11=linspace(6099.06026,6168.09527,25);
y11=0.18345324*(x11)+25212.0682;
p=plot(x11,y11,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP12 droite terminale de coordonn�es x0,y0 (point 11 10 12) et de coordonn�es
%x1,y1 (point d'�quilibre P12)
x12=linspace(6110.4548,6099.06026,25); %  6106.39127
y12=5.40540541*(x12)-6636.93278;
p=plot(x12,y12,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP13 droite terminale de coordonn�es x0,y0 (point 13 9) et de coordonn�es
%x1,y1 (point d'�quilibre P13)
x13=linspace(7018 ,7102 ,25);	%6958.79089	7093.05161   
y13=3.72647059*(x13)-527.935769;
p=plot(x13,y13,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP14 droite terminale de coordonn�es x0,y0 (point 4 10 14) et de coordonn�es
%x1,y1 (point d'�quilibre P14)
x14=linspace(6240.50649,5794.17681,25);%,5967.61685
y14=-0.24197531*(x14)+ 27950.8815;
p=plot(x14,y14,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP15 droite terminale de coordonn�es x0,y0 (point 4 15 27 ) et de coordonn�es
%x1,y1 (point d'�quilibre P15)
x15=linspace(5794.50647,5829.28545,25);%5821.6643
y15=-16.0535714*(x15)+	119571.774;
p=plot(x15,y15,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP16 droite terminale de coordonn�es x0,y0 (point 16 28 ) et de coordonn�es
%x1,y1 (point d'�quilibre P16)
x16=linspace(5671.2655,5453,25); 
y16=-0.03001017	*(x16)+ 26287.9797;
p=plot(x16,y16,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end
	
%DTP17 droite terminale de coordonn�es x0,y0 (point 1 18 17) et de coordonn�es
%x1,y1 (point d'�quilibre P17)
x17=linspace(6170.47934,6324.00284,25);  	%6310.80475
y17=-1.02482877*(x17)+32682.903;
p=plot(x17,y17,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP18 droite terminale de coordonn�es x0,y0 (point 17 18) et de coordonn�es
%x1,y1 (point d'�quilibre P18)
x18=linspace(6324.00284,6069  ,25);	
y18=1.50782609*(x18)+16666.3865	;
p=plot(x18,y18,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP19 droite terminale de coordonn�es x0,y0 (point 19 6 20) et de coordonn�es
%x1,y1 (point d'�quilibre P19)
x19=linspace(6486	,6384.03262,25);%6454.11604
y19=-2.84649123*(x19)+44102.9603;
p=plot(x19,y19,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP20 droite terminale de coordonn�es x0,y0 (point 18 20) et de coordonn�es
%x1,y1 (point d'�quilibre P20)
x20=linspace(6166.89135,6384.03262,25);	
y20=-0.15712682*(x20)+26933.9702;
p=plot(x20,y20,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP21 droite terminale de coordonn�es x0,y0 (point 2 21 25) et de coordonn�es
%x1,y1 (point d'�quilibre P21)
x21=linspace(6394.78465 ,6475.38364 	,25);    %6394.78465 6385
y21=-1.1918239*(x21)+	33820.9661	;
p=plot(x21,y21,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP22 droite terminale de coordonn�es x0,y0 (point 19 21 22 26) et de coordonn�es
%x1,y1 (point d'�quilibre P22)
x22=linspace(6393.9521,6471.24263,25);%6469.35444
y22=2.66206897*(x22)+	8881.49034	;		
p=plot(x22,y22,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP23 droite terminale de coordonn�es x0,y0 (point 21 23) et de coordonn�es
%x1,y1 (point d'�quilibre P23)
x23=linspace(6407.92265,6671,25);	%6517.20861
y23=0.17436381*(x23)+25066.541;
p=plot(x23,y23,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP24 droite terminale de coordonn�es x0,y0 (point 24 23) et de coordonn�es
%x1,y1 (point d'�quilibre P24)
x24=linspace(6649 ,6490,25);	
y24=-0.96010522*(x24)+32651.7509;
p=plot(x24,y24,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP25 droite terminale de coordonn�es x0,y0 (point 2 25 ) et de coordonn�es
%x1,y1 (point d'�quilibre P25)
x25=linspace(6397.98477,6346.56471,25);
y25=2.17692308*(x25)+	12392.6552;
p=plot(x25,y25,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP26 droite terminale de coordonn�es x0,y0 (point 21 26) et de coordonn�es
%x1,y1 (point d'�quilibre P26)
x26=linspace(6475.38364,6720.10791,25);%	6519.88153
y26=0.01511879*(x26)+26005.5492;
p=plot(x26,y26,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP27 droite terminale de coordonn�es x0,y0 (point 15  27 28) et de coordonn�es
%x1,y1 (point d'�quilibre P27)
x27=linspace(5659.86896,5982  ,25);%	5671.2655 6519.88153 5829.28545
y27=-1.29147142*(x27)+33519.2795;		
p=plot(x27,y27,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP28 droite terminale de coordonn�es x0,y0 (point 27 28) et de coordonn�es
%x1,y1 (point d'�quilibre P28)
x28=linspace(5659.86896,5671.2655,25);%	
y28=-8.06704981*(x28)+	71868.1653	;		
p=plot(x28,y28,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP29 droite terminale de coordonn�es x0,y0 (point 12 15 29) et de coordonn�es
%x1,y1 (point d'�quilibre P28)
x29=linspace(6108.03744,	5821.20823,25);%6027.2423
y29=0.90260546*(x29)+	20866.3379		;		
p=plot(x29,y29,'-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%grid
%ss11
hab31
figure(1)

%automatisation du dessin, segment de droite et points d'�quilibre
axis equal
xlabel ('coordonnees x')
ylabel ('coordonnees y')
title ('Aires d''attraction observ�e "mod�le P" pond�ration observ�e - traumato-orthop�die GHM295','Fontsize',14)

clear all

% dessin de mod�le P Chapeau de l'attraction th�orique
%sp�cialit� �tudi�e traumato-orthop�die - GHM 295, 18 p�les hospitaliers publics pour 19 �tablissements
%r�gion Nord - Pas-de-Calais
%�dition du programme ann�e 2002, base de donn�es r�gionale, GTIM-ARH, ann�e 1999

%coordonn�es des projections cartographiques
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


%noms des diff�rents poles hospitaliers publics
Pole18=[
'1  -Armenti�res      '	
'2  -Calais           '	
'3  -Cambrai          '	
'4  -Denain           '	
'5  -Hazebrouck       '	
'6  -Maubeuge         '	
'7  -Saint-Omer       '	
'8  -Berck-sur-Mer    '	
'9  -Boulogne-sur-Mer '	
'10 -Dunkerque        '	
'11 -B�thune          '	
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

%trac� des liaisons en noir et des noeuds cercle rouge
gplot (M18T,coord,'k')
hold on
gplot(M18T,coord,'ro')

%noms des Poles, on r�cup�re un vecteur de "handles"
h=text(coord(:,1)+2,coord(:,2),Pole18);

%on fixe la taille du texte des poles � 10
for i=1:length(coord)
   set(h(i),'Fontsize',7)
end

%traumato matrice de Gabriel
%coordonn�es des projections cartographiques
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

%trac� du sch�ma de connexion de Gabriel trait continu rouge
gplot(mtr_adj1,coord1,'r')

%coordonn�es des  points d'�quilibre chapeau  not� de Pt1 � Pt29 dont le point moyen 22
%concernant deux �tablissements CH G Dron et CH Roubaix regroup�s sur ce meme pole
Pt=[
6192.7939	26356.234	
6367.4492	26239.5817	
5763.4634	26643.8082	
5798.7833	26514.2291	
5615.2043	26548.6983	
6600.4812	25833.836	
6693.59998	25942.55	
6712.26313	25867.9913	
6777.53284	25943.2274	
6126.47547	26405.818	
6147.48155	26334.1202	
6091.86954	26373.2741	
7060.05125	25912.9681	
5963.67441	26490.5728	
5805.86386	26392.5199	
5484.61275	26110.1809	
6312.59714	26257.327	
6247.46502	26090.5745	
6389.32707	25917.3907	
6313.96892	25940.8379	
6449.71225	26137.7836	
6431.88247	25997.8524	
6515.77102	26211.1511	
6561.42738	26329.7602	
6403.92737	26317.8461	
6519.87952	26104.2549	
5649.04903	26174.165	
5623.67293	26062.8126	
6016.41091	26318.5599	];

%declaration des variables 
xo=Pt(:,1);
yo=Pt(:,2);

%dessin des points de la variable Pt en xo et yo
plot(xo,yo,'k*','markersize',5)

%noms des diff�rents 29 "Points d'�quilibre" dans l'ordre des variables	
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

%noms des Points d'�quilibre formant le point de d�part
%de la perpendicualaire, on r�cup�re un vecteur de "handles"
h=text(Pt(:,1)+2,Pt(:,2),Pe);


%on fixe la taille du texte noms des diff�rents "Points d'�quilibre" � 10
for i=1:length(Pt)
   set(h(i),'Fontsize',9)
end

%INTERSECTION_DESSIN1 - MATLAB_PROG\TRAUMATO\FEVRIER\18-PolesPU-63ETS
%dessin3-18-PU-chapeau
%coordonn�es des points d'intersection et de liaison

Inter=[
6204.82181	26434.9033	
6190.62287	26342.0346	
6195.94914	26376.8713	
6363.70353	26240.2909	
6367.93342	26239.49	
5795.72927	26510.3663	
5751.03578	26453.8362	
5798.319	   26513.6419	
5809.56314	26527.8639	
6685.14398	25884.8826	
6714.18029	26107.1925	
6686.30144	25884.1617	
6715.7679	26119.8933	
6200.44776	26433.2795	
6095.78216	26394.4235	
6082.41786	26322.184	
6941.96195	25472.9118	
6321.40655	26248.2989	
6339.66147	26229.5907	
6163.80675	25964.4324	
6450.45837	25743.381	
6385.01141	25929.6752	
6395.28574	25900.4294	
6404.4409	26191.7391	
6478.37112	26103.6273	
6471.57797	26103.5246	
6658.96053	26236.1181	
5602.4017	26234.4086	
6094.84437	26389.3543	
5834.37449	25934.8224	
5618.29843	26106.169	
5821.43346	26142.5722	
6473.70541	26109.188	];

%declaration des variables 
a=Inter(:,1);
b=Inter(:,2);

%graphique des points d'intersection
plot(a,b,'m*','markersize',3)

%couleur jaune pour le modele estime	
%DTP1 droite terminale de coordonn�es x0,y0 (points 1 11 10) et de coordonn�es
%x1,y1 (point d'�quilibre P1)
x1=linspace(6204.82181,6190.62287, 25);
y1=6.54054054*(x1)-14147.9853;
p=plot(x1,y1,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end
		
%DTP2 droite terminale de coordonn�es x0,y0 (point 17 2) et de coordonn�es
%x1,y1 (point d'�quilibre P2)
x2=linspace(6321.40655,6367.4492,25);%
y2=		-0.18932874	*(x2)+27445.1229	;
p=plot(x2,y2,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP3 droite terminale de coordonn�es x0,y0 (point 3 4 ) et de coordonn�es
%x1,y1 (point d'�quilibre P3)
x3=linspace(5795.72927,5763.4634,25);
y3=-4.13569322*(x3)+	50479.7246;
p=plot(x3,y3,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP4 droite terminale de coordonn�es x0,y0 (point 4 5 ) et de coordonn�es
%x1,y1 (point d'�quilibre P4)
x4=linspace(5751.03578,5798.7833,25);%
y4=1.26484018*(x4)+	19179.695;
p=plot(x4,y4,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP5 droite terminale de coordonn�es x0,y0 (point 4 5 ) et de coordonn�es
%x1,y1 (point d'�quilibre P5)
x5=linspace(5751.03578,5564,25);
y5=-0.69838057*(x5)+30470.2478;
p=plot(x5,y5,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP6 droite terminale de coordonn�es x0,y0 (point 6 8 19 ) et de coordonn�es
%x1,y1 (point d'�quilibre P6)
x6=linspace(6685.14398,6450.45837 ,25); %6600.4812
y6=0.60294118*(x6)+21854.134;
p=plot(x6,y6,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP7 droite terminale de coordonn�es x0,y0 (point 7 26 ) et de coordonn�es
%x1,y1 (point d'�quilibre P7)
x7=linspace(6686.30144 ,6714.18029 ,25); % 6693.6
y7=8*(x7)-27606.2498;
p=plot(x7,y7,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP8 droite terminale de coordonn�es x0,y0 (point 7 8 9) et de coordonn�es
%x1,y1 (point d'�quilibre P8)
x8=linspace(6686.30144,6829.32865,25);%6712.26313  
y8=-0.62285714*(x8)+ 30048.7723;
p=plot(x8,y8,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP9 droite terminale de coordonn�es x0,y0 (point 9 7 8) et de coordonn�es
%x1,y1 (point d'�quilibre P9)
x9=linspace(6890,6715.7679,25);  %   6829.32865   6914 
y9=-2.86029412*(x9)+ 45328.9647;
p=plot(x9,y9,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP10 droite terminale de coordonn�es x0,y0 (point 1 10) et de coordonn�es
%x1,y1 (point d'�quilibre P10)
x10=linspace(6095.78216 ,6274,25);%6126.47547  6204.82181
y10=0.37123991*(x10)+24131.4258;
p=plot(x10,y10,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP11 droite terminale de coordonn�es x0,y0 (point 1 11 12) et de coordonn�es
%x1,y1 (point d'�quilibre P11)
x11=linspace(6082.41786,6190.62287,25);
y11=0.18345324*(x11)+25206.3448;
p=plot(x11,y11,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP12 droite terminale de coordonn�es x0,y0 (point 11 10 12) et de coordonn�es
%x1,y1 (point d'�quilibre P12)
x12=linspace(6095.78216,6082.41786,25); %  6106.39127
y12=5.40540541*(x12)-6555.75038;
p=plot(x12,y12,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP13 droite terminale de coordonn�es x0,y0 (point 13 9) et de coordonn�es
%x1,y1 (point d'�quilibre P13)
x13=linspace(6987 ,7071 ,25);	% 6941.96195   7060.05125
y13=3.72647059*(x13)-396.105235;
p=plot(x13,y13,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP14 droite terminale de coordonn�es x0,y0 (point 4 10 14) et de coordonn�es
%x1,y1 (point d'�quilibre P14)
x14=linspace(5809.56314,6200.44776,25);%
y14=-0.24197531*(x14)+ 27933.6348;
p=plot(x14,y14,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP15 droite terminale de coordonn�es x0,y0 (point 4 15 27 ) et de coordonn�es
%x1,y1 (point d'�quilibre P15)
x15=linspace(5798.319,5834.37449,25);%
y15=-16.0535714*(x15)+	119597.37;
p=plot(x15,y15,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP16 droite terminale de coordonn�es x0,y0 (point 16 28 ) et de coordonn�es
%x1,y1 (point d'�quilibre P16)
x16=linspace(5618.29843,5453 ,25); 5484.61275
y16=-0.03001017	*(x16)+ 26274.7751;
p=plot(x16,y16,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end
		
%DTP17 droite terminale de coordonn�es x0,y0 (point 1 18 17) et de coordonn�es
%x1,y1 (point d'�quilibre P17)
x17=linspace(6195.94914,6339.66147,25);  	%
y17=-1.02482877*(x17)+32726.6582;
p=plot(x17,y17,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP18 droite terminale de coordonn�es x0,y0 (point 17 18) et de coordonn�es
%x1,y1 (point d'�quilibre P18)
x18=linspace(6058 , 	6339.66147,25);6247.46502
y18=1.50782609*(x18)+16670.4838	;
p=plot(x18,y18,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP19 droite terminale de coordonn�es x0,y0 (point 19 6 20) et de coordonn�es
%x1,y1 (point d'�quilibre P19)
x19=linspace(6497,6385.01141,25);% 6450.45837
y19=-2.84649123*(x19)+44104.5542;
p=plot(x19,y19,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP20 droite terminale de coordonn�es x0,y0 (point 18 20) et de coordonn�es
%x1,y1 (point d'�quilibre P20)
x20=linspace(	6385.01141,6163.80675,25);6313.96892
y20=-0.15712682*(x20)+26932.9318;
p=plot(x20,y20,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP21 droite terminale de coordonn�es x0,y0 (point 2 21 25) et de coordonn�es
%x1,y1 (point d'�quilibre P21)
x21=linspace(6363.70353 ,6473.70541 	,25);    %6367.93342   6363.70353
y21=-1.1918239*(x21)+	33824.7048	;
p=plot(x21,y21,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP22 droite terminale de coordonn�es x0,y0 (point 19 21 22 26) et de coordonn�es
%x1,y1 (point d'�quilibre P22)
x22=linspace(6395.28574,6478.37112,25);%
y22=2.66206897*(x22)+	8875.73774	;		
p=plot(x22,y22,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP23 droite terminale de coordonn�es x0,y0 (point 21 23) et de coordonn�es
%x1,y1 (point d'�quilibre P23)
x23=linspace(6404.4409,6657,25);	%6517.20861   6515.77102
y23=0.17436381*(x23)+25075.0364;
p=plot(x23,y23,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP24 droite terminale de coordonn�es x0,y0 (point 24 23) et de coordonn�es
%x1,y1 (point d'�quilibre P24)
x24=linspace(6658.96053,	6471,25); 6561.42738
y24=-0.96010522*(x24)+32629.4209;
p=plot(x24,y24,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP25 droite terminale de coordonn�es x0,y0 (point 2 25 ) et de coordonn�es
%x1,y1 (point d'�quilibre P25)
x25=linspace(6367.93342,6403.92737,25);
y25=2.17692308*(x25)+	12376.9888;
p=plot(x25,y25,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP26 droite terminale de coordonn�es x0,y0 (point 21 26) et de coordonn�es
%x1,y1 (point d'�quilibre P26)
x26=linspace(6714.18029 ,6478.37112	 ,25);%6519.87952
y26=0.01511879*(x26)+26005.6822;
p=plot(x26,y26,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP27 droite terminale de coordonn�es x0,y0 (point 15  27 28) et de coordonn�es
%x1,y1 (point d'�quilibre P27)
x27=linspace(	5944 ,5602.4017 ,25);%  5834.37449
y27=-1.29147142*(x27)+33469.7503;		
p=plot(x27,y27,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP28 droite terminale de coordonn�es x0,y0 (point 27 28) et de coordonn�es
%x1,y1 (point d'�quilibre P28)
x28=linspace(5602.4017,5618.29843 ,25);%	5623.67293
y28=-8.06704981*(x28)+	71429.2622	;		
p=plot(x28,y28,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end

%DTP29 droite terminale de coordonn�es x0,y0 (point 12 15 29) et de coordonn�es
%x1,y1 (point d'�quilibre P29)
x29=linspace(5821.43346,	6094.84437,25);%
y29=0.90260546*(x29)+	20888.1145	;		
p=plot(x29,y29,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',2)
end
%grid
%ss11
hab31
figure(1)

%automatisation du dessin, segment de droite et points d'�quilibre
axis equal
xlabel ('coordonnees x')
ylabel ('coordonnees y')
title ('Aires d''attraction th�orique "mod�le P Chapeau", selon K-Means traumato-orthop�die-GHM295','Fontsize',14 )









