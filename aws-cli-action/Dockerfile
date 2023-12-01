FROM python:3.12.0-alpine@sha256:3d2969ec27f0b38fc53ba7e4b6e01459a6f397f27649d82dc8e82631267bca0d as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]