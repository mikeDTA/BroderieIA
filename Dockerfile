# BroderieIA - Atelier Broderie v2.2
# (c) Michaël PONCET (https://github.com/mikeDTA) - CC BY-NC 4.0
FROM nginx:stable-alpine
ARG APP_VERSION=2.2
LABEL org.opencontainers.image.title="BroderieIA - Atelier Broderie" \
      org.opencontainers.image.authors="Michaël PONCET (https://github.com/mikeDTA)" \
      org.opencontainers.image.licenses="CC-BY-NC-4.0" \
      org.opencontainers.image.version="${APP_VERSION}"
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY docs /usr/share/nginx/html/docs
HEALTHCHECK --interval=30s --timeout=5s --retries=3 \
  CMD wget -qO- http://127.0.0.1/ >/dev/null || exit 1
EXPOSE 80
