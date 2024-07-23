FROM python:3.12.4-alpine@sha256:100d96cd32e818e470a4793ef56806c52052e7f76de0093a012625a02eb0a780 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.12.4-alpine@sha256:100d96cd32e818e470a4793ef56806c52052e7f76de0093a012625a02eb0a780

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]