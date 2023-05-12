FROM python:3.11.3-alpine@sha256:4e8e9a59bf1b3ca8e030244bc5f801f23e41e37971907371da21191312087a07 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.11.3-alpine@sha256:4e8e9a59bf1b3ca8e030244bc5f801f23e41e37971907371da21191312087a07

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]