FROM python:3.12.1-alpine@sha256:801b54e1ec51c23dd6f174f3f26a0ff5bf2a002c4bc0bf05b0e2b9237e10f5b8 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.12.1-alpine@sha256:801b54e1ec51c23dd6f174f3f26a0ff5bf2a002c4bc0bf05b0e2b9237e10f5b8

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]