FROM python:3.12.0-alpine@sha256:1d688a37293956d3e0658dfb54938082933cca848ec9105c1680b39d91b912a8 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]