FROM python:3.11.2-alpine@sha256:741e650697a506f0991ef88490320dee59f9e68de61734e034aee11d2f3baedf as Builder

COPY requirements.txt .

RUN apk add --update alpine-sdk build-base && \
    pip install --no-cache-dir --user -r requirements.txt

FROM python:3.11.2-alpine@sha256:741e650697a506f0991ef88490320dee59f9e68de61734e034aee11d2f3baedf

COPY --from=Builder /root/.local /root/.local

ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT [ "aws" ]