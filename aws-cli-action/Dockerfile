FROM python:3.13.1-alpine@sha256:40241d5dec48a0bc7a070e2244309fb409cd25509c56fef871494a9bbc57d51e as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]