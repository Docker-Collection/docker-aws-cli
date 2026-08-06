FROM python:3.14.7-alpine@sha256:f2186fc449b8f7aa5897b542777427a21dc77864f271cf4d1646361cf681c2b9 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.14.7-alpine@sha256:f2186fc449b8f7aa5897b542777427a21dc77864f271cf4d1646361cf681c2b9

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]