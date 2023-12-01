FROM python:3.12.0-alpine@sha256:09f18c1f8ca777f63934b415af9a781a0e5aaba5e005ba0475cba71bb3e8e609 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]