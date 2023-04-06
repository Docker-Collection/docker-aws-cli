FROM python:3.11.3-alpine@sha256:b44b270eea37d9319b06d68a87664ad7adc3680674a925d58fd1b96267787676 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.11.3-alpine@sha256:b44b270eea37d9319b06d68a87664ad7adc3680674a925d58fd1b96267787676

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]