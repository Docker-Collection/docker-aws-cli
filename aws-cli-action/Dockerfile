FROM python:3.13.2-alpine@sha256:dfb9a4d4dead8fde38a19f124d02c7345cac853b5bcaeff9c0334f8344c47f18 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]