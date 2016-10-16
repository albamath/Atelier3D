// 03 Cylindres

// =========================================
// D'après le micro-tutoriel vidéo https://www.youtube.com/watch?v=OdUgqYm5lXQ&index=3&list=PL2CED4B0A8EA522CF par Juan Gonzalez Gomez.
//==========================================

//Dans ce tuto nous allons créer et manipuler des cylindres qui sont le couteau suisse de la conception assistée par ordinateur ou CAO. 

// Pour faire un cylindre basique vous utiliserez la commande cylinder dans laquelle vous spécifierez le rayon du cylindre avec le paramètre r. Par exemple pour un rayon de 20 millimètres il faudra écrire r = 20. La hauteur est spécifiée par le paramètre h. 

cylinder ( r = 20, h = 20 ) ;

// N'oubliez pas d'appuyer sur F5 pour voir le cylindre s'afficher. 

// Remarquez que par défaut votre cylindre est couché sur le sol (c'est à dire le plan XY). 

// Remarquez aussi qu'il est centré sur l'axe Z.

// Observez bien votre cylindre, rapprochez la vue en zoomant si besoin. Est-ce vraiment un cylindre? En fait non, c'est un polyèdre, car tout objet 3D est representé dans OpenSCAD comme un polyèdre. Nous verrons à continuation comment modifier le nombre de faces polygonales utilisées pour representer le cylindre. 

// À fin de rendre le cylindre plus lisse nous pouvons changer le nombre de rectangles utilisés pour faire le rendu du contour du cylindre. Avec plus de rectangles, chaque rectangle sera moins perceptible et notre objet aura sera perçu comme moins anguleux et plus lisse. Le nombre de face polygonales est gouverné par le paramètre $fn.

cylinder ( r = 20, h = 20 , $fn = 100) ;

// N'oubliez pas d'appuyer sur F5 pour voir le nouveau cylindre.

// Lors de la création du cylindre, nous pouvons spécifier le diamètre à la place du rayon, avec le paramètre d. 

//Par exemple, pour créer une monnaie, nous gardons le même diamètre en passant en paramètre un diamètre égal au double du rayon de tout à l'heure. De plus, nous applatissons la pièce en changeant sont hauteur. 

cylinder ( d = 40, h = 5 , $fn = 100) ;

// Observez maintenant que'est-ce qui se passe lorsque vous changez le numéro de côtés à un petit nombre. Pour commencer, faisons par exemple $fn = 6.

cylinder ( d = 40, h = 5 , $fn = 6) ;

// N'oubliez pas d'appuyer sur F5 pour afficher. 

// Voyez-vous la pièce hexagonale? Alors voilà, dans OpenSCAD, une pièce hexagonale s'obtient en appelant la commande cylinder avec 6 côté. Pourtant, du point de vue du vocabulaire mathématique ce n'est pas un cylindre, mais la commande utilisée évoque le mot "cylindre".

// Vous pouvez faire des pièces en forme de n'importe quel polygône régulier avec la commande cylinder - changez tout simplement le numéro de côtés.

// Par exemple, pour un pentagone régulier, faites 
// $fn = 5

cylinder ( d = 40, h = 5 , $fn = 5) ;

// Alors que pour un triangle équilateral il faudra appeler cylinder avec le paramètre $fn = 3.

cylinder ( d = 40, h = 5 , $fn = 3) ;

// Vous allez maintenant peaufiner la présentation de votre fichier pour garder les trois types de pièces que vous avez appris à faire dans ce tutoriel.

// Déplacez légèrement la monnaie créée toute à l'heure avec la commande cylindre et les 100 côtés pour un aperçu lisse. Rappelez-vous que la commande pour faire des translations est translate. Commentez votre code !  

//-- Monnaie
translate([-50,0,0]) 
  cylinder ( d = 40, h = 5, $fn = 100);

// Re-faisons maintenant la pièce hexagonale. Reprenons le code de la monnaie et changeons le nombre de côtés à 6. Nous ne le déplaçons pas, par défaut la pièce est posée sur l'origine, ce qui nous convient déjà.

cylinder ( d = 40, h = 5, $fn = 6);

// Re-faisons enfin la pièce en forme de triangle équilateral. Nous demandons à avoir trois côtés avec $fn = 3. Nous déplaçons la pièce avec translate. 

translate([50,0,0]) 
  cylinder ( d = 40, h = 5, $fn = 3);

// Vous savez desormais faire toute sorte de pièces polygonales avec la commande cylinder. Pour finir, documentez tout votre code et n'oubliez pas de sauvegarder votre fichier (et d'exporter au format STL si vous souhaitez imprimez le résultat)

//-- Exemples de pièces hexagonales ou cylindriques

//-- Monnaie
translate([-50,0,0]) 
  cylinder ( d = 40, h = 5, $fn = 100);

//-- Hexagone
cylinder ( d = 40, h = 5, $fn = 6);

//-- Triangle équilateral
translate([50,0,0])
  cylinder ( d = 40, h = 5, $fn = 3);
