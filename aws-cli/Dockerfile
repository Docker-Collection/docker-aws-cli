FROM python:3.12.0-alpine@sha256:a4029bd4a6ccfc9d23099f7c7fd808b7fe82ed8a625814ac524fc00017c9af6c as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.12.0-alpine@sha256:a4029bd4a6ccfc9d23099f7c7fd808b7fe82ed8a625814ac524fc00017c9af6c

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]