# BroderieIA - Atelier Broderie v2.5
# (c) Michaël PONCET (https://github.com/mikeDTA) - CC BY-NC 4.0

# Étape 1 : téléchargement facultatif de l'IA de détourage (modèle + ONNX Runtime Web)
FROM alpine:3.20 AS ai
ARG WITH_AI=1
RUN apk add --no-cache curl
COPY scripts/download-ai.sh /ai/download-ai.sh
RUN mkdir -p /out/models /out/vendor/ort && \
    if [ "$WITH_AI" = "1" ]; then sh /ai/download-ai.sh /out || echo "IA non telechargee : l'application fonctionne sans"; fi

# Étape 2 : serveur web
FROM nginx:stable-alpine
ARG APP_VERSION=2.5
LABEL org.opencontainers.image.title="BroderieIA - Atelier Broderie" \
      org.opencontainers.image.authors="Michaël PONCET (https://github.com/mikeDTA)" \
      org.opencontainers.image.licenses="CC-BY-NC-4.0" \
      org.opencontainers.image.version="${APP_VERSION}"
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=ai /out/ /usr/share/nginx/html/
COPY index.html /usr/share/nginx/html/index.html
COPY docs /usr/share/nginx/html/docs
HEALTHCHECK --interval=30s --timeout=5s --retries=3 \
  CMD wget -qO- http://127.0.0.1/ >/dev/null || exit 1
EXPOSE 80
