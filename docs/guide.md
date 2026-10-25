# Atelier Broderie : guide complet pour débutants

© Michaël PONCET, créateur du projet (page GitHub : https://github.com/mikeDTA). Licence CC BY-NC 4.0 : usage non commercial, crédit obligatoire.

Ce guide s'adresse à des personnes qui n'ont aucune habitude de l'informatique. Chaque étape dit exactement sur quoi cliquer. Les captures d'écran montrent l'application avec une image d'exemple (formes colorées).

## 1. Avant de commencer

- **Navigateur** : le programme que vous utilisez pour aller sur internet (Chrome, Firefox, Edge, Safari).
- **GitHub** : un site gratuit qui range les fichiers d'un projet et peut les mettre en ligne.
- **Dépôt** : le « dossier » du projet sur GitHub.
- **DST** : le fichier de broderie que la machine sait lire. **EDR** : la liste des couleurs de fils.
- **Point** : un trou d'aiguille. **Coupe de fil** : la machine coupe le fil pour passer à une autre zone, ce qui laisse un petit bout de fil à rattraper.
- Vous avez besoin d'un ordinateur, d'une connexion internet, d'une adresse e-mail et d'une photo ou d'un dessin.

## 2. Récupérer le projet depuis votre GitHub

1. Ouvrez votre navigateur et allez sur `https://github.com/VOTRE-PSEUDO/atelier-broderie`.
2. Cliquez sur le bouton vert **Code**.
3. Cliquez sur **Download ZIP** : un fichier se télécharge, souvent dans le dossier Téléchargements.
4. Faites un clic droit sur ce fichier, puis **Extraire tout** (Windows) ou double-cliquez dessus (Mac).
5. Dans le dossier obtenu, double-cliquez sur `index.html` : l'application s'ouvre dans votre navigateur. Aucune installation n'est nécessaire.

Les utilisateurs de Git peuvent aussi taper `git clone https://github.com/VOTRE-PSEUDO/atelier-broderie.git`.

## 3. Installer le projet sur GitHub

### Créer un compte
1. Allez sur github.com et cliquez sur **Sign up**.
2. Saisissez votre e-mail, un mot de passe et un pseudo, puis validez le code reçu par e-mail.

### Créer le dépôt
1. Cliquez sur le **+** en haut à droite, puis **New repository**.
2. Dans **Repository name**, tapez `atelier-broderie`.
3. Cochez **Public** (obligatoire pour la mise en ligne gratuite).
4. Cliquez sur **Create repository**.

### Déposer les fichiers et les dossiers
1. Sur la page du dépôt vide, cliquez sur le lien **uploading an existing file** (ou **Add file** puis **Upload files**).
2. Ouvrez le dossier du projet sur votre ordinateur et sélectionnez tout son contenu : `index.html`, `README.md`, `LICENSE` et le dossier `docs`.
3. Faites glisser cette sélection dans la zone de la page GitHub. Les dossiers gardent leur contenu.
4. Attendez la fin du chargement, puis tapez dans la case en bas un message, par exemple « Première version ».
5. Cliquez sur le bouton vert **Commit changes**.

### Mettre le site en ligne (GitHub Pages)
1. Cliquez sur l'onglet **Settings** du dépôt, puis **Pages** dans le menu de gauche.
2. Sous **Build and deployment**, choisissez **Deploy from a branch**.
3. Pour **Branch**, choisissez `main` et `/ (root)`, puis **Save**.
4. Patientez une à deux minutes et rafraîchissez : l'adresse `https://VOTRE-PSEUDO.github.io/atelier-broderie/` apparaît en haut.

### Modifier plus tard
Refaites **Add file > Upload files** avec un fichier du même nom : il remplace l'ancien.

## 4. Démarrage rapide

![Écran d'accueil](img/01-accueil.png)

1. Cliquez sur **Choose File** (Choisir un fichier) à gauche et sélectionnez votre image : JPEG, PNG, SVG, GIF, WebP.
2. Le motif apparaît seul au centre. Les réglages par défaut conviennent à du coton avec un stabilisateur découpable.

![Motif généré après l'import](img/02-import.png)

3. Dans **Matière**, choisissez votre **Tissu** puis votre **Stabilisateur**. Le motif se recalcule : espacement des rangs et compensation de tirage changent.

![Choix du tissu (jersey)](img/03-tissu.png)

4. Lisez la ligne grise sous l'aperçu : nombre de points, couleurs, coupes de fil, taille et durée estimée.
5. Lisez le bloc **Montage sur cadre et aiguille** tout en bas : il indique l'aiguille et la façon de tendre le tissu.
6. Cliquez sur **DST** pour télécharger `broderie.dst`, puis sur **EDR (couleurs)** pour `broderie.edr`.
7. Copiez le fichier DST ou 10O vers votre brodeuse de la façon habituelle (support lu par la machine, ou conversion par Embird).
8. Faites toujours un essai sur une chute du même tissu.

Pour une machine Toyota, cliquez plutôt sur **10O (Toyota)** : le format est décrit à la partie 20. Testez-le d'abord sur une chute.

## 5. Comprendre ce qui s'affiche

- **Points** : nombre de piqûres, sans compter les déplacements sans broder.
- **Coupes de fil** : nombre de fois où la machine devra couper. Moins il y en a, plus la broderie est propre.
- **Durée estimée** : points divisés par la vitesse, plus 1 minute par changement de couleur et 5 secondes par coupe. C'est une estimation : changez la **vitesse machine** dans les réglages pour l'ajuster à votre brodeuse.
- **Fils** : une ligne par aiguille, avec le nom du fil. Cliquez sur la case de couleur pour choisir la teinte exacte de votre bobine.

## 6. Les réglages rapides

Cliquez sur **Réglages rapides** : un panneau apparaît sur le quart droit de l'écran. Chaque réglage a un curseur à faire glisser et une case où taper une valeur. Cliquez sur **Fermer** pour le cacher.

![Panneau des réglages rapides](img/04-rapide.png)

- **Largeur (mm)** : taille finale du motif. La hauteur suit. Plage 20 à 300, défaut 100. Vérifiez qu'elle tient dans votre cadre.
- **Nombre de couleurs** : couleurs maximum après simplification de l'image. Plage 2 à 12, défaut 5. Moins de couleurs signifie moins de changements de fil.
- **Vitesse machine (points/min)** : sert uniquement à l'estimation du temps. Plage 200 à 1000, défaut 650.
- **Lissage des zones** : arrondit les contours et supprime le bruit. Plage 0 à 4, défaut 1. Montez si l'image est une photo, laissez à 0 pour un logo net.
- **Zone minimale fusionnée** : les taches plus petites que cette taille prennent la couleur voisine. Plage 0 à 300, défaut 30. Montez pour réduire fortement les coupes.
- **Distance sans coupe de fil** : si deux zones de même couleur sont plus proches que cette distance, la machine passe d'une zone à l'autre en brodant au lieu de couper. Plage 0 à 10 mm, défaut 3. Au-delà de 5 mm, des fils de liaison peuvent se voir.
- **Espacement des rangs** : écart entre deux lignes de points. Plus petit signifie plus dense. Plage 0,2 à 1,2 mm.
- **Longueur de point** : longueur d'un point dans les remplissages. Plage 1 à 7 mm, défaut 3,5.
- **Angle** : direction des lignes de remplissage. Changer d'angle entre deux zones donne du relief.
- **Compensation de tirage** : élargit les formes pour contrer le rétrécissement du tissu. Plage 0 à 1 mm. Montez sur les tissus extensibles.

## 7. La vue avancée : tous les réglages

Cliquez sur **Vue avancée** (à gauche) : tous les réglages s'affichent sous l'aperçu, rangés par famille.

![Vue avancée](img/05-avance.png)

En plus des réglages rapides :

- **Point minimum (mm)**, défaut 0,3 : un point plus court est ignoré, ce qui évite les paquets de fil.
- **Décalage des rangs** (1 à 6, défaut 3) : décale les piqûres d'une ligne à l'autre pour éviter les rainures visibles.
- **Espacement sous-couche** (1 à 5 mm, défaut 2,5) : écart entre les lignes de la sous-couche, la trame posée sous le remplissage pour le stabiliser.
- **Longueur point sous-couche** (1,5 à 5 mm, défaut 3).
- **Angle sous-couche relatif** (0 à 180°, défaut 90) : angle ajouté à celui du remplissage. 90° croise les deux couches.
- **Espacement satin** (0,2 à 0,8 mm, défaut 0,4) et **Longueur max satin** (2 à 12 mm, défaut 6).
- **Longueur point droit** (1 à 5 mm, défaut 2,5) pour les contours.
- **Espacement des hachures portrait** (0,5 à 3 mm, défaut 1).

Les cases du menu de gauche : **Ignorer le fond** (ne brode pas la couleur dominante des bords), **Sous-couche** (active ou non la trame).

## 8. Les types de point

Choisissez-les dans **Type de point** (menu de gauche).

- **Remplissage tatami** : rangées de points décalés qui couvrent une surface. Réglages : espacement des rangs, longueur de point, angle, décalage, compensation, sous-couche. Équivalents Ink/Stitch : `row_spacing_mm`, `max_stitch_length_mm`, `angle`, `staggers`, `pull_compensation_mm`, `fill_underlay`.
- **Satin (approximatif)** : longs points rapprochés qui donnent un aspect brillant, adapté aux formes étroites. Réglages : espacement et longueur max. Ce n'est pas encore un vrai satin le long d'un axe : ne l'utilisez que sur des formes de moins de 12 mm de large.
- **Point droit (contours)** : une ligne de points qui suit le bord des zones. Réglage : longueur du point droit. Équivalent Ink/Stitch : `running_stitch_length_mm`.
- **Tatami + contour** : remplissage puis ligne de contour par-dessus, qui rend les bords plus nets.

## 9. Couleur, niveaux de gris, noir et blanc

Le menu **Conversion** s'applique à toutes les images.

![Conversion en niveaux de gris](img/06-gris.png)

- **Couleur** : l'image est réduite au nombre de couleurs choisi.
- **Niveaux de gris** : l'image devient grise, avec autant de nuances que de couleurs, et les fils gris les plus proches sont choisis. Idéal pour une broderie sobre.
- **Noir et blanc** : deux tons seulement, donc très peu de changements de fil.

## 10. Le mode portrait

Cochez **Portrait (effet dessin à la main)**. Seules les zones sombres sont remplies, avec des hachures espacées : l'effet ressemble à un croquis. Associez-le à **Niveaux de gris** ou **Noir et blanc** pour une version monochrome, ou à **Couleur** pour une version colorée. Réglez l'épaisseur du trait avec **Espacement des hachures portrait**.

![Mode portrait](img/08-portrait.png)

## 11. Ajouter des contours

![Tatami avec contours](img/07-contours.png)

Choisissez **Tatami + contour** : une ligne de point droit entoure chaque zone. Si le contour semble irrégulier, augmentez le lissage.

## 12. La palette de fils Madeira

La palette fournie est générique (18 couleurs). Pour utiliser Madeira :
1. Procurez-vous une palette Madeira au format **.gpl** (Ink/Stitch en propose) ou un fichier texte avec une ligne par fil : `code;nom;#rrggbb`.
2. Dans **Palette de fils**, cliquez sur **Importer Madeira**, puis choisissez le fichier.
3. Le nom du fichier et le nombre de fils s'affichent. Le motif se recalcule avec les fils les plus proches.

Je n'ai pas inclus la palette Madeira dans le projet : ses données de couleur ne sont pas libres de droits, et celles d'Ink/Stitch ont leur propre licence. Vérifiez les conditions du fichier que vous utilisez.

## 13. Réduire les coupes de fil sans perdre en qualité

1. Montez **Zone minimale fusionnée** (par exemple 60) : les petites taches disparaissent.
2. Montez **Lissage des zones** à 2.
3. Montez **Distance sans coupe de fil** à 4 ou 5 mm.
4. Baissez **Nombre de couleurs** si le motif reste chargé.
5. Regardez le compteur de coupes et l'aperçu après chaque changement.

## 14. Recettes selon le tissu

- **Coton, popeline** : espacement 0,4, stabilisateur découpable, aiguille 75/11.
- **Jersey, maille, polo** : espacement 0,45, compensation 0,3, découpable obligatoire, aiguille à bille.
- **Polaire, éponge** : stabilisateur hydrosoluble sur le dessus pour que les points ne s'enfoncent pas.
- **Jean, toile épaisse** : espacement 0,38, aiguille 90/14.
- **Satin, soie** : espacement 0,5, aiguille fine 65/9.

## 15. Si quelque chose ne va pas

- **L'image ne s'affiche pas** : essayez un autre fichier ou convertissez-la en PNG.
- **Trop de coupes de fil** : suivez la partie 13.
- **Les formes se déforment dans la couture** : augmentez la compensation de tirage et vérifiez le stabilisateur.
- **Le fichier ne s'ouvre pas sur la machine** : ouvrez-le d'abord dans Embird pour le convertir.

## 16. Broder du texte

1. Dans la zone **Texte** à gauche, tapez votre texte, par exemple un prénom.
2. Choisissez une **Police** : sans empattement, avec empattement, machine à écrire ou écriture manuscrite. Ces polices sont celles de votre ordinateur, elles peuvent donc varier d'un appareil à l'autre.
3. Cliquez sur **Broder ce texte**. L'application passe seule en noir et blanc avec le point satin approché.
4. Changez la couleur du fil dans la liste **Fils** si vous voulez une autre teinte.

![Texte brodé](img/09-texte.png)

Le texte est transformé en image puis brodé : l'application ne reconnaît pas l'écriture d'une photo. Les petites lettres (moins de 8 mm de haut) ne sont pas recommandées, et le nombre de coupes de fil est élevé tant que le vrai satin n'est pas disponible.

## 17. Le rendu relief 3D

1. Cochez **Rendu relief 3D** dans la zone **Affichage**.
2. Faites glisser **Direction de la lumière** : chaque point s'éclaire selon son angle, comme un vrai fil.
3. Faites glisser **Inclinaison de la vue** pour pencher l'aperçu en perspective.

![Rendu relief](img/10-relief.png)

C'est un rendu simulé en deux dimensions avec ombres et reflets, pas un modèle 3D que l'on peut faire tourner.

## 18. Brodeuse à 15 aiguilles

1. Le **Nombre de couleurs** va jusqu'à 15, soit une couleur par aiguille.
2. Sous l'aperçu, la liste **Fils** a une ligne par aiguille, de « Aiguille 1/15 » à « Aiguille 15/15 ». L'ordre suit l'ordre de broderie : la première couleur brodée est l'aiguille 1.
3. Dans chaque ligne, ouvrez le menu déroulant pour choisir un fil de la palette, ou cliquez sur la case de couleur pour une teinte libre.
4. L'aperçu change tout de suite. Les fils de la palette importée (Madeira) apparaissent dans ces menus.

![Choix des fils par aiguille](img/11-aiguilles.png)

Les fichiers ne contiennent pas le numéro d'aiguille : après le chargement, vérifiez sur la machine que chaque couleur est bien associée à l'aiguille voulue.

## 19. La vue 3D tournante

1. Cochez **Vue 3D tournante (three.js)** dans la zone **Affichage**. Une connexion internet est nécessaire la première fois, car la bibliothèque three.js est chargée depuis cdnjs.
2. Maintenez le clic et glissez pour faire tourner et pencher la broderie. La molette zoome.
3. Décochez **Rotation automatique** pour arrêter le tour continu.
4. Si la vue ne s'affiche pas, décochez la case, vérifiez votre connexion, puis recommencez.

Chaque point est un petit bloc éclairé, avec la couleur du fil choisi pour l'aiguille.

## 20. Les formats d'export

- **DST** : format Tajima, le plus répandu. Il contient les points, les sauts et les changements de couleur.
- **10O (Toyota)** : écrit d'après la structure d'un fichier 10O réel. Il contient les points, les sauts et les changements de couleur, sur des blocs de 512 octets. Le fichier de couleurs séparé (`.00o`) n'est pas généré : utilisez l'EDR ou réglez les fils sur la machine. Ce format n'a pas été essayé sur une brodeuse : faites un test sur une chute.
- **EDR** : la liste des couleurs de fils.
- **EOF** : c'est le fichier de projet vectoriel d'Embird Studio, sans description publique. Il n'est pas disponible. Ouvrez le DST dans Embird pour continuer à le modifier.

## 21. Ce qui n'est pas encore disponible

- Export EOF, vrai satin le long d'un axe, reconnaissance d'écriture sur photo, palette Madeira intégrée (à importer vous-même).
- Parmi les nombreux réglages d'Ink/Stitch, seuls ceux de ce guide sont reliés : le zigzag, les sous-couches de contour, les points de remplissage en spirale ou à motif, et le réglage de départ et d'arrivée ne le sont pas encore.
- Le schéma de montage est un texte, pas encore un dessin.
