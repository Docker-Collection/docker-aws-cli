FROM python:3.13.6-alpine@sha256:f196fd275fdad7287ccb4b0a85c2e402bb8c794d205cf6158909041c1ee9f38d as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]