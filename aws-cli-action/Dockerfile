FROM python:3.12.4-alpine@sha256:dc095966439c68283a01dde5e5bc9819ba24b28037dddd64ea224bf7aafc0c82 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]