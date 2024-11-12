FROM python:3.13.0-alpine@sha256:9dbfed76969ce780f827f9e00e8454a04a6fbef753a478bc7586223e790defd0 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.13.0-alpine@sha256:9dbfed76969ce780f827f9e00e8454a04a6fbef753a478bc7586223e790defd0

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]