FROM python:3.11.3-alpine@sha256:b639067f4716bd14c759537a87b51296e81b5adbc2579ffae4e337ff235445c8 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.11.3-alpine@sha256:b639067f4716bd14c759537a87b51296e81b5adbc2579ffae4e337ff235445c8

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]