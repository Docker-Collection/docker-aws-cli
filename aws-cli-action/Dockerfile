FROM python:3.14.4-alpine@sha256:27ac3ba1699f7a526ad19bf0d35c12369b43d3439e08297a880398d97899c3d8 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]