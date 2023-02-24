# Docker AWS CLI

Simple aws cli.

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
  aws-s3:latest
```

### Download from s3

Input all ``<>`` value.

Value ``SOURCE_DIR`` and ``DEST_DIR`` will be reverse.

``SOURCE_DIR`` will be where the file is stored.

``DEST_DIR`` will be where the file (folder) is to download.

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
  aws-s3:latest
```
