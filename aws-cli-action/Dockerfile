FROM python:3.11.3-alpine@sha256:721023564970262d6ac79d30e2a2399d32555220e4f37bfe2c3a687b4f9721d9 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]