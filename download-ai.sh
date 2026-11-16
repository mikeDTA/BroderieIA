#!/bin/sh
# BroderieIA - téléchargement des fichiers de l'IA de détourage (open source)
# Modèle : U2-Netp (licence Apache-2.0, https://github.com/xuebinqin/U-2-Net),
#          fichier ONNX publié par le projet rembg (licence MIT).
# Bibliothèque : ONNX Runtime Web (licence MIT).
# Usage : sh scripts/download-ai.sh [dossier-de-destination]
set -e
OUT="${1:-$(dirname "$0")/..}"
mkdir -p "$OUT/models" "$OUT/vendor/ort"
MODEL_URL="https://github.com/danielgatis/rembg/releases/download/v0.0.0/u2netp.onnx"
echo "Téléchargement du modèle (environ 4,7 Mo)..."
curl -fL "$MODEL_URL" -o "$OUT/models/u2netp.onnx"
echo "8e83ca70e441ab06c318d82300c84806  $OUT/models/u2netp.onnx" | md5sum -c - \
  || echo "Attention : la somme de contrôle est différente, vérifiez le fichier."
ORT_VERSION="1.17.1"
BASE="https://cdn.jsdelivr.net/npm/onnxruntime-web@$ORT_VERSION/dist"
echo "Téléchargement d'ONNX Runtime Web $ORT_VERSION..."
for f in ort.min.js ort-wasm.wasm ort-wasm-simd.wasm ort-wasm-threaded.wasm ort-wasm-simd-threaded.wasm; do
  curl -fL "$BASE/$f" -o "$OUT/vendor/ort/$f" || echo "Fichier non téléchargé : $f"
done
echo "Terminé. Rechargez l'application puis cliquez sur « Détourer »."
