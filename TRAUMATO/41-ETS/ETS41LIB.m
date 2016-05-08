
%hemato_automatisation1
%coordonnées des projections cartographiques
coord=[	
6384	26327	
6307	25882	
6096	26125	
5454	26015	
6215	26146	
5485	26373	
6151	26085	
5665	26620	
6645	25760	
6035	26702	
6576	26318	
6754	25935	
6529	25975	
6029	26714	
5969	26689	
6142	26364	
6433	26029	
5786	25977	
6490	26280	
6515	25953	
6862	25684	
6346	26043	
6546	26218	
6312	26030	
6501	26262	
6542	26309	
7168	25884	
5502	26026	
6555	26401	
6596	26334	
6403	25999	
5999	25984	
5942	26401	
6867	25978	
6491	26173	
5500	26373	
6303	25900	
6583	26367	
5492	26095	
6846	25966	
7197	25591	
];

%declaration des variables 
x=coord(:,1);
y=coord(:,2);

figure(2)
plot(x,y,'r.');

%noms des différentes villes
villes=['Armentières           '	
'Arras                 '	
'Auchel                '	
'Berck-sur-Mer         '	
'Béthune               '	
'Boulogne-sur-Mer      '	
'Bruay la Buissière    '	
'Calais                '	
'Cambrai               '	
'Coudekerque-Branche   '	
'Croix                 '	
'Denain                '	
'Douai                 '	
'Dunkerque             '	
'Grande Synthe         '	
'Hazebrouck            '	
'Henin Beaumont        '	
'Hesdin                '	
'Lambersart            '	
'Lambres les Douai     '	
'Le Cateau Cambrésis   '	
'Lens                  '	
'Lesquin               '	
'Lievin                '	
'Lille                 '	
'Marcq en Baroeuil     '	
'Maubeuge              '	
'Rang-du-Fliers        '	
'Roncq                 '	
'Roubaix               '	
'Rouvroy               '	
'Saint Pol sur Ternoise'	
'Saint-Omer            '	
'Saint-Saulve          '	
'Seclin                '	
'St Martin les Boulogne'	
'Ste-Catherine         '	
'Tourcoing             '	
'Trépied-Cucq          '	
'Valenciennes          '	
'Wignehies             '	

];


%noms des stations, on récupère un vecteur de "handles"
h=text(coord(:,1)+2,coord(:,2),villes);

%on fixe la taille du texte des stations à 5
for i=1:length(coord)
   set(h(i),'Fontsize',10)
end

Hab31
ss11
grid

%automatisation du dessin, segment de droite et points d'équilibre
axis equal
xlabel ('coordonnees x')
ylabel ('coordonnees y')
title ('Traumatologie: GHM 295 - 63 établissements sur 41 communes')






