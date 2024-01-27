FROM python:3.12.1-alpine@sha256:3d75b059b5341f6e25d854395e54dea7158874e82b14c442be948ce3c62a9784 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]