FROM python:3.11.2-alpine@sha256:1560a8776091b7e99e40d4c182a6d5dd073184cd998bc584029f0cf93f067dcb as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]