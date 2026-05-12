FROM python:3.14.5-alpine@sha256:7128d274340c3aa2e34596c7a62fff85de8f4d71d46731f9dbe3c0e2cfd9117c as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]