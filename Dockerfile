FROM ghcr.io/open-webui/open-webui:0.6.43

RUN pip install --no-cache-dir minio openpyxl pandas requests

# Favicons
COPY favicon.png /app/build/static/favicon.png
COPY favicon.png /app/backend/open_webui/static/favicon.png

COPY favicon.png /app/build/static/favicon-96x96.png
COPY favicon.png /app/backend/open_webui/static/favicon-96x96.png

COPY favicon.svg /app/build/static/favicon.svg
COPY favicon.svg /app/backend/open_webui/static/favicon.svg

COPY favicon.ico /app/build/static/favicon.ico
COPY favicon.ico /app/backend/open_webui/static/favicon.ico
COPY favicon.ico /app/build/favicon.ico

# Apple touch icon
COPY favicon.png /app/build/static/apple-touch-icon.png
COPY favicon.png /app/backend/open_webui/static/apple-touch-icon.png

# Splash
COPY favicon.png /app/build/static/splash.png
COPY favicon.png /app/backend/open_webui/static/splash.png

COPY favicon.png /app/build/static/splash-dark.png
COPY favicon.png /app/backend/open_webui/static/splash-dark.png

# =========================
# Título da aba
# =========================
RUN sed -i 's|<title>Open WebUI</title>|<title>VOXCIVIS</title>|g' /app/build/index.html

# =========================
# Texto "Open WebUI" no frontend
# Faz substituição nos arquivos compilados
# =========================
RUN grep -RIl "Open WebUI" /app/build | xargs -r sed -i 's/Open WebUI/VOXCIVIS/g'

# =========================
# Segurança extra: tenta também no backend
# =========================
RUN grep -RIl "Open WebUI" /app/backend | xargs -r sed -i 's/Open WebUI/VOXCIVIS/g'
