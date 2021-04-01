Function as a Service

Servless: Aplicativos e computação sem a necessidade de provisionar um servidor

AWS Lambda

Assync
- S3
    * SNS --> SQS
    * SQS --> Lambda
    * Lambda --> SQS
- SNS
- CloudWatch Events/Event Bridge
    * cron task trigger lambda
- CodeCommit
- CodePipeline
- CloudWatch Logs (log processing)
- Simple Email Service
- CloudFormation
- Config
- IoT
- IoT Events


Event Source Mapping
    - Kinesis
    - Streams & Lambda (Kinesis & DynamoDB)
    - SQS & SQS FIFO (Long Polling)
    - Queues & Lambda
Event Source Mapping Scaling
    - Kinesis Data Stream & DynamoDB Streams
    - SQS
    - SQS FIFO


## Lambda - Destinations (use this instead DLQ)
- SQS
- SNS
- Lambda
- EventBridge bus

Event Source Mapping Discard 
- SQS
- SNS


(out VPC)Lambda --> Elastic Network Interface --> RDS
Lambda --> NAT --> IGW --> External API
(in VPC)Lambda --> VPC Endpoint --> DynamoDB
(in VPC)Lambda --> NAT --> IGW --> DynamoDB

## Basic settings
- memory
- timeout
- execution role

Lambda Function COnfiguration
RAM:
    - from 128mb to 3008mb in 64mb increments
    - if you need increase performance, increase memory

Timeout: default 3sec, maximum is 900s (15 minutes)    

Lambda Context: is temporary runtime you use to load external resources

Initialize outside the handler
```
import os

DB_URL = os.getenv("DB_URL")
db_client = db.connect(DB_URL)

def get_user_handler(event, context):
    user = db_client.get(user_id = event["user_id"])

    return user
```

## Lambda Functions /tmp space
- if your lambda function needs to download a big file to work
- max size is 512mb
- non temporary files use s3

## Lambda Concurrency and Throttling
- Concurrency limit: up to 1000 current executions
- if you need more than limit, you can open ticket
- s3 bucket --> lambda
- throttling errors 429 and system errors 500-series
- 6 hours trying
- cold start: code is loaded and code outside the handler run
- provisioned concurrency: is allocated before the function is invoked
- reserved and provisioned concurrency

## Lambda external dependencies
- aws x-ray sdk, database clients, etc
- you need install the packages alongside your code and zip it together

## Lambda and CloudFormation
- inline

## Lambda Layers
- Custom Runtimes
    - C++
    - Rust
- create layers for dependencies

## AWS Lambda Versions
- Qualifiers
    - version immutable
    - alias mutable (can apply blue/green strategy)

## Lambda & CodeDeploy
- CodeDeploy can help you automate traffic shift for lambda aliases
- Linear
- Canary
- AllAtOnce: Immediate

## AWS Lambda Limits to Know - per region
- execution:
    - memory allocation: 128 - 3008 (64mb increments)
    - maximum execution time: 900 seconds (15 minutes)
    - env variable 4 kb
    - disk capacity /tmp 512 mb