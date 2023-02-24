#!/bin/sh

set -e

# Ensure variables are defined
: "${AWS_S3_BUCKET:?AWS_S3_BUCKET is not set.}"
: "${AWS_ACCESS_KEY_ID:?AWS_ACCESS_KEY_ID is not set.}"
: "${AWS_SECRET_ACCESS_KEY:?AWS_SECRET_ACCESS_KEY is not set.}"
: "${AWS_COMMAND:?AWS_COMMAND variable not found.}"

# Default to us-east-1 if AWS_REGION not set.
AWS_REGION=${AWS_REGION:-"us-east-1"}

AWS_FLAGS=${AWS_FLAGS:-""}

# If AWS_S3_ENDPOINT is set, than add append
if [ -n "${AWS_S3_ENDPOINT:-}" ]; then
  ENDPOINT_APPEND="--endpoint-url $AWS_S3_ENDPOINT"
fi

# Setup s3 profile
setup_profile() {
  aws configure --profile aws-s3 <<-EOF > /dev/null 2>&1
${AWS_ACCESS_KEY_ID}
${AWS_SECRET_ACCESS_KEY}
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
run_aws_s3 () {
  local subcommand=$1
  local source=$2
  local dest=$3

  # Run the specified subcommand using our dedicated profile and suppress verbose messages.
  # All other flags are optional via the `AWS_FLAGS` environment variable.
  sh -c "aws s3 ${subcommand} ${source} ${dest} \
                --profile aws-s3 \
                ${ENDPOINT_APPEND} ${AWS_FLAGS}"
}

run_command () {
  # Check which command to run and call the corresponding function.
  case "$AWS_COMMAND" in
    "cp")
      if [ -z "${DEST_DIR}" ]; then
        echo "DEST_DIR is not set. Quitting."
        exit 1
      fi
      run_aws_s3 "cp" "s3://${AWS_S3_BUCKET}/${DEST_DIR}" "${SOURCE_DIR:-.}"
      ;;
    "sync")
      run_aws_s3 "sync" "${SOURCE_DIR:-.}" "s3://${AWS_S3_BUCKET}/${DEST_DIR}"
      ;;
    "ls")
      run_aws_s3 "ls" "s3://${AWS_S3_BUCKET}/${SOURCE_DIR:-}"
      ;;
    *)
      echo "Invalid AWS_COMMAND: ${AWS_COMMAND}. Quitting."
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
