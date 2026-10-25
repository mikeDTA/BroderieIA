# Atelier Broderie

Auteur : Michaël PONCET, https://github.com/mikeDTA

Application web (100 % navigateur, sans serveur) : photo (JPEG, PNG, SVG…) → fichier de broderie **DST** + palette de fils **EDR**, pour Toyota ESP-9000.

© Michaël PONCET — licence CC BY-NC 4.0 (usage non commercial, crédit obligatoire).

## Héberger sur GitHub
1. Créez un dépôt sur github.com (New repository), par exemple `atelier-broderie`.
2. Cliquez sur **Add file > Upload files**, glissez `index.html`, `LICENSE`, `README.md`, puis **Commit changes**.
3. **Settings > Pages > Source : Deploy from a branch > main / (root)** > Save.
4. Le site est disponible à `https://VOTRE-PSEUDO.github.io/atelier-broderie/`.

## Utilisation rapide
Importez une image, choisissez tissu et stabilisateur (l'espacement et le tirage s'adaptent), ouvrez **Réglages rapides** ou **Vue avancée**, puis exportez le **DST**.
Cochez **Portrait** pour un rendu hachuré façon dessin, avec option noir et blanc.

## État actuel
Fonctionnel : import de tout format d'image, conversion couleur / niveaux de gris / noir et blanc, simplification des zones (moins de coupes de fil), types de point (tatami, satin approché, point droit, contours), sous-couche, portrait, import de palette de fils (.gpl ou CSV), nombre de points et durée estimée, texte brodé, rendu relief, vue 3D tournante (three.js), 15 aiguilles avec choix des fils en direct, exports DST, 10O et EDR,  guide en PDF / Markdown / YesWiki dans `docs/`.
À venir : export EOF (format Embird Studio non documenté), vrai satin, reconnaissance d'écriture, réglages Ink/Stitch restants.
