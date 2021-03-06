clear all
close all
%coordonn�es des projections cartographiques 19 p�les priv�s Traumato GHM 295
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


%noms des diff�rents poles hospitaliers priv�s
Pole19=[
'1-Calais                 '
'2-Cambrai                '
'3-Hesdin                 '
'4-Le Cateau Cambr�sis    '
'5-Maubeuge               '
'6-Saint Pol sur Ternoise '
'7-Saint-Omer             '
'8-Wignehies              '
'9-Berck-sur-Mer          '
'10-Boulogne-sur-Mer      '
'11-Dunkerque             '
'12-B�thune               '
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


%trac� des liaisons en noir et des noeuds cercle rouge
gplot (M19PT,coord,'k')
hold on
gplot(M19PT,coord,'ro')


%noms des Poles, on r�cup�re un vecteur de "handles"
h=text(coord(:,1)+2,coord(:,2),Pole19);

%on fixe la taille du texte des poles � 10
for i=1:length(coord)
   set(h(i),'Fontsize',5)
end

%traumato matrice de Gabriel
%coordonn�es des projections cartographiques des 19 p�les
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

%trac� du sch�ma de connexion de Gabriel trait continu rouge
gplot(mtr_adj1,coord1,'r')



%coordonn�es des  points d'�quilibre not� de Pt1 � Pt32 %
Pt=[
5778.149647	26530.54234
5586.595922	26507.73445
5844.044904	26663.2926
6585.529477	25858.63404
6768.991119	25885.64433
5893.521171	26269.23703
6797.220904	25706.68761
6949.569914	25659.68955
6856.551664	25828.44425
6995.29642	25771.12184
7177.289658	25790.14242
6999.240047	25929.28681
5996.928071	25983.93191
5997.784662	25992.89116
6007.402779	25990.7192
5696.087666	26385.68177
5986.284161	26584.01107
6091.604927	26235.25214
5580.567366	26023.27878
5488.180873	26229.07791
6193.237701	26547.45071
6225.175109	26050.31173
6291.235773	26078.24169
6377.937946	25969.06393
6482.410728	26130.32385
6461.715513	25992.98293
6514.896536	26216.16635
6556.472395	26324.59933
6519.511205	26128.61603
6544.622933	26258.6974
6689.513638	26079.09252
6721.361978	25967.02752

];

%declaration des variables 
xo=Pt(:,1);
yo=Pt(:,2);

%dessin des points de la variable Pt en xo et yo
plot(xo,yo,'k*','markersize',5)

%noms des diff�rents 29 "Points d'�quilibre" dans l'ordre des variables	
%nom du fichier "dessin-19P-Priv�s.xls" �tablissements priv�s traumato
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

%noms des Points d'�quilibre formant le point de d�part
%de la perpendicualaire, on r�cup�re un vecteur de "handles"
h=text(Pt(:,1)+2,Pt(:,2),Pe);


%on fixe la taille du texte noms des diff�rents "Points d'�quilibre" � 10
for i=1:length(Pt)
   set(h(i),'Fontsize',9)
end

%INTERSECTION_DESSIN - MATLAB_PROG\TRAUMATO\FEVRIER\19 POLES PRIVES 37ETS\"dessin -19P-Priv�s.xls"
%coordonn�es des points d'intersection et de liaison 36

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


grid
ss11
hab31
figure(1)

%automatisation du dessin, segment de droite et points d'�quilibre
%centrage du dessin et suppression des axes
%choix des valeurs ([xmin xmax ymin ymax])
axis equal
axis ([min(x) max(x) min(y) max(y)])
axis ([5400 7390 25500 26800])
xlabel ('coordonnees x')
ylabel ('coordonnees y')
title ('Dessin priv�-GHM 295, 32 PE GABRIEL "dessin-19P-Priv�s"','Fontsize',14)






