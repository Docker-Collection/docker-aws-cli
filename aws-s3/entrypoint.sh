#!/bin/sh

configure_checker () {
  if [ -z "${INPUT_AWS_S3_BUCKET:?}" ]; then
    echo "AWS_S3_BUCKET is not set. Quitting."
    exit 1
  fi

  if [ -z "${INPUT_AWS_ACCESS_KEY_ID:?}" ]; then
    echo "AWS_ACCESS_KEY_ID is not set. Quitting."
    exit 1
  fi

  if [ -z "${INPUT_AWS_SECRET_ACCESS_KEY:?}" ]; then
    echo "AWS_SECRET_ACCESS_KEY is not set. Quitting."
    exit 1
  fi

  # Default to us-east-1 if AWS_REGION not set.
  if [ -z "${INPUT_AWS_REGION:?}" ]; then
    AWS_REGION="us-east-1"
  fi

  # Override default AWS endpoint if user sets AWS_S3_ENDPOINT.
  if [ -n "${INPUT_AWS_S3_ENDPOINT:?}" ]; then
    ENDPOINT_APPEND="--endpoint-url $AWS_S3_ENDPOINT"
  fi

  # Setup s3 command.
  if [ -z "${INPUT_AWS_COMMAND:?}" ]; then
    echo "AWS_COMMAND variable not found. Quitting."
    exit 1
  fi
}

setup_profile () {
  aws configure --profile aws-s3 <<-EOF > /dev/null 2>&1
${AWS_ACCESS_KEY_ID}
${AWS_SECRET_ACCESS_KEY}
${AWS_REGION}
text
EOF
}

run_aws_s3_cp () {
  aws s3 cp \
    s3://${INPUT_AWS_S3_BUCKET}/${INPUT_DEST_DIR} ${INPUT_SOURCE_DIR:-.} \
    --profile aws-s3 \
    --no-progress \
    ${ENDPOINT_APPEND} $1
}


run_aws_s3_sync () {
  aws s3 sync \
    ${INPUT_SOURCE_DIR:-.} s3://${INPUT_AWS_S3_BUCKET}/${INPUT_DEST_DIR} \
    --profile aws-s3 \
    --no-progress \
    ${ENDPOINT_APPEND} $1
}


clean_profile () {
  aws configure --profile aws-s3 <<-EOF > /dev/null 2>&1
null
null
null
text
EOF
}

main () {
  configure_checker
  setup_profile

  if [ "$INPUT_AWS_COMMAND" = "cp" ]; then
    run_aws_s3_cp "$INPUT_FLAGS"
  elif [ "$INPUT_AWS_COMMAND" = "sync" ]; then
    run_aws_s3_sync "$INPUT_FLAGS"
  fi

  clean_profile
}

main
