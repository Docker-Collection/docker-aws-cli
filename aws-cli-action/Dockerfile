FROM python:3.13.0-alpine@sha256:ee60f1fbb72e1844edce9ea169e0342b477822a3b5ec7a32637803bdca5c7362 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]