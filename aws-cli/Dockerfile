FROM python:3.13.1-alpine@sha256:992c45b1cf7affc93ff4aea53b28afb6921065bccb05b84cb69ac83475a7227c as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.13.1-alpine@sha256:992c45b1cf7affc93ff4aea53b28afb6921065bccb05b84cb69ac83475a7227c

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]