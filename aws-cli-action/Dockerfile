FROM python:3.13.5-alpine@sha256:d005934d99924944e826dc659c749b775965b21968b1ddb10732f738682db869 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]