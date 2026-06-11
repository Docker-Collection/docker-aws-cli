FROM python:3.14.6-alpine@sha256:a5d5c75488ac235e8ea61eb3912eb9e7191c63532a2c87dab313ad671908d314 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.14.6-alpine@sha256:a5d5c75488ac235e8ea61eb3912eb9e7191c63532a2c87dab313ad671908d314

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]