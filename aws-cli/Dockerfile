FROM python:3.12.6-alpine@sha256:24097f5d0faa119261b862e551b7bcb5bc1b34b448b3394e6e91d61f93a220cf as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.12.6-alpine@sha256:24097f5d0faa119261b862e551b7bcb5bc1b34b448b3394e6e91d61f93a220cf

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]