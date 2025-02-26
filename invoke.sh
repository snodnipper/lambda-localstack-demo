#!/bin/bash
PAYLOAD='{"name": "Alice"}'
BASE64_PAYLOAD=$(echo -n "$PAYLOAD" | base64)

docker run --rm -it --network lambda-localstack-demo_default \
  -v $(pwd):/workdir -w /workdir \
  -e AWS_ACCESS_KEY_ID=test \
  -e AWS_SECRET_ACCESS_KEY=test \
  aws-cli-localstack \
  lambda invoke \
  --function-name my-lambda \
  --payload "$BASE64_PAYLOAD" \
  --endpoint-url http://host.docker.internal:4566 \
  --region us-east-1 \
  output.json