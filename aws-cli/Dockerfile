FROM python:3.12.0-alpine@sha256:09f18c1f8ca777f63934b415af9a781a0e5aaba5e005ba0475cba71bb3e8e609 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.12.0-alpine@sha256:09f18c1f8ca777f63934b415af9a781a0e5aaba5e005ba0475cba71bb3e8e609

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]