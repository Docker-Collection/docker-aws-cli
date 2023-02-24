# Docker AWS

Simple aws cli & s3.

## Using Docker Command

### Upload folder files to s3

Input all ``<>`` value.

```bash
docker run \
  --rm -it \
  -v $(pwd):/<PATH> \
  -e AWS_ACCESS_KEY_ID="<ACCESS_KEY_ID>" \
  -e AWS_SECRET_ACCESS_KEY="<SECRET_ACCESS_KEY>" \
  -e AWS_S3_ENDPOINT="<OPTION_S3_ENDPOINT>" \
  -e SOURCE_DIR="./<PATH>" \
  -e DEST_DIR="<OPTION>" \
  -e AWS_S3_BUCKET="<S3_BUCKET_NAME>" \
  -e AWS_REGION="us-east-1" \
  -e AWS_COMMAND="sync" \
  ghcr.io/docker-collection/aws-s3:latest
```

### Download from s3

Input all ``<>`` value.

Value ``SOURCE_DIR`` and ``DEST_DIR`` will be reverse.

```bash
docker run \
  --rm -it \
  -v $(pwd):/<PATH> \
  -e AWS_ACCESS_KEY_ID="<ACCESS_KEY_ID>" \
  -e AWS_SECRET_ACCESS_KEY="<SECRET_ACCESS_KEY>" \
  -e AWS_S3_ENDPOINT="<OPTION_S3_ENDPOINT>" \
  -e DEST_DIR="<DEST>" \
  -e SOURCE_DIR="./<PATH>" \
  -e AWS_S3_BUCKET="<S3_BUCKET_NAME>" \
  -e AWS_REGION="us-east-1" \
  -e AWS_COMMAND="cp" \
  ghcr.io/docker-collection/aws-s3:latest
```

### List s3

Input all ``<>`` value.

```bash
docker run \
  --rm -it \
  -e AWS_ACCESS_KEY_ID="<ACCESS_KEY_ID>" \
  -e AWS_SECRET_ACCESS_KEY="<SECRET_ACCESS_KEY>" \
  -e AWS_S3_ENDPOINT="<OPTION_S3_ENDPOINT>" \
  -e SOURCE_DIR="<OPTION>" \
  -e AWS_S3_BUCKET="<S3_BUCKET_NAME>" \
  -e AWS_REGION="us-east-1" \
  -e AWS_COMMAND="ls" \
  ghcr.io/docker-collection/aws-s3:latest
```

## Reference

- [s3-sync-action](https://github.com/jakejarvis/s3-sync-action)
- [s3-cp-action](https://github.com/prewk/s3-cp-action)
- [s3-cp-action](https://github.com/luke-m/s3-cp-action)
- [aws-s3-github-action](https://github.com/keithweaver/aws-s3-github-action)
- [action-s3-cp](https://github.com/qoqa/action-s3-cp)
