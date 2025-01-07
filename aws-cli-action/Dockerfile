FROM python:3.13.1-alpine@sha256:992c45b1cf7affc93ff4aea53b28afb6921065bccb05b84cb69ac83475a7227c as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]