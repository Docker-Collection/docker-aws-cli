FROM python:3.12.4-alpine@sha256:d7a5a8bf92f2cf5c27852bbfb48d34721d15ce1c638cae1b6d45fdb76480285c as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]