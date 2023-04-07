FROM python:3.11.3-alpine@sha256:507818d46649f8543e58d19a00e3a1a428bb7e87c0bf7f7d1ffe7b076cda11be as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]