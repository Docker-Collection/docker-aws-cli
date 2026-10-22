FROM python:3.15.1-alpine@sha256:e85751f6fe48ddb0619557d606ad93685134347a821b85fd9cd9dfa61addb970 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]