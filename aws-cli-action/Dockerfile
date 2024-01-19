FROM python:3.12.1-alpine@sha256:4a156f7a9345db240524356459eca141f02a9bfebdb8a311d1cf982aa2e99210 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]