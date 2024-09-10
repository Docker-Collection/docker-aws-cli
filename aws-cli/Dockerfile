FROM python:3.12.6-alpine@sha256:e0e4d3db19333a970e7acfdcb8863efe065be6c3038ef5018694f98162bffec0 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.12.6-alpine@sha256:e0e4d3db19333a970e7acfdcb8863efe065be6c3038ef5018694f98162bffec0

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]