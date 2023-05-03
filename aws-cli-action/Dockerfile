FROM python:3.11.3-alpine@sha256:b639067f4716bd14c759537a87b51296e81b5adbc2579ffae4e337ff235445c8 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]