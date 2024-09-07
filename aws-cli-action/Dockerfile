FROM python:3.12.5-alpine@sha256:4dae8a34125c839fce52c0b4efa963b1be1ce7e84df8eb1a62136049010916da as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]