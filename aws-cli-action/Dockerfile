FROM python:3.12.0-alpine@sha256:c5bbde5ada8f427a1f2e2fb41f08077bfb4f1c779e82ab7e603a145275bec840 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]