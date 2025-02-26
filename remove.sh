#!/bin/bash
docker run --rm -it --network lambda-localstack-demo_default -e AWS_ACCESS_KEY_ID=test -e AWS_SECRET_ACCESS_KEY=test aws-cli-localstack lambda delete-function --function-name my-lambda --endpoint-url http://host.docker.internal:4566 --region us-east-1
