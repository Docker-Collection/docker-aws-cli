FROM python:3.11.2-alpine@sha256:506eed442161ee54460830b5a4c282f84a97046d0222c917d62bcf069446c26a as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]