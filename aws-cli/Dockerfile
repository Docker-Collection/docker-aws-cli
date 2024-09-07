FROM python:3.12.5-alpine@sha256:4dae8a34125c839fce52c0b4efa963b1be1ce7e84df8eb1a62136049010916da as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.12.5-alpine@sha256:4dae8a34125c839fce52c0b4efa963b1be1ce7e84df8eb1a62136049010916da

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]