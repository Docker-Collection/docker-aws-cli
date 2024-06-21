FROM python:3.12.4-alpine@sha256:dc095966439c68283a01dde5e5bc9819ba24b28037dddd64ea224bf7aafc0c82 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.12.4-alpine@sha256:dc095966439c68283a01dde5e5bc9819ba24b28037dddd64ea224bf7aafc0c82

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]