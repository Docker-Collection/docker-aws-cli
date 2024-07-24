FROM python:3.12.4-alpine@sha256:d7a5a8bf92f2cf5c27852bbfb48d34721d15ce1c638cae1b6d45fdb76480285c as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.12.4-alpine@sha256:d7a5a8bf92f2cf5c27852bbfb48d34721d15ce1c638cae1b6d45fdb76480285c

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]