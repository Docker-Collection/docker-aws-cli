FROM python:3.11.2-alpine@sha256:84630610c68e7c97384bc6e10f5490ab7b8398c30cdfffefa139ae20c3407cda as Builder

# renovate: datasource=pypi depName=awscli
ARG AWSCLI_VERSION=1.27.78

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user awscli==${AWSCLI_VERSION}

FROM python:3.11.2-alpine@sha256:84630610c68e7c97384bc6e10f5490ab7b8398c30cdfffefa139ae20c3407cda

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]