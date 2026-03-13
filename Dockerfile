FROM ghcr.io/open-webui/open-webui:0.6.43

RUN pip install --no-cache-dir minio openpyxl pandas requests

COPY favicon.png /app/build/static/favicon.png
COPY favicon.png /app/backend/open_webui/static/favicon.png

COPY favicon.png  /app/build/static/favicon-dark.png
COPY favicon.png  /app/backend/open_webui/static/favicon-dark.png

COPY favicon.ico /app/build/favicon.ico
