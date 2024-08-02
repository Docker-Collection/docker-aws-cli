FROM python:3.12.4-alpine@sha256:2abecb741d63f6627f318377cd5886bf89069458007317488b0e9fe06d3c11f6 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]