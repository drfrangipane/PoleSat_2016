%hemato_simulation
%coordonn�es des projections cartographiques
coord=[	
6029	26714	
6501	26262	
6846	25966	
5485	26373	
6346	26043	
5665	26620	
6596	26334	];

%declaration des variables 
x=coord(:,1);
y=coord(:,2);


%noms des diff�rentes villes
villes=['Dunkerque      '	
'Lille          '	
'Valenciennes   '	
'Boulogne       '	
'Lens           '	
'Calais         '	
'Roubaix        '	
];

%matrice adjacence
mtr_adj=[0	1	0	0	1	1	1	
0	0	0	0	1	0	1	
0	1	0	0	1	0	1	
0	0	0	0	1	1	0	
0	0	0	0	0	1	0	
0	0	0	0	0	0	0	
0	0	0	0	0	0	0	
];

%trac� des liaisons en noir et des noeuds cercle rouge
gplot(mtr_adj,coord,'o')
hold on


%noms des stations, on r�cup�re un vecteur de "handles"
h=text(coord(:,1)+2,coord(:,2),villes);

%on fixe la taille du texte des stations � 5
for i=1:length(coord)
   set(h(i),'Fontsize',12)
end



%DT1 droite terminale de coordonn�es x0,y0 (point i5-i3) et de coordonn�es
%x1,y1 (point d'�quilibre P3)
x2=linspace(5551,5875.08258,25);
y2=1.044247788*(x2)+20149.5789;
p=plot(x2,y2,'g-')
for i=1:length(p)
   set(p(i),'LineWidth',3)
end	
pause(4)		
%DT2 droite terminale de coordonn�es x0,y0 (point i5-i3;i2-i3 et i1-i3) et de coordonn�es
%x1,y1 (point d'�quilibre P3)
x3=linspace(5551,6198,25);
y3=1.044247788*(x3)+20149.5789;
p=plot(x3,y3,'y-')
for i=1:length(p)
   set(p(i),'LineWidth',3)
end	
%DT3 droite terminale de coordonn�es x0,y0 (point i2-i3) et de coordonn�es
%x1,y1 (point d'�quilibre P2)
x4=linspace(5821,5913.73946,25);
y4=-3.872340426*(x4)+49225.0006;
p=plot(x4,y4,'r-')
for i=1:length(p)
   set(p(i),'LineWidth',3)
end	

%DT5 droite terminale de coordonn�es x0,y0 (point i5-i3) et de coordonn�es
%x1,y1 (point d'�quilibre P5)
x5=linspace(5515,5875.08258,25);
y5=-0.728744939*(x5)+30566.0576;
p=plot(x5,y5,'g-')
for i=1:length(p)
   set(p(i),'LineWidth',3)
end	
		
%DT6 droite terminale de coordonn�es x0,y0 (point i1-i3) et de coordonn�es
%x1,y1 (point d'�quilibre P1)
x6=linspace(6002.83546, 6408.31417,25);
y6=-0.707762557*(x6)+30666.6087;
p=plot(x6,y6,'c-')
for i=1:length(p)
   set(p(i),'LineWidth',3)
end	
pause(4)		
%DT7 droite terminale de coordonn�es x0,y0 (point i1-i6) et de coordonn�es
%x1,y1 (point d'�quilibre P1)
x7=linspace(6408.31417,6525.23305,25);
y7=-0.707762557*(x7)+30666.6087;
p=plot(x7,y7,'c-')
for i=1:length(p)
   set(p(i),'LineWidth',3)
end

%DT8 droite terminale de coordonn�es x0,y0 (point i1-i6) et de coordonn�es
%x1,y1 (point d'�quilibre P6)
x8=linspace(6525.23305,6674,25);
y8=0.679347826*(x8)+21615.3902;
p=plot(x8,y8,'r-')
for i=1:length(p)
   set(p(i),'LineWidth',3)
end	
pause(4)
%DT9 droite terminale de coordonn�es x0,y0 (point i1-i6) et de coordonn�es
%x1,y1 (point d'�quilibre P6)
x9=linspace(6034,6674,25);
y9=0.679347826*(x9)+21615.3902;
p=plot(x9,y9,'r-')
for i=1:length(p)
   set(p(i),'LineWidth',3)
end	

%DT10 droite terminale de coordonn�es x0,y0 (point i4-i6) et de coordonn�es
%x1,y1 (point d'�quilibre P4)
x10=linspace(6479,6679,25);
y10=-1.319444444*(x10)+34968.8736;
p=plot(x10,y10,'g-')
for i=1:length(p)
   set(p(i),'LineWidth',3)
end	
	

hab31
%automatisation du dessin, segment de droite et points d'�quilibre
grid off
axis equal
xlabel ('coordonnees x')
ylabel ('coordonnees y')
title (' Hematologie - simulation + nouveau service de Roubaix - 6 PE voisins')






