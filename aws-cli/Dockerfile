FROM python:3.12.4-alpine@sha256:ff870bf7c2bb546419aaea570f0a1c28c8103b78743a2b8030e9e97391ddf81b as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.12.4-alpine@sha256:ff870bf7c2bb546419aaea570f0a1c28c8103b78743a2b8030e9e97391ddf81b

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]