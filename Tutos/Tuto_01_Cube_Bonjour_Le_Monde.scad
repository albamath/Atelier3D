// 01 Cube "Bonjour le monde".

// =========================================
// D'après le micro-tutoriel vidéo https://www.youtube.com/watch?v=xvhbrUSQRTc par Juan Gonzalez Gomez.
//==========================================

// On va faire un mini-tutoriel sur la conception de pièces en utilisant le logiciel libre OpenSCAD. 

// Votre premier code, qu'on appelle communement "Hello World" ou "Bonjour, le monde", sera la création d'un cube de côté long de 10 mm.

// Ouvrez OpenSCAD et écrivez-y :

cube([10,10,10]);

// Dans cette instruction, les nombres entre les crochets carrés représentent respectivement la longueur, la profondeur et la hauteur de notre pièce, c'est à dire la taille de la pièce le long des axes de coordonnés x,y et z.

// L'unité de mesure pour les longueurs dans OpenSCAD c'est toujours le millimètre.

// Par conséquent, l'instruction de toute à l'heure crée un cube de 10mm × 10mm × 10mm

// Une fois le cube défini, appuyez sur la touche F5 ou naviguez jusqu'a sous-menu "Compile" du menu "Design". 

// Le cube que vous aviez défini toute à l'heure apparaît maintenant dessiné par OpenSCAD.

// Vous pouvez zoomer et dezoomer en faisant tourner la mollette de la souris.

// Avec le clic gauche de la souris vous pouvez tourner le point de vue autour de l'origine. Avec le clic du milieu, vous déplacez votre point de vue ou viewport dans l'espace. 

// Lors de la conception il est souvent utile de bien reperer nos axes de coordonnées. On va donc lres afficher. Appuyez simultanémentsur les touches Ctrl et 2 ou bien cliquez sur l'option "Show Axes" du menu "View" d'OpenSCAD. 

// Vous voyez maintenant comment se positionne votre objet (le cube) par rapport aux axes X, Y et Z.

// Pour en finir avec votre code "Bonjour, le monde", écrivez un commentaire en prémière ligne de votre fichier.

//-- Cube Bonjour le monde

// Enregistrez votre fichier. Pour cela, appuyez simultanément sur les touches Ctrl et S ou bien cliquez sur l'option Save du menu "File" d'OpenScad.

// Maintenant, imaginons que vous voulez déjà imprimer la pièce que vous venez de faire dans une imprimante 3D. A fin d'exporter vers un format de fichier convenable à l'impression 3D, appuyez sur la touche F6 ou bien cliquez sur l'option "Compile and render" du menu "Design" d'OpenScad.

//Maintenant votre pièce est prête à être exportée. Pour l'exporter, allez dans l'option "Export as STL..." du menu "File" de OpenSCAD.
