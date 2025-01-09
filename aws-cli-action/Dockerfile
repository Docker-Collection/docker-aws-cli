FROM python:3.13.1-alpine@sha256:bfd74f8005463fabde28a198bd772a26ef2a92585c9d1be8cb2e8cf54f7d61a9 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]