FROM python:3.13.1-alpine@sha256:76400ba76ffc77f62f588f51b902ae763c2b0bfaecfda7aafdf1cc10415fd766 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.13.1-alpine@sha256:76400ba76ffc77f62f588f51b902ae763c2b0bfaecfda7aafdf1cc10415fd766

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]