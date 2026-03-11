FROM ghcr.io/open-webui/open-webui:main

RUN pip install --no-cache-dir minio openpyxl pandas requests
