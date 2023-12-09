FROM python:3.12.1-alpine@sha256:c793b92fd9e0e2a0b611756788a033d569ca864b733461c8fb30cfd14847dbcf as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.12.1-alpine@sha256:c793b92fd9e0e2a0b611756788a033d569ca864b733461c8fb30cfd14847dbcf

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]