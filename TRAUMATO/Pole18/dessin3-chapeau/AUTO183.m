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
%gplot (M18T,coord,'k')
hold on
%gplot(M18T,coord,'ro')


%noms des Poles, on récupère un vecteur de "handles"
%h=text(coord(:,1)+2,coord(:,2),Pole18);

%on fixe la taille du texte des poles à 10
%for i=1:length(coord)
   %set(h(i),'Fontsize',5)
%end

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



%coordonnées des  points d'équilibre chapeau  noté de Pt1 à Pt29 dont le point moyen 22
%concernant deux établissements CH G Dron et CH Roubaix regroupés sur ce meme pole
%
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
%dessin3-18-PU-chapeau
%coordonnées des points d'intersection et de liaison

Inter=[
6204.82181	26434.9033	
6190.62287	26342.0346	
6195.94914	26376.8713	
6363.70353	26240.2909	
6367.93342	26239.49	
5795.72927	26510.3663	
5751.03578	26453.8362	
5798.319	26513.6419	
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

	
%DTP1 droite terminale de coordonnées x0,y0 (points 1 11 10) et de coordonnées
%x1,y1 (point d'équilibre P1)
x1=linspace(6204.82181,6190.62287, 25);
y1=6.54054054*(x1)-14147.9853;
p=plot(x1,y1,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end
		
%DTP2 droite terminale de coordonnées x0,y0 (point 17 2) et de coordonnées
%x1,y1 (point d'équilibre P2)
x2=linspace(6321.40655,6367.4492,25);%
y2=		-0.18932874	*(x2)+27445.1229	;
p=plot(x2,y2,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end



%DTP3 droite terminale de coordonnées x0,y0 (point 3 4 ) et de coordonnées
%x1,y1 (point d'équilibre P3)
x3=linspace(5795.72927,5763.4634,25);
y3=-4.13569322*(x3)+	50479.7246;
p=plot(x3,y3,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP4 droite terminale de coordonnées x0,y0 (point 4 5 ) et de coordonnées
%x1,y1 (point d'équilibre P4)
x4=linspace(5751.03578,5798.7833,25);%
y4=1.26484018*(x4)+	19179.695;
p=plot(x4,y4,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP5 droite terminale de coordonnées x0,y0 (point 4 5 ) et de coordonnées
%x1,y1 (point d'équilibre P5)
x5=linspace(5751.03578,5564,25);
y5=-0.69838057*(x5)+30470.2478;
p=plot(x5,y5,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP6 droite terminale de coordonnées x0,y0 (point 6 8 19 ) et de coordonnées
%x1,y1 (point d'équilibre P6)
x6=linspace(6685.14398,6450.45837 ,25); %6600.4812
y6=0.60294118*(x6)+21854.134;
p=plot(x6,y6,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP7 droite terminale de coordonnées x0,y0 (point 7 26 ) et de coordonnées
%x1,y1 (point d'équilibre P7)
x7=linspace(6686.30144 ,6714.18029 ,25); % 6693.6
y7=8*(x7)-27606.2498;
p=plot(x7,y7,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP8 droite terminale de coordonnées x0,y0 (point 7 8 9) et de coordonnées
%x1,y1 (point d'équilibre P8)
x8=linspace(6686.30144,6829.32865,25);%6712.26313  
y8=-0.62285714*(x8)+ 30048.7723;
p=plot(x8,y8,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP9 droite terminale de coordonnées x0,y0 (point 9 7 8) et de coordonnées
%x1,y1 (point d'équilibre P9)
x9=linspace(6890,6715.7679,25);  %   6829.32865   6914 
y9=-2.86029412*(x9)+ 45328.9647;
p=plot(x9,y9,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end



%DTP10 droite terminale de coordonnées x0,y0 (point 1 10) et de coordonnées
%x1,y1 (point d'équilibre P10)
x10=linspace(6095.78216 ,6274,25);%6126.47547  6204.82181
y10=0.37123991*(x10)+24131.4258;
p=plot(x10,y10,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP11 droite terminale de coordonnées x0,y0 (point 1 11 12) et de coordonnées
%x1,y1 (point d'équilibre P11)
x11=linspace(6082.41786,6190.62287,25);
y11=0.18345324*(x11)+25206.3448;
p=plot(x11,y11,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP12 droite terminale de coordonnées x0,y0 (point 11 10 12) et de coordonnées
%x1,y1 (point d'équilibre P12)
x12=linspace(6095.78216,6082.41786,25); %  6106.39127
y12=5.40540541*(x12)-6555.75038;
p=plot(x12,y12,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end
			


%DTP13 droite terminale de coordonnées x0,y0 (point 13 9) et de coordonnées
%x1,y1 (point d'équilibre P13)
x13=linspace(6987 ,7071 ,25);	% 6941.96195   7060.05125
y13=3.72647059*(x13)-396.105235;
p=plot(x13,y13,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP14 droite terminale de coordonnées x0,y0 (point 4 10 14) et de coordonnées
%x1,y1 (point d'équilibre P14)
x14=linspace(5809.56314,6200.44776,25);%
y14=-0.24197531*(x14)+ 27933.6348;
p=plot(x14,y14,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

			

%DTP15 droite terminale de coordonnées x0,y0 (point 4 15 27 ) et de coordonnées
%x1,y1 (point d'équilibre P15)
x15=linspace(5798.319,5834.37449,25);%
y15=-16.0535714*(x15)+	119597.37;
p=plot(x15,y15,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP16 droite terminale de coordonnées x0,y0 (point 16 28 ) et de coordonnées
%x1,y1 (point d'équilibre P16)
x16=linspace(5618.29843,5453 ,25); 5484.61275
y16=-0.03001017	*(x16)+ 26274.7751;
p=plot(x16,y16,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

		
%DTP17 droite terminale de coordonnées x0,y0 (point 1 18 17) et de coordonnées
%x1,y1 (point d'équilibre P17)
x17=linspace(6195.94914,6339.66147,25);  	%
y17=-1.02482877*(x17)+32726.6582;
p=plot(x17,y17,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP18 droite terminale de coordonnées x0,y0 (point 17 18) et de coordonnées
%x1,y1 (point d'équilibre P18)
x18=linspace(6058 , 	6339.66147,25);6247.46502
y18=1.50782609*(x18)+16670.4838	;
p=plot(x18,y18,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP19 droite terminale de coordonnées x0,y0 (point 19 6 20) et de coordonnées
%x1,y1 (point d'équilibre P19)
x19=linspace(6497,6385.01141,25);% 6450.45837
y19=-2.84649123*(x19)+44104.5542;
p=plot(x19,y19,'-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP20 droite terminale de coordonnées x0,y0 (point 18 20) et de coordonnées
%x1,y1 (point d'équilibre P20)
x20=linspace(	6385.01141,6163.80675,25);6313.96892
y20=-0.15712682*(x20)+26932.9318;
p=plot(x20,y20,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP21 droite terminale de coordonnées x0,y0 (point 2 21 25) et de coordonnées
%x1,y1 (point d'équilibre P21)
x21=linspace(6363.70353 ,6473.70541 	,25);    %6367.93342   6363.70353
y21=-1.1918239*(x21)+	33824.7048	;
p=plot(x21,y21,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP22 droite terminale de coordonnées x0,y0 (point 19 21 22 26) et de coordonnées
%x1,y1 (point d'équilibre P22)
x22=linspace(6395.28574,6478.37112,25);%
y22=2.66206897*(x22)+	8875.73774	;		
p=plot(x22,y22,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP23 droite terminale de coordonnées x0,y0 (point 21 23) et de coordonnées
%x1,y1 (point d'équilibre P23)
x23=linspace(6404.4409,6657,25);	%6517.20861   6515.77102
y23=0.17436381*(x23)+25075.0364;
p=plot(x23,y23,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP24 droite terminale de coordonnées x0,y0 (point 24 23) et de coordonnées
%x1,y1 (point d'équilibre P24)
x24=linspace(6658.96053,	6471,25); 6561.42738
y24=-0.96010522*(x24)+32629.4209;
p=plot(x24,y24,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP25 droite terminale de coordonnées x0,y0 (point 2 25 ) et de coordonnées
%x1,y1 (point d'équilibre P25)
x25=linspace(6367.93342,6403.92737,25);
y25=2.17692308*(x25)+	12376.9888;
p=plot(x25,y25,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end



%DTP26 droite terminale de coordonnées x0,y0 (point 21 26) et de coordonnées
%x1,y1 (point d'équilibre P26)
x26=linspace(6714.18029 ,6478.37112	 ,25);%6519.87952
y26=0.01511879*(x26)+26005.6822;
p=plot(x26,y26,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end
		

%DTP27 droite terminale de coordonnées x0,y0 (point 15  27 28) et de coordonnées
%x1,y1 (point d'équilibre P27)
x27=linspace(	5944 ,5602.4017 ,25);%  5834.37449
y27=-1.29147142*(x27)+33469.7503;		
p=plot(x27,y27,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP28 droite terminale de coordonnées x0,y0 (point 27 28) et de coordonnées
%x1,y1 (point d'équilibre P28)
x28=linspace(5602.4017,5618.29843 ,25);%	5623.67293
y28=-8.06704981*(x28)+	71429.2622	;		
p=plot(x28,y28,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP29 droite terminale de coordonnées x0,y0 (point 12 15 29) et de coordonnées
%x1,y1 (point d'équilibre P29)
x29=linspace(5821.43346,	6094.84437,25);%
y29=0.90260546*(x29)+	20888.1145	;		
p=plot(x29,y29,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end



	


grid
%ss11
hab31
figure(1)

%automatisation du dessin, segment de droite et points d'équilibre
axis equal
xlabel ('coordonnees x')
ylabel ('coordonnees y')
title ('Dessin3 estimé, 26 PE Gabriel +3 PE ajoutés ')






