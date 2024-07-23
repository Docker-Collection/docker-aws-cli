FROM python:3.12.4-alpine@sha256:100d96cd32e818e470a4793ef56806c52052e7f76de0093a012625a02eb0a780 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]