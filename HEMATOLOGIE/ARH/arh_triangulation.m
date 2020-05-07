clear all
%close all
%hemato_simulation 6 poles hospitaliers pour 7 �tablissement, Roubaix compris
%coordonn�es des projections cartographiques
coord=[
6029	26714	
6501	26262	
6596	26334	
6846	25966	
6346	26043	
5485	26373		
	];

%declaration des variables 
x=coord(:,1);
y=coord(:,2);


%noms des diff�rentes poles hospitaliers
villes=[
'DUNKERQUE       '	
'LILLE           '	
'ROUBAIX         '	
'VALENCIENNES    '	
'LENS            '	
'BOULOGNE SUR MER'	
];

%matrice adjacence de la triangulation de Delaunay
mtr_adj=[ 
     0     1     1     0     1     1
     0     0     1     1     1     0
     0     0     0     1     0     0
     0     0     0     0     1     0
     0     0     0     0     0     1
     0     0     0     0     0     0
];


  
%trac� des liaisons en noir et des noeuds cercle rouge
gplot (mtr_adj,coord,'k')
grid
hold on
gplot(mtr_adj,coord,'ro')


%noms des stations, on r�cup�re un vecteur de "handles"
h=text(coord(:,1)+2,coord(:,2),villes);

%on fixe la taille du texte des stations � 5
for i=1:length(coord)
   set(h(i),'Fontsize',12)
end



grid
%automatisation du dessin, segment de droite et points d'�quilibre
axis equal

xlabel (' x')
ylabel (' y')
title (' hemato - triangulation de Delaunay avec contraintes rectangulaires')






