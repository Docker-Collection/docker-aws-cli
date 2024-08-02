FROM python:3.12.4-alpine@sha256:a0c22d88d8a5738d8dbe0d4482783f6d39595182b02df694ca170c664afff2b7 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]