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


%DTP1 droite terminale de coordonnées x0,y0 (points inter 28-1) et de coordonnées
%x1,y1 (point d'équilibre P1)
x1=linspace(5908.074068, 6170.543193, 25);%
y1=6.540540541*(x1)+ -13999.05195;
p=plot(x1,y1,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end
		
%DTP2 droite terminale de coordonnées x0,y0 (points inter 34-2) et de coordonnées
%x2,y2 (point d'équilibre P2)
x2=linspace(6358.032544,6362.24032, 25);%
y2=-0.189328744*(x2)+ 27416.62429;
p=plot(x2,y2,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end
	
%DTP3 droite terminale de coordonnées x0,y0 (points inter 21-3) et de coordonnées
%x3,y3 (point d'équilibre P3)
x3=linspace(5298.435591,5788.500639, 25);  % 
y3=1.264840183*(x3)+ 19200.83049;
p=plot(x3,y3,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP4 droite terminale de coordonnées x0,y0 (points inter 23-4) et de coordonnées
%x4,y4 (point d'équilibre P4)
x4=linspace(5748.620826,5600.971087, 25);  %6244.006969    6586 6320.21714
y4=-0.698380567*(x4)+ 30439.92738;
p=plot(x4,y4,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP5 droite terminale de coordonnées x0,y0 (points inter 24-5) et de coordonnées
%x5,y5 (point d'équilibre P5)
x5=linspace(5832.583949,5814.834887 , 25);%
y5=-4.135693215*(x5)+ 50704.60288;
p=plot(x5,y5,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP6 droite terminale de coordonnées x0,y0 (points inter 7-6) et de coordonnées
%x6,y6 (point d'équilibre P6)
x6=linspace(6685.92374,6592.421803, 25);  %

y6=0.602941176*(x6)+ 21872.36031;
p=plot(x6,y6,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP7 droite terminale de coordonnées x0,y0 (points inter 6-7) et de coordonnées
%x7,y7 (point d'équilibre P7)
x7=linspace(6685.92374,6720.871289, 25);%
y7=-0.622857143*(x7)+ 30067.95439;
p=plot(x7,y7,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP8 droite terminale de coordonnées x0,y0 (points inter 16-8) et de coordonnées
%x8,y8 (point d'équilibre P8)
x8=linspace(6829.174021,6801.593014  , 25); %
y8=0.430278884*(x8)+	22897.80845;
p=plot(x8,y8,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP9 droite terminale de coordonnées x0,y0 (points inter 6-9) et de coordonnées
%x9,y9 (point d'équilibre P9)
x9=linspace(6696.177827,6700.173658, 25);  %
y9=8*(x9)+	-27659.66097;
p=plot(x9,y9,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP10 droite terminale de coordonnées x0,y0 (points inter 18-10) et de coordonnées
%x10,y10 (point d'équilibre P10)
x10=linspace(6842.141445,6785.903676, 25); %   
y10=-2.860294118*(x10)+45355.83435;
p=plot(x10,y10,'m-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP11 droite terminale de coordonnées x0,y0 (points inter 24-11) et de coordonnées
%x11,y11 (point d'équilibre P11)
x11=linspace(6141.01206,6115.251807, 25);%
y11=5.405405405*(x11)+	-6686.466755;
p=plot(x11,y11,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP12 droite terminale de coordonnées x0,y0 (points inter 24-12) et de coordonnées
%x12,y12 (point d'équilibre P12)
x12=linspace(6300.808575,6126.80541, 25);%   
y12=0.371239912*(x12)+	24130.4146;
p=plot(x12,y12,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP13 droite terminale de coordonnées x0,y0 (points inter 11-13) et de coordonnées
%x13,y13 (point d'équilibre P13)
x13=linspace( 6106.086843,6148.744874, 25);%
y13=0.183453237*(x13)+	25199.22667;
p=plot(x13,y13,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP14 droite terminale de coordonnées x0,y0 (points inter 15-14) et de coordonnées
%x14,y14 (point d'équilibre P14)
x14=linspace(5987.573618,5996.928071, 25);% 
y14=-30.42857143*(x14)+ 208461.8861;
p=plot(x14,y14,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP15 droite terminale de coordonnées x0,y0 (points inter 14-15) et de coordonnées
%x15,y15 (point d'équilibre P15)
x15=linspace(5987.573618,5904.520244, 25);%  
y15=-0.367924528*(x15)+ 28471.54977;
p=plot(x15,y15,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP16 droite terminale de coordonnées x0,y0 (points inter 8-7-16) et de coordonnées
%x16,y16 (point d'équilibre P16)
x16=linspace( 6822.876579,6785.26154, 25);% 6829.174021
y16=2.855263158*(x16)+	6337.168852; 
p=plot(x16,y16,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end



%DTP17 droite terminale de coordonnées x0,y0 (points inter 25-17) et de coordonnées
%x17,y17 (point d'équilibre P17)
x17=linspace(6981.233342,6949.569914, 25); %
y17=3.602150538*(x17)+	626.2925454;
p=plot(x17,y17,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP18 droite terminale de coordonnées x0,y0 (points inter 10-8-18) et de coordonnées
%x18,y18 (point d'équilibre P18)
x18=linspace(6698.112312,6858.156347, 25);%6842.141445
y18=0.037719298*(x18)+25527.21665;
p=plot(x18,y18,'r-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP19 droite terminale de coordonnées x0,y0 (points inter 20-19) et de coordonnées
%x19,y19 (point d'équilibre P19)
x19=linspace(7003.597422,6998.237331, 25);%
y19=-1.53*(x19)+36480.34712;
p=plot(x19,y19,'c-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP20 droite terminale de coordonnées x0,y0 (points inter 18-19-20) et de coordonnées
%x20,y20 (point d'équilibre P20)
x20=linspace(7010.793452,7044.468949, 25);% 7003.597422
y20=3.726470588*(x20)+ -333.8567365;
p=plot(x20,y20,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP21 droite terminale de coordonnées x0,y0 (points inter 3-11-15-21) et de coordonnées
%x21,y21 (point d'équilibre P21)
x21=linspace(5298.435591, 5997.085827, 25);%6047.912321    6526.342817
y21=0.136690647*(x21)+25574.51884;
p=plot(x21,y21,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP22 droite terminale de coordonnées x0,y0 (points inter 13-15-22) et de coordonnées
%x22,y22 (point d'équilibre P22)
x22=linspace(5789.905121,6006.763839, 25);  %   5699.383053
y22=-1.250561798*(x22)+33502.03767;
p=plot(x22,y22,'b-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP23 droite terminale de coordonnées x0,y0 (points inter 3-4-23) et de coordonnées
%x23,y23 (point d'équilibre P23)
x23=linspace(5745.923419,5750.87005, 25);  % 5748.620826
y23=-16.05357143*(x23)+118711.0974;
p=plot(x23,y23,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP24 droite terminale de coordonnées x0,y0 (points inter 3-5-12-24) et de coordonnées
%x24,y24 (point d'équilibre P24)
x24=linspace(5835.708404, 5977.511367, 25);  %5832.583949   6300.808575
y24=-0.241975309*(x24)+27994.16632;
p=plot(x24,y24,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end



%DTP25 droite terminale de coordonnées x0,y0 (points inter 17-19-25) et de coordonnées
%x25,y25 (point d'équilibre P25)
x25=linspace(6981.233342,7176.994782, 25); %  6996.773244
y25=0.098976109*(x25)+25082.77067;
p=plot(x25,y25,'g-');
for i=1:length(p)
  set(p(i),'LineWidth',3)
end


%DTP26 droite terminale de coordonnées x0,y0 (points inter 14-26) et de coordonnées
%x26,y26 (point d'équilibre P26)
x26=linspace(5945.119738,5597.965515, 25); %  
y26=4.43902439*(x26)+1169.85396;
p=plot(x26,y26,'g-');
for i=1:length(p)
  set(p(i),'LineWidth',3)
end



%DTP27 droite terminale de coordonnées x0,y0 (points inter 23-26-27) et de coordonnées
%x27,y27 (point d'équilibre P27)
x27=linspace(5761.666715,5488.027918, 25); %  5643.013832
y27=-0.030010173*(x27)+26388.67781;
p=plot(x27,y27,'y-');
for i=1:length(p)
  set(p(i),'LineWidth',3)
end


%DTP28 droite terminale de coordonnées x0,y0 (points inter 1-12-28) et de coordonnées
%x28,y28 (point d'équilibre P28)
x28=linspace(5908.074068,6298.529515, 25); %6503.419347
y28=3.194444444*(x28)+5769.931622;
p=plot(x28,y28,'y-');
for i=1:length(p)
  set(p(i),'LineWidth',3)
end

%DTP29 droite terminale de coordonnées x0,y0 (points inter 1-2-13-29) et de coordonnées
%x29,y29 (point d'équilibre P29)
x29=linspace(6166.237498,6274.685432, 25); % 6264.736709   6167.091174
y29=-1.024828767*(x29)+32650.81196;
p=plot(x29,y29,'g-');
for i=1:length(p)
  set(p(i),'LineWidth',3)
end

%DTP30 droite terminale de coordonnées x0,y0 (points inter 2-22-30) et de coordonnées
%x30,y30 (point d'équilibre P30)
x30=linspace(6317.872184,6236.533261, 25); %6093.349222
y30=1.507826087*(x30)+16694.21699;
p=plot(x30,y30,'c-');
for i=1:length(p)
  set(p(i),'LineWidth',3)
end


%DTP31 droite terminale de coordonnées x0,y0 (points inter 32-31) et de coordonnées
%x31,y31 (point d'équilibre P31)
x31=linspace(6347.808554,  6316.586675, 25);% 
y31=-0.157126824*(x31)+26950.00325;
p=plot(x31,y31,'y-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP32 droite terminale de coordonnées x0,y0 (points inter 31-32 ) et de coordonnées
%x32,y32 (point d'équilibre P32)
x32=linspace(6347.808554,  6356.413435, 25);% 
y32=-0.891534392*(x32)+31611.88189;
p=plot(x32,y32,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP33 droite terminale de coordonnées x0,y0 (points inter 30-32-33 ) et de coordonnées
%x33,y33 (point d'équilibre P33)
x33=linspace(6484.656843,  6371.833158, 25);%6352.337357 
y33=3.955555556*(x33)+821.531347;
p=plot(x33,y33,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP34 droite terminale de coordonnées x0,y0 (points inter 33-34 ) et de coordonnées
%x34,y34 (point d'équilibre P34)
x34=linspace(6411.65174,  6488.204525, 25);% 
y34=-0.553719008*(x34)+29733.42945;
p=plot(x34,y34,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP35 droite terminale de coordonnées x0,y0 (points inter 39-35 ) et de coordonnées
%x35,y35 (point d'équilibre P35)
x35=linspace(6538.662058,  6475.895784, 25);% 
y35=2.08*(x35)+12516.30226;
p=plot(x35,y35,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP36 droite terminale de coordonnées x0,y0 (points inter 1-36 ) et de coordonnées
%x36,y36 (point d'équilibre P36)
x36=linspace(6032.936903,  6423.125559, 25);% 
y36=2.176923077*(x36)+12326.37687;
p=plot(x36,y36,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end


%DTP37 droite terminale de coordonnées x0,y0 (points inter 36-37 ) et de coordonnées
%x37,y37 (point d'équilibre P37)
x37=linspace(6368.167968,  6515.098502, 25);% 
y37=0.174363808*(x37)+25079.01067;
p=plot(x37,y37,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP38 droite terminale de coordonnées x0,y0 (points inter 37-38 ) et de coordonnées
%x38,y38 (point d'équilibre P38)
x38=linspace(6652.051566,  6559.497107, 25);% 
y38=-0.960105217*(x38)+32625.55712;
p=plot(x38,y38,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DTP39 droite terminale de coordonnées x0,y0 (points inter 9-34-35-39 ) et de coordonnées
%x39,y39 (point d'équilibre P39)
x39=linspace(6722.394766,  6519.695404, 25);% 6531.85633    6538.662058
y39=0.01511879*(x39)+26017.86268;
p=plot(x39,y39,'g-');
for i=1:length(p)
   set(p(i),'LineWidth',3)
end




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

	







