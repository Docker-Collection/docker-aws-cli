FROM python:3.11.2-alpine@sha256:1a5c14626ca7911ae16465aa338ed3f5c1bc0212a3eb16263d0d476bf3d0132d as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]