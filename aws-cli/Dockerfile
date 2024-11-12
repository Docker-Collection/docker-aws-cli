FROM python:3.13.0-alpine@sha256:d4daf858ce04f8e6f9a3f73d036f7a8dbb3b9541dccdb87e93993589449c5b9e as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.13.0-alpine@sha256:d4daf858ce04f8e6f9a3f73d036f7a8dbb3b9541dccdb87e93993589449c5b9e

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]