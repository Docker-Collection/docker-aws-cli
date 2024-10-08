FROM python:3.13.0-alpine@sha256:81362dd1ee15848b118895328e56041149e1521310f238ed5b2cdefe674e6dbf as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]