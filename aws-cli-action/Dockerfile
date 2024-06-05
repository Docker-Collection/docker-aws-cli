FROM python:3.12.3-alpine@sha256:d696c999babcff2d6194727e5c36908e7741aa530e6ed0d8e2fb4b6cfb7be43d as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]