FROM python:3.12.6-alpine@sha256:7130f75b1bb16c7c5d802782131b4024fe3d7a87ce7d936e8948c2d2e0180bc4 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.12.6-alpine@sha256:7130f75b1bb16c7c5d802782131b4024fe3d7a87ce7d936e8948c2d2e0180bc4

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]