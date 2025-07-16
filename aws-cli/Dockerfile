FROM python:3.13.5-alpine@sha256:d005934d99924944e826dc659c749b775965b21968b1ddb10732f738682db869 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.13.5-alpine@sha256:d005934d99924944e826dc659c749b775965b21968b1ddb10732f738682db869

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]