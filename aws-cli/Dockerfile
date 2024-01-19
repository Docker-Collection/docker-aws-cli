FROM python:3.12.1-alpine@sha256:4a156f7a9345db240524356459eca141f02a9bfebdb8a311d1cf982aa2e99210 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.12.1-alpine@sha256:4a156f7a9345db240524356459eca141f02a9bfebdb8a311d1cf982aa2e99210

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]