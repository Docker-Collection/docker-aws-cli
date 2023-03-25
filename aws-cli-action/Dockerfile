FROM python:3.11.2-alpine@sha256:8af856dc9d9f8c6721f80ae6ca5e31184899f593bb77888c0b8da4772c1ec12f as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]