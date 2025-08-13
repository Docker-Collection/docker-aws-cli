FROM python:3.13.6-alpine@sha256:af1fd7a973d8adc761ee6b9d362b99329b39eb096ea3c53b8838f99bd187011e as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.13.6-alpine@sha256:af1fd7a973d8adc761ee6b9d362b99329b39eb096ea3c53b8838f99bd187011e

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]