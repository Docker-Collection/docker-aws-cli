FROM python:3.12.1-alpine@sha256:c793b92fd9e0e2a0b611756788a033d569ca864b733461c8fb30cfd14847dbcf as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]