FROM python:3.12.1-alpine@sha256:3d75b059b5341f6e25d854395e54dea7158874e82b14c442be948ce3c62a9784 as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.12.1-alpine@sha256:3d75b059b5341f6e25d854395e54dea7158874e82b14c442be948ce3c62a9784

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]