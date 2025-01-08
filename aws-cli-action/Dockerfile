FROM python:3.13.1-alpine@sha256:76400ba76ffc77f62f588f51b902ae763c2b0bfaecfda7aafdf1cc10415fd766 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]