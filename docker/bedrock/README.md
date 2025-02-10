# Adding AWS Bedrock

Adding AWS BedRock to the Lab, 

## Configure AWS

* Add models via "Model Access" int eh AWS BedRock console
* Create an iAM user and group to assign policy key
* Create a API key for the above user
* Create and assign an [iAM policy](iAMPolicy.json) to the group


## Build Docker Image 

```
git clone https://github.com/aws-samples/bedrock-access-gateway
cd bedrock-access-gateway/src/
docker build . -f  Dockerfile_ecs -t bedrock-gateway
```

## Docker Start

```
docker run -e AWS_ACCESS_KEY_ID=XXXXXXXXXXXXXXXXXXXXX \
-e AWS_SECRET_ACCESS_KEY="XXXXXXXXXXXXXXXXXXXXXXXXXX" \
-e AWS_REGION=us-west-2 \
-e AWS_DEFAULT_REGION=us-west-2 \
-e DEBUG=true \
-p 127.0.0.1:3002:80 \
bedrock-gateway
```
