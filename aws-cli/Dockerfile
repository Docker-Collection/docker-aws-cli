FROM python:3.14.0-alpine@sha256:0bf59161c735f604ea070af402d65b1a088ce3fd7fe4329f5983446148e84930 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.14.0-alpine@sha256:0bf59161c735f604ea070af402d65b1a088ce3fd7fe4329f5983446148e84930

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]