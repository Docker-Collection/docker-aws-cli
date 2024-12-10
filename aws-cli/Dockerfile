FROM python:3.13.1-alpine@sha256:40241d5dec48a0bc7a070e2244309fb409cd25509c56fef871494a9bbc57d51e as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.13.1-alpine@sha256:40241d5dec48a0bc7a070e2244309fb409cd25509c56fef871494a9bbc57d51e

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]