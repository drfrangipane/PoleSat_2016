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
6004.196339	25982.37332
6377.937946	25969.06393
6482.410728	26130.32385
6461.715513	25992.98293
6514.896536	26216.16635
6556.472395	26324.59933
6519.511205	26128.61603
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

%INTERSECTION_DESSIN - MATLAB_PROG\TRAUMATO\FEVRIER\19 POLES PRIVES 37ETS\"dessin1 -19P.xls"
%coordonn�es des points d'intersection et de liaison 36

Inter=[
5853.192758	26625.45988
5693.716474	26423.74787
5693.118912	26433.34086
5855.566831	26615.64144
6320.217137	25698.6663
6721.760673	25940.77344
6828.043517	25827.36894
6721.892028	25932.1237
5698.88029	26340.85018
6060.991734	26207.6205
6839.640377	25827.80637
7594.907605	27984.29306
6984.914522	25787.00615
6955.394022	25832.17251
6968.002602	25812.88138
6994.677877	25772.06821
5996.638783	25992.73453
5942.792357	27631.20435
5997.664967	25961.50922
6004.889422	25993.86231
6035.117184	25956.06063
6006.976028	25991.25288
5706.250399	26222.53361
6183.384797	26536.31759
5223.429898	25451.63262
5474			25677.79856
5625.996997	26224.94202
6253.472068	26615.51153
6294.505181	26084.69301
6280.107569	26056.28307
6428.530779	25923.95868
6518.213667	26110.49909
6486.399101	26128.11541
6645.662711	26238.96724
5964.674655	26120.22757
6725.342109	26131.72794
6719.002272	26122.41412
 
];

%declaration des variables 
xi=Inter(:,1);
yi=Inter(:,2);

%graphique des points d'intersection
plot(xi,yi,'m*','markersize',3)


