FROM python:3.12.5-alpine@sha256:64aee10ca0feab5a4a2e092b01605b7fdf2f99b5583eae649696c98ce46f41de as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]