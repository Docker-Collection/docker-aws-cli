FROM python:3.12.6-alpine@sha256:24097f5d0faa119261b862e551b7bcb5bc1b34b448b3394e6e91d61f93a220cf as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]