%DTP1 droite terminale de coordonn�es x0,y0 (points inter 16-3-1) et de coordonn�es
%x1,y1 (point d'�quilibre P1)
%x1=linspace(5853.192758, 5693.716474, 25);%5778 
%y1=1.264840183*(x1)+ 19222.10648;
%p=plot(x1,y1,'g-');
%for i=1:length(p)
 %  set(p(i),'LineWidth',3)
%end
		
%DTP2 droite terminale de coordonn�es x0,y0 (points inter 16-20-2) et de coordonn�es
%x2,y2 (point d'�quilibre P2)
%x2=linspace(5693.118912,5528, 25);%6007.934144  5587
%y2=-0.698380567*(x2)+ 30409.30448;
%p=plot(x2,y2,'r-');
%for i=1:length(p)
 %  set(p(i),'LineWidth',3)
%end
	
%DTP3 droite terminale de coordonn�es x0,y0 (points inter 1-3) et de coordonn�es
%x3,y3 (point d'�quilibre P3)
x3=linspace(5853.19,5837, 25);  % 5844
y3=-4.135693215*(x3)+ 50832.46946;
p=plot(x3,y3,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP4 droite terminale de coordonn�es x0,y0 (points inter 32-27-4) et de coordonn�es
%x4,y4 (point d'�quilibre P4)
%x4=linspace(6244.006969,6721.760673, 25);  %6586 
%y4=0.602941176*(x4)+ 21887.94715;
%p=plot(x4,y4,'r-');
%for i=1:length(p)
 %  set(p(i),'LineWidth',3)
%end


%DTP5 droite terminale de coordonn�es x0,y0 (points inter 32-7-5) et de coordonn�es
%x5,y5 (point d'�quilibre P5)
%x5=linspace(6836.547881,6721.892028 , 25);%6769 6721.892028

%y5=-0.986842105*(x5)+ 32565.56978;
%p=plot(x5,y5,'c-');
%for i=1:length(p)
 %  set(p(i),'LineWidth',3)
%end

%DTP6 droite terminale de coordonn�es x0,y0 (points inter 16-13-6) et de coordonn�es
%x6,y6 (point d'�quilibre P6)
%x6=linspace(5988.702727,5698.88029, 25);  % 5894  
%y6=-0.367924528*(x6)+ 28437.60803;
%p=plot(x6,y6,'r-');
%for i=1:length(p)
 %  set(p(i),'LineWidth',3)
%end


%DTP7 droite terminale de coordonn�es x0,y0 (points inter 8-7) et de coordonn�es
%x7,y7 (point d'�quilibre P7)
x7=linspace(7594.91,6797, 25);%   
y7=2.855263158*(x7)+ 6298.833186;
p=plot(x7,y7,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP8 droite terminale de coordonn�es x0,y0 (points inter 11-8) et de coordonn�es
%x8,y8 (point d'�quilibre P8)
x8=linspace(6980.374562, 6931 , 25); %6950 
y8=3.602150538*(x8)+	626.2925454;
p=plot(x8,y8,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP9 droite terminale de coordonn�es x0,y0 (points inter 5-7-9) et de coordonn�es
%x9,y9 (point d'�quilibre P9)
x9=linspace(6828.04,6857	, 25);  %6839.64
y9=0.037719298*(x9)+	25569.81993;
p=plot(x9,y9,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP10 droite terminale de coordonn�es x0,y0 (points inter 8-9-11-10) et de coordonn�es
%x10,y10 (point d'�quilibre P10)
x10=linspace(6984.91, 6995, 25); % 6955.39   6994.68 
y10=-1.53*(x10)+36473.92537;
p=plot(x10,y10,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP11 droite terminale de coordonn�es x0,y0 (points inter 10-8-11) et de coordonn�es
%x11,y11 (point d'�quilibre P11)
%x11=linspace(6980.37,7303, 25);%7177  6994.68(10),  
%y11=0.098976109*(x11)+	25079.76221;
%p=plot(x11,y11,'c-');
%for i=1:length(p)
 %  set(p(i),'LineWidth',3)
%end

%DTP12 droite terminale de coordonn�es x0,y0 (points inter 10-12) et de coordonn�es
%x12,y12 (point d'�quilibre P12)
x12=linspace(6968.00,6999, 25);%   
y12=3.726470588*(x12)+	-153.1753705;
p=plot(x12,y12,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP13 droite terminale de coordonn�es x0,y0 (points inter 18-6-13) et de coordonn�es
%x13,y13 (point d'�quilibre P13)
%x13=linspace( 5988.70,6003, 25);%5997   
%y13=-30.42857143*(x13)+	208461.8861;
%p=plot(x13,y13,'c-');
%for i=1:length(p)
 %  set(p(i),'LineWidth',3)
%end


%DTP14 droite terminale de coordonn�es x0,y0 (points inter 13-15-14) et de coordonn�es
%x14,y14 (point d'�quilibre P14)
x14=linspace(5996.64, 5998, 25);%6004.89
y14=0.136690647*(x14)+ 25173.05009;
p=plot(x14,y14,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP15 droite terminale de coordonn�es x0,y0 (points inter 14- 23-18-15) et de coordonn�es
%x15,y15 (point d'�quilibre P15)
%x15=linspace(6004.889422,6268, 25);%6153.983769    5929.131286 6007   
%y15=-1.250561798*(x15)+ 33503.34762;
%p=plot(x15,y15,'c-');
%for i=1:length(p)
 %  set(p(i),'LineWidth',3)
%end


%DTP16 droite terminale de coordonn�es x0,y0 (points inter 1-2-6-16) et de coordonn�es
%x16,y16 (point d'�quilibre P16)
x16=linspace( 5693.72, 5696, 25);%5696   (2),5693.72,  5698.88 (6) 
y16=-16.05357143*(x16)+	117828.232; 
p=plot(x16,y16,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end



%DTP17 droite terminale de coordonn�es x0,y0 (points inter 3-17) et de coordonn�es
%x17,y17 (point d'�quilibre P17)
x17=linspace(5855.57,5986, 25); %
y17=-0.241975309*(x17)+	28032.54403;
p=plot(x17,y17,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP18 droite terminale de coordonn�es x0,y0 (points inter 6-18) et de coordonn�es
%x18,y18 (point d'�quilibre P18)
x18=linspace(6060.99,6092, 25);%
y18=0.902605459*(x18)+20736.93627;
p=plot(x18,y18,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP19 droite terminale de coordonn�es x0,y0 (points inter 13-19) et de coordonn�es
%x19,y19 (point d'�quilibre P19)
x19=linspace(5942.79,5581, 25);%5581 5942.79    
y19=4.43902439*(x19)+1251.004133;
p=plot(x19,y19,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP20 droite terminale de coordonn�es x0,y0 (points inter 16-19-20) et de coordonn�es
%x20,y20 (point d'�quilibre P20)
x20=linspace(5706.25,5488, 25);% 5626.00(19) 
y20=-0.030010173*(x20)+ 26393.77917;
p=plot(x20,y20,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP21 droite terminale de coordonn�es x0,y0 (points inter 17-18-21) et de coordonn�es
%x21,y21 (point d'�quilibre P21)
x21=linspace(6183.384797, 6193, 25);%
y21=1.129933262*(x21)+19549.50543;
p=plot(x21,y21,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP22 droite terminale de coordonn�es x0,y0 (points inter 15-18-22) et de coordonn�es
%x22,y22 (point d'�quilibre P22)
x22=linspace(5474.00 , 6035.117184, 25);  %6225
y22=0.495907231*(x22)+22963.20238;
p=plot(x22,y22,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP23 droite terminale de coordonn�es x0,y0 (points inter 22-23) et de coordonn�es
%x23,y23 (point d'�quilibre P23)
x23=linspace(6294.51,6291 , 25);  %
y23=1.973239437*(x23)+13664.12715;
p=plot(x23,y23,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP24 droite terminale de coordonn�es x0,y0 (points inter 13-15-24) et de coordonn�es
%x24,y24 (point d'�quilibre P24)
x24=linspace(5997.66,6004, 25);  % 6006.98
y24=3.194444444*(x24)+6802.301682;
p=plot(x24,y24,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end



%DTP25 droite terminale de coordonn�es x0,y0 (points inter 23-25) et de coordonn�es
%x25,y25 (point d'�quilibre P25)
x25=linspace(6280.11,6378, 25); %   
y25=-0.891534392*(x25)+31655.21495;
p=plot(x25,y25,'m-');
for i=1:length(p)
  set(p(i),'LineWidth',3)
end

%DTP27 droite terminale de coordonn�es x0,y0 (points inter 4-25-26-27) et de coordonn�es
%x27,y27 (point d'�quilibre P27)
x27=linspace(6320.22,6462, 25); %  6428.53 , 6518.21
y27=2.08*(x27)+12552.61466;
p=plot(x27,y27,'y-');
for i=1:length(p)
  set(p(i),'LineWidth',3)
end

%DTP29 droite terminale de coordonn�es x0,y0 (points inter 21-28-29) et de coordonn�es
%x29,y29 (point d'�quilibre P29)
x29=linspace(6253.47,6556, 25); % 6645.66 
y29=-0.960105217*(x29)+32619.50268;
p=plot(x29,y29,'m-');
for i=1:length(p)
  set(p(i),'LineWidth',3)
end

%DTP30 droite terminale de coordonn�es x0,y0 (points inter 26-28-30) et de coordonn�es
%x30,y30 (point d'�quilibre P30)
x30=linspace(6486.40,6520, 25); % 5964.67
y30=0.01511879*(x30)+26030.04891;
p=plot(x30,y30,'c-');
for i=1:length(p)
  set(p(i),'LineWidth',3)
end


%DTP31 droite terminale de coordonn�es x0,y0 (points inter 30-31) et de coordonn�es
%x31,y31 (point d'�quilibre P31)
x31=linspace(6725.34,  6690, 25);% 
y31=1.469094923*(x31)+16251.562;
p=plot(x31,y31,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP32 droite terminale de coordonn�es x0,y0 (points inter 4-5-31-32 ) et de coordonn�es
%x32,y32 (point d'�quilibre P32)
x32=linspace(6721.76,  6719.002272, 25);% 6721.89(5) 6721
y32=-65.85*(x32)+468568.7138;
p=plot(x32,y32,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end



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






