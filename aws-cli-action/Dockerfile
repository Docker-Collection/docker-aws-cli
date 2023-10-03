FROM python:3.12.0-alpine@sha256:ae35274f417fc81ba6ee1fc84206e8517f28117566ee6a04a64f004c1409bdac as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]