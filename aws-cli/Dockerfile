FROM python:3.11.2-alpine@sha256:1560a8776091b7e99e40d4c182a6d5dd073184cd998bc584029f0cf93f067dcb as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.11.2-alpine@sha256:1560a8776091b7e99e40d4c182a6d5dd073184cd998bc584029f0cf93f067dcb

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]