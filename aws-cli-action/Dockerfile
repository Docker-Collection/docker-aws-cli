FROM python:3.12.4-alpine@sha256:a982997504b8ec596f553d78f4de4b961bbdf5254e0177f6e99bb34f4ef16f95 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]