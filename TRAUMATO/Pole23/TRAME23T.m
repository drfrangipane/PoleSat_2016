clear all
close all
%coordonn�es des projections cartographiques
coord=[	
6384.00		26327.00	
5665.00		26620.00	
6645.00		25760.00	
6754.00		25935.00	
6142.00		26364.00	
5786.00		25977.00	
6862.00		25684.00	
7168.00		25884.00	
5999.00		25984.00	
5942.00		26401.00	
7197.00		25591.00	
5482.67		26045.33	
5492.50		26373.00	
6015.50		26704.75	
6184.50		26132.33	
6305.67		25888.00	
6329.00		26036.50	
6418.00		26014.00	
6505.29		26271.29	
6518.50		26195.50	
6522.00		25964.00	
6583.50		26352.75	
6851.25		25969.00	
	];

%declaration des variables 
x=coord(:,1);
y=coord(:,2);


%noms des diff�rentes villes
villes=[
'1  '	
'2  '	
'3  '	
'4  '	
'5  '	
'6  '	
'7  '	
'8  '	
'9  '	
'10 '	
'11 '	
'12 '	
'13 '	
'14 '	
'15 '	
'16 '	
'17 '	
'18 '	
'19 '	
'20 '	
'21 '	
'22 '	
'23 '	
];

%Traumato GHM 295 Matrice adjacence des 23 Poles

mtr_adj=[
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


%trac� des liaisons en noir et des noeuds cercle rouge
gplot (mtr_adj,coord,'k')
hold on
gplot(mtr_adj,coord,'ro')


%noms des stations, on r�cup�re un vecteur de "handles"
h=text(coord(:,1)+2,coord(:,2),villes);

%on fixe la taille du texte des stations � 10
for i=1:length(coord)
   set(h(i),'Fontsize',10)
end

Hab31
ss11
grid

%automatisation du dessin, segment de droite et points d'�quilibre
axis equal
xlabel ('coordonnees x')
ylabel ('coordonnees y')
title ('Traumatologie: GHM 295 - 23 POLES - 41 communes - 63 �tablissements')

