FROM python:3.14.6-alpine@sha256:a5d5c75488ac235e8ea61eb3912eb9e7191c63532a2c87dab313ad671908d314 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]