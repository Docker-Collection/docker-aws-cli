FROM python:3.13.0-alpine@sha256:ee60f1fbb72e1844edce9ea169e0342b477822a3b5ec7a32637803bdca5c7362 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.13.0-alpine@sha256:ee60f1fbb72e1844edce9ea169e0342b477822a3b5ec7a32637803bdca5c7362

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]