FROM python:3.12.4-alpine@sha256:d16d0127032bddebc11d8f5731c30b3f5af76cac58d8a0cb970a8e66a3044d13 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.12.4-alpine@sha256:d16d0127032bddebc11d8f5731c30b3f5af76cac58d8a0cb970a8e66a3044d13

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]