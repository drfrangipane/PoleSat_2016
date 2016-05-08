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

	
		

grid
%ss11
hab31
figure(1)

%automatisation du dessin, segment de droite et points d'équilibre
axis equal
xlabel ('coordonnees x')
ylabel ('coordonnees y')
title ('Etape 3, Points intersection et points de liaison')






