FROM python:3.12.4-alpine@sha256:00321257a7e262b20a66a299d2c1232c60604f8cdd254aaecf8c7f19daf8b691 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]