FROM python:3.12.3-alpine@sha256:32385e61c3414ffa5a6dbf52feace89f758ad68709a48d376d56a0232162665a as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]