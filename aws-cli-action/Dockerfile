FROM python:3.11.3-alpine@sha256:4e8e9a59bf1b3ca8e030244bc5f801f23e41e37971907371da21191312087a07 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]