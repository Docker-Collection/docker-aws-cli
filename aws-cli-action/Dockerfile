FROM python:3.12.0-alpine@sha256:a5d1738d6abbdff3e81c10b7f86923ebcb340ca536e21e8c5ee7d938d263dba1 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]