FROM python:3.14.4-alpine@sha256:01f125438100bb6b5770c0b1349e5200b23ca0ae20a976b5bd8628457af607ae as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]