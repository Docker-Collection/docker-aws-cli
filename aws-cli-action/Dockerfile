FROM python:3.14.0-alpine@sha256:0bf59161c735f604ea070af402d65b1a088ce3fd7fe4329f5983446148e84930 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]