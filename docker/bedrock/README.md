# Adding AWS Bedrock

Adding AWS BedRock to the Lab, this will deploy a docker container that presents an OpenAI API compatable gateway  

## Configure AWS

* Add models via "Model Access" int eh AWS BedRock console
* Create an iAM user and group to assign policy key
* Create a API key for the above user
* Create and assign an [iAM policy](iAMPolicy.json) to the group, the linked policy will allow the useage of any models you have approve in the first point


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
*Note the default API key to access the container is "bedrock"*

To test the container is running you can use curl to connect and list all models (note I have piped into jq for readability, ensure you have that installed.:

```
curl http://IPADDRESS:PORT/api/v1/models   -H "Content-Type: application/json"   -H "Authorization: Bearer bedrock" | jq 
```

## Configure OpenWeb UI

* Configure the OpenWeb UI to connect to the docker container
* Ensure you assign models to your user groups as the Docker container has FULL access to all the models you have provisioned
