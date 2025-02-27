# lambda-localstack-demo


```shell
./build_aws.sh
docker-compose up -d
./rebuild.sh
./deploy.sh
./invoke.sh

```

Assuming that invoke.sh is successful, one should the following in output.json:

```json
{"statusCode": 200, "body": "{\"greeting\": \"Hello, Alice\"}"}
```
