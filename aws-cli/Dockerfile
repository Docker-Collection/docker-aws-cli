FROM python:3.15.1-alpine@sha256:54448f67d7c31c39e5cdd3ea2d6382395ce142806c284425f8e897d78a0465b3 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.15.1-alpine@sha256:54448f67d7c31c39e5cdd3ea2d6382395ce142806c284425f8e897d78a0465b3

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]