FROM python:3.14.6-alpine@sha256:94457973ea8a27a799f0b8ea1fe3e3147fcbebaed63497a8af63b28195a08108 as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]