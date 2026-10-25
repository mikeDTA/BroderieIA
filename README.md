# Atelier Broderie (dépôt broderieIA)

Auteur : Michaël PONCET, https://github.com/mikeDTA

Application web (100 % navigateur, sans serveur) : photo (JPEG, PNG, SVG…) → fichier de broderie **DST** + palette de fils **EDR**, pour Toyota ESP-9000.

© Michaël PONCET — licence CC BY-NC 4.0 (usage non commercial, crédit obligatoire).

## Héberger sur GitHub
1. Créez un dépôt sur github.com (New repository), par exemple `broderieIA`.
2. Cliquez sur **Add file > Upload files**, glissez `index.html`, `LICENSE`, `README.md`, puis **Commit changes**.
3. **Settings > Pages > Source : Deploy from a branch > main / (root)** > Save.
4. Le site est disponible à `https://VOTRE-PSEUDO.github.io/broderieIA/`.

## Utilisation rapide
Importez une image, choisissez tissu et stabilisateur (l'espacement et le tirage s'adaptent), ouvrez **Réglages rapides** ou **Vue avancée**, puis exportez le **DST**.
Cochez **Portrait** pour un rendu hachuré façon dessin, avec option noir et blanc.

## État actuel
Fonctionnel : import de tout format d'image, conversion couleur / niveaux de gris / noir et blanc, simplification des zones (moins de coupes de fil), style de point choisi par couleur (tatami, vrai satin, auto, point droit, contours), fils regroupés par couleur, OCR pour broder l'écriture en satin, sous-couche, portrait, import de palette de fils (.gpl ou CSV), nombre de points et durée estimée, texte brodé, rendu relief, vue 3D tournante (three.js), 15 aiguilles avec choix des fils en direct, exports DST, 10O et EDR,  texte brodé par-dessus l'image, stabilisateurs dessous et dessus par tissu, correspondance des couleurs en Lab, interface sans défilement, déploiement Docker (`Dockerfile`, `docker-compose.yml`, `nginx.conf`), guide en PDF / Markdown / YesWiki dans `docs/`.
Aussi : réglages de points par aiguille (15 couleurs), zigzag, sous-couches de contour et en zigzag, méthodes de remplissage (rangées, contours, cercles, méandre), points de départ, d'arrivée et d'arrêt, rendu 3D avec carte graphique.
À venir : export EOF (format Embird Studio non documenté), satin plus soigné aux jonctions, réglages Ink/Stitch restants (zigzag, sous-couches de contour, méthodes de remplissage).

## Déploiement avec Docker
`docker compose up -d --build` puis ouvrir http://localhost:8080 (voir le guide, partie 26).
