%1-coordonnées des projections cartographiques
coord=[6384	26327
6307	25882
6096	26125
7140	25709
6280	26384
5454	26015
6215	26146
5485	26373
6151	26085
5665	26620
6645	25760
6862	25684
6890	26067
6035	26702
6576	26318
5492	26095
6754	25935
6529	25975
6029	26714
7226	25590
5969	26689
7127	25854
6142	26364
6433	26029
5786	25977
6490	26280
6515	25953
6346	26043
6546	26218
6312	26030
6501	26262
6542	26309
7168	25884
6927	25843
5502	26026
6555	26401
6596	26334
6403	25999
6775	26064
5500	26373
5942	26401
5999	25984
6867	25978
6303	25900
6491	26173
6670	25964
6583	26367
6846	25966
6571	26263
6623	26345
7197	25591];

%2-déclaration des variables x et y de la matrice coord
x=coord(:,1);
y=coord(:,2);

%3-noms des différentes communes 
villes=['1   '	
'2   '	
'3   '	
'4   '	
'5   '	
'6   '	
'7   '	
'8   '	
'9   '	
'10  '	
'11  '	
'12  '	
'13  '	
'14  '	
'15  '	
'16  '	
'17  '	
'18  '	
'19  '	
'20  '	
'21  '	
'22  '	
'23  '	
'24  '	
'25  '	
'26  '	
'27  '	
'28  '	
'29  '	
'30  '	
'31  '	
'32  '	
'33  '	
'34  '	
'35  '	
'36  '	
'37  '	
'38  '	
'39  '	
'40  '	
'41  '	
'42  '	
'43  '	
'44  '	
'45  '	
'46  '	
'47  '	
'48  '	
'49  '	
'50  '	
'51  '];	


%4 ****dessin du graphe
close all

%5-tracé des communes avec des points de couleur magenta
hold on
plot(x,y,'m.')

%6-noms des communes, on récupère un vecteur de "handles"
h=text(coord(:,1)+2,coord(:,2),villes);

%7-on fixe la taille du texte des communes à 7
for i=1:length(coord)
   set(h(i),'Fontsize',9)
end

%8-centrage du dessin et suppression des axes
axis auto
axis ('on')
title ('51 communes pour 63 établissements GHM 295, Région NPDC')

