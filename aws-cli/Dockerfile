FROM python:3.11.3-alpine@sha256:721023564970262d6ac79d30e2a2399d32555220e4f37bfe2c3a687b4f9721d9 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.11.3-alpine@sha256:721023564970262d6ac79d30e2a2399d32555220e4f37bfe2c3a687b4f9721d9

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]