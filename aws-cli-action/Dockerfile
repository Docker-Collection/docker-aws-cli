FROM python:3.11.2-alpine@sha256:741e650697a506f0991ef88490320dee59f9e68de61734e034aee11d2f3baedf as Builder

COPY requirements.txt .
COPY entrypoint.sh .

RUN apk add --update && \
    pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "/entrypoint.sh" ]