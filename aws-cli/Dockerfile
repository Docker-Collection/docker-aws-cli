FROM python:3.11.2-alpine@sha256:84630610c68e7c97384bc6e10f5490ab7b8398c30cdfffefa139ae20c3407cda as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.11.2-alpine@sha256:84630610c68e7c97384bc6e10f5490ab7b8398c30cdfffefa139ae20c3407cda

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]