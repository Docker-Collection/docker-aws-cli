FROM python:3.11.3-alpine@sha256:b44b270eea37d9319b06d68a87664ad7adc3680674a925d58fd1b96267787676 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]