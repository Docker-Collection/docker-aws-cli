FROM python:3.11.4-alpine@sha256:25df32b602118dab046b58f0fe920e3301da0727b5b07430c8bcd4b139627fdc as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.11.4-alpine@sha256:25df32b602118dab046b58f0fe920e3301da0727b5b07430c8bcd4b139627fdc

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]