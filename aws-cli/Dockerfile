FROM python:3.13.2-alpine@sha256:dfb9a4d4dead8fde38a19f124d02c7345cac853b5bcaeff9c0334f8344c47f18 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.13.2-alpine@sha256:dfb9a4d4dead8fde38a19f124d02c7345cac853b5bcaeff9c0334f8344c47f18

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]