FROM python:3.11.2-alpine@sha256:8af856dc9d9f8c6721f80ae6ca5e31184899f593bb77888c0b8da4772c1ec12f as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.11.2-alpine@sha256:8af856dc9d9f8c6721f80ae6ca5e31184899f593bb77888c0b8da4772c1ec12f

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]