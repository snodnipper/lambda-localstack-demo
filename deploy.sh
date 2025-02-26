#!/bin/bash
docker run --rm -it --network lambda-localstack-demo_default \
  -v $(pwd):/workdir -w /workdir \
  -e AWS_ACCESS_KEY_ID=test \
  -e AWS_SECRET_ACCESS_KEY=test \
  aws-cli-localstack \
  lambda create-function \
  --function-name my-lambda \
  --runtime python3.9 \
  --handler lambda_function.lambda_handler \
  --role arn:aws:iam::123456789012:role/lambda-role \
  --region us-east-1 \
  --endpoint-url http://host.docker.internal:4566 \
  --zip-file fileb://function.zip