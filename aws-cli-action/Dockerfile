FROM python:3.14.2-alpine@sha256:59d996ce35d58cbe39f14572e37443a1dcbcaf6842a117bc0950d164c38434f9 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]