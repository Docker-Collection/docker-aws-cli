FROM python:3.12.0-alpine@sha256:c5bbde5ada8f427a1f2e2fb41f08077bfb4f1c779e82ab7e603a145275bec840 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.12.0-alpine@sha256:c5bbde5ada8f427a1f2e2fb41f08077bfb4f1c779e82ab7e603a145275bec840

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]