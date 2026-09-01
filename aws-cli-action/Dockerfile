FROM python:3.14.7-alpine@sha256:3f818d6811ff5f3f2b5e5d836df3d25c2dd2e588d3b4981338a8ba17e422f74f as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]