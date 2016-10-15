//02 Déplacer et tourner

// =========================================
// D'après le micro-tutoriel vidéo https://www.youtube.com/watch?v=QMsTnDUkJ1E par Juan Gonzalez Gomez.
//==========================================

//Dans ce tuto nous allons voir comment déplacer et tourner les éléments. 

// Commençons par ce que nous connaissons déjà (cf. Tuto 01): créons un cube. Par exemple, créons un cube dont toutes les arêtes sont de longueur 20mm.

cube([20,20,20]);

// Après avoir écrit l'instruction, appuyez sur F5 ou bien cliquez sur l'option "Compile" du menu "Design" de OpenSCAD. Vous avez maintenant votre cube qui s'affiche. 

// D'abord nous allons faire en sorte que le cube soit centré dans l'origine. Pour cela, remarquez que la commande cube accepte un paramètre qui s'appelle "center" qui par défaut n'est pas vrai (on dit que sa valeur par défaut est "false"). Passez ce paramètre à "true", comme suit :

cube( [ 20, 20, 20], center = true);

// Après avoir appuyé sur la touche F5 ou bien avoir cliqué sur l'option "Compile" du menu "Design" d'OpenSCAD, vous pouvez voir qu'un cube apparaît maintenant centré dans l'origine. 

// Bien, nous allons maintenant déplacer le cube de  cinq centimètres le long de l'axe X. Pour cela, utilisez la commande translate juste l'instruction qui nous avez servi toute à l'heure à créer le cube centré à l'origine:

translate([50,0,0])
  cube( [ 20, 20, 20], center = true);

// Notez bien qu'on qu'on a écris 50 car l'unité de mesure d'OpenSCAD sont les millimètres et chaque centimètre équivaut à 10 milimètres. 

// Après avoir appuyé sur la touche F5 vous pouvez voir que votre nouveau cube apparaît déplacé le long de l'axe X. 

// La commande translate applique un déplacement à la figure qui est déclarée juste après, ici le cube. C'est pour ça que certaines personnes aiment bien indenter la ligne avec le code de la figure, pour rendre visible dans la lecture du code sur qui agit la commande translate. Indenter veut dire tout simplement rajouter des espaces au début de la ligne de code. 

// Voyons maintenant comment marchent les rotations, c'est très similaire à ce qu'on a vu pour la translation.

// Nous partirons maintenant d'un cube, différent de celui de toute à l'heure. 

cube([ 20, 20, 10], center = true);

// En fait ce ne sera plus un cube dans le sens du vocabulaire mathématique puisque toutes ses arêtes n'ont pas la même longueur. Le mot mathématiquement correct ici est "pavé droit", mais la commande d'OpenSCAD permettant de le construire c'est toujours cube. 

// Comme toute à l'heure, le paramètre center=true, nous permet de centrer le pavé à l'origine. 

// Pour le tourner nous utiliserons la commande rotate. Par exemple, pour tourner de 45° autour de l'axe Z on va faire 

rotate([0,0,45])
  cube([ 20, 20, 10], center = true);

// Dans OpenSCAD les angles sont toujours donnés en degrés. Après avoir appuyé sur F5, vous pouvez voir que le pavé à été tourné. 