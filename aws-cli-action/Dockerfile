FROM python:3.12.1-alpine@sha256:14cfc61fc2404da8adc7b1cb1fcb299aefafab22ae571f652527184fbb21ce69 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]