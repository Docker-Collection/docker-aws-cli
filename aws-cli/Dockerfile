FROM python:3.12.4-alpine@sha256:00321257a7e262b20a66a299d2c1232c60604f8cdd254aaecf8c7f19daf8b691 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.12.4-alpine@sha256:00321257a7e262b20a66a299d2c1232c60604f8cdd254aaecf8c7f19daf8b691

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]