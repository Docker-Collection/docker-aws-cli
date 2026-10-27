FROM python:3.15.2-alpine@sha256:1656b7eaf309cadf99069ea9de335c7f67a8355789cfc6f1835a05818996f081 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]