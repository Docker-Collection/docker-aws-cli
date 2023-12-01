FROM python:3.12.0-alpine@sha256:1d688a37293956d3e0658dfb54938082933cca848ec9105c1680b39d91b912a8 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.12.0-alpine@sha256:1d688a37293956d3e0658dfb54938082933cca848ec9105c1680b39d91b912a8

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]