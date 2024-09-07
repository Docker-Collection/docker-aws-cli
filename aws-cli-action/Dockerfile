FROM python:3.12.5-alpine@sha256:bb5d0ac04679d78a1258e7dfacdb4d9bdefe9a10480eaf9b4bb09445d076369f as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]