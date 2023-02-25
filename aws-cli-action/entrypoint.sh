#!/bin/sh

set -e

# Ensure variables are defined
: "${INPUT_AWS_S3_BUCKET:?AWS_S3_BUCKET is not set.}"
: "${INPUT_AWS_ACCESS_KEY_ID:?AWS_ACCESS_KEY_ID is not set.}"
: "${INPUT_AWS_SECRET_ACCESS_KEY:?AWS_SECRET_ACCESS_KEY is not set.}"
: "${INPUT_AWS_COMMAND:?AWS_COMMAND variable not found.}"

# Default to us-east-1 if AWS_REGION not set.
AWS_REGION=${INPUT_AWS_REGION:-"us-east-1"}

# AWS Flags setting
AWS_FLAGS=${INPUT_AWS_FLAGS:-""}

# Sync reverse for download folder content, default is false
SYNC_REVERSE=${INPUT_SYNC_REVERSE:-false}

# If AWS_S3_ENDPOINT is set, than add append
if [ -n "${INPUT_AWS_S3_ENDPOINT:-}" ]; then
  ENDPOINT_APPEND="--endpoint-url $INPUT_AWS_S3_ENDPOINT"
fi

# Setup s3 profile
setup_profile() {
  aws configure --profile aws-s3 <<-EOF > /dev/null 2>&1
${INPUT_AWS_ACCESS_KEY_ID}
${INPUT_AWS_SECRET_ACCESS_KEY}
${AWS_REGION}
text
EOF
}

# Clear out credentials after we're done.
clean_profile() {
  aws configure --profile aws-s3 <<-EOF > /dev/null 2>&1
null
null
null
text
EOF
}

# Run an AWS S3 command using the specified subcommand.
aws_s3 () {
  subcommand=$1
  source=$2
  dest=$3

  # Run the specified subcommand using our dedicated profile and suppress verbose messages.
  # All other flags are optional via the `AWS_FLAGS` environment variable.
  sh -c "aws s3 ${subcommand} ${source} ${dest} \
                --profile aws-s3 \
                ${ENDPOINT_APPEND} ${AWS_FLAGS}"
}

run_command () {
  # Check which command to run and call the corresponding function.
  case "$INPUT_AWS_COMMAND" in
    "sync")
      if [ "${SYNC_REVERSE}" = false ]; then
        aws_s3 "sync" "${INPUT_SOURCE_DIR:-.}" "s3://${INPUT_AWS_S3_BUCKET}/${INPUT_DEST_DIR}"
      elif [ "${SYNC_REVERSE}" = true ]; then
        aws_s3 "sync" "s3://${INPUT_AWS_S3_BUCKET}/${INPUT_DEST_DIR}" "${INPUT_SOURCE_DIR:-.}"
      else
        echo "Unknow ${SYNC_REVERSE}. Quitting."
        exit 1
      fi
      ;;
    "cp")
      if [ -z "${INPUT_DEST_DIR}" ]; then
        echo "DEST_DIR is not set. Quitting."
        exit 1
      fi
      aws_s3 "cp" "s3://${INPUT_AWS_S3_BUCKET}/${INPUT_DEST_DIR}" "${INPUT_SOURCE_DIR:-.}"
      ;;
    "ls")
      aws_s3 "ls" "s3://${INPUT_AWS_S3_BUCKET}/${INPUT_SOURCE_DIR:-}"
      ;;
    "rm")
      if [ -z "${INPUT_DEST_DIR}" ]; then
        echo "DEST_DIR is not set. Quitting."
        exit 1
      fi
      aws_s3 "rm" "s3://${INPUT_AWS_S3_BUCKET}/${INPUT_DEST_DIR}"
      ;;
    *)
      echo "Invalid AWS_COMMAND: ${INPUT_AWS_COMMAND}. Quitting."
      exit 1
      ;;
  esac
}

main () {
  setup_profile
  run_command
  clean_profile
}

main
