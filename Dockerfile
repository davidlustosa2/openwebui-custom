FROM ghcr.io/open-webui/open-webui:0.6.43

RUN pip install --no-cache-dir minio openpyxl pandas requests
