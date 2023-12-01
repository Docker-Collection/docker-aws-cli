FROM python:3.12.0-alpine@sha256:3d2969ec27f0b38fc53ba7e4b6e01459a6f397f27649d82dc8e82631267bca0d as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.12.0-alpine@sha256:3d2969ec27f0b38fc53ba7e4b6e01459a6f397f27649d82dc8e82631267bca0d

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]