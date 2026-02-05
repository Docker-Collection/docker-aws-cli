FROM python:3.14.3-alpine@sha256:e43b76c7e4a8a4621f4e84fd76e0dfb473eda5cc05fc58b2d4d640338eda48b1 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.14.3-alpine@sha256:e43b76c7e4a8a4621f4e84fd76e0dfb473eda5cc05fc58b2d4d640338eda48b1

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]