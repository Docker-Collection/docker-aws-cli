FROM python:3.12.0-alpine@sha256:a4029bd4a6ccfc9d23099f7c7fd808b7fe82ed8a625814ac524fc00017c9af6c as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]