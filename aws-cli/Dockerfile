FROM python:3.12.5-alpine@sha256:64aee10ca0feab5a4a2e092b01605b7fdf2f99b5583eae649696c98ce46f41de as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.12.5-alpine@sha256:64aee10ca0feab5a4a2e092b01605b7fdf2f99b5583eae649696c98ce46f41de

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]