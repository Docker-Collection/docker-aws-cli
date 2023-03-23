FROM python:3.11.2-alpine@sha256:506eed442161ee54460830b5a4c282f84a97046d0222c917d62bcf069446c26a as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.11.2-alpine@sha256:506eed442161ee54460830b5a4c282f84a97046d0222c917d62bcf069446c26a

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]