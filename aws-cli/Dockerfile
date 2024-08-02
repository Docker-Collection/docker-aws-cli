FROM python:3.12.4-alpine@sha256:2abecb741d63f6627f318377cd5886bf89069458007317488b0e9fe06d3c11f6 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.12.4-alpine@sha256:2abecb741d63f6627f318377cd5886bf89069458007317488b0e9fe06d3c11f6

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]