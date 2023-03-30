FROM python:3.11.2-alpine@sha256:4b4078a3ab81edc2f5725cd42b065beaeeb4f9be3b4b1e3b4cf11dd6ae9720d3 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]