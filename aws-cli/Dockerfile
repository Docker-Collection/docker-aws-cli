FROM python:3.14.1-alpine@sha256:cc95388e96eeaa0a7dbf78d51d0d567cc0e9e2ae3ead2637877858de9b41a7bf as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.14.1-alpine@sha256:cc95388e96eeaa0a7dbf78d51d0d567cc0e9e2ae3ead2637877858de9b41a7bf

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]