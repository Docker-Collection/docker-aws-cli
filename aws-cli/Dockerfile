FROM python:3.13.1-alpine@sha256:bfd74f8005463fabde28a198bd772a26ef2a92585c9d1be8cb2e8cf54f7d61a9 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.13.1-alpine@sha256:bfd74f8005463fabde28a198bd772a26ef2a92585c9d1be8cb2e8cf54f7d61a9

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]