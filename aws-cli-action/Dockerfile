FROM python:3.13.0-alpine@sha256:9dbfed76969ce780f827f9e00e8454a04a6fbef753a478bc7586223e790defd0 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]