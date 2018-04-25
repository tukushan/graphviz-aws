#!/bin/bash
####################################
# Example graphviz/dot with AWS Icons
####################################

# get absolute dir so we can include this script from outside this directory if need be
BASE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/AWS-Arch-Icon-Sets_Feb-18"
I_COMPUTE_BASE="$BASE/Compute/Compute"
I_DB_BASE="$BASE/Database/Database"
I_MESSAGING_BASE="$BASE/Messaging/Messaging"
I_ANALYTICS_BASE="$BASE/Analytics/Analytics"

I_STORAGE_BASE="$BASE/Storage/Storage"
I_GENERAL_BASE="$BASE/General/General"

I_FORMAT='shape=none, image="'

I_INTERNET="${I_FORMAT}${I_GENERAL_BASE}_Internet.png\""
I_AWS="${I_FORMAT}${I_GENERAL_BASE}_AWScloud.png\""

I_EC2="${I_FORMAT}${I_COMPUTE_BASE}_AmazonEC2_instance.png\""
I_ELB="${I_FORMAT}${I_COMPUTE_BASE}_ElasticLoadBalancing_ClassicLoadbalancer.png\""
I_ALB="${I_FORMAT}${I_COMPUTE_BASE}_ElasticLoadBalancing_ApplicationLoadBalancer.png\""
I_MYSQL="${I_FORMAT}${I_DB_BASE}_AmazonRDS_MySQLDBinstance.png\""
I_MYSQL_SLAVE="${I_FORMAT}${I_DB_BASE}_AmazonRDS_instancestandby.png\""
I_S3="${I_FORMAT}${I_STORAGE_BASE}_AmazonS3.png\""
I_S3_BUCKET="${I_FORMAT}${I_STORAGE_BASE}_AmazonS3_bucket.png\""
I_GLACIER="${I_FORMAT}${I_STORAGE_BASE}_AmazonGlacier.png\""
I_EBS_VOL="${I_FORMAT}${I_STORAGE_BASE}_Volume.png\""
I_EBS_SNAP="${I_FORMAT}${I_STORAGE_BASE}_Snapshot.png\""
I_EBS="${I_FORMAT}${I_STORAGE_BASE}_AmazonEBS.png\""
I_LAMBDA="${I_FORMAT}${I_COMPUTE_BASE}_AWSLambda_LambdaFunction.png\""
I_SNS="${I_FORMAT}${I_MESSAGING_BASE}_AmazonSNS.png\""
I_DC="${I_FORMAT}${I_GENERAL_BASE}_corporatedatacenter.png\""
I_DP="${I_FORMAT}${I_ANALYTICS_BASE}_AWSDataPipeline.png\""
I_USER="${I_FORMAT}${I_GENERAL_BASE}_users.png\""

I_POSTGRESQL="${I_FORMAT}${I_DB_BASE}_AmazonRDS_PostgreSQLinstance.png\""
I_DYNAMODB="${I_FORMAT}${I_DB_BASE}_AmazonDynamoDB.png\""

I_SQS="${I_FORMAT}${I_MESSAGING_BASE}_AmazonSQS_queue.png\""

I_KINESIS="${I_FORMAT}${I_ANALYTICS_BASE}_AmazonKinesis_AmazonKinesisStreams.png\""
I_ATHENA="${I_FORMAT}${I_ANALYTICS_BASE}_AmazonAthena.png\""

I_LOGGING="${I_FORMAT}${I_COMPUTE_BASE}_AmazonVPC_flowlogs.png\""

I_SDK_BASE="$BASE/SDKs/SDKs"
I_SDK_ANDROID="${I_FORMAT}${I_SDK_BASE}_Android.png\""
I_SDK_IOS="${I_FORMAT}${I_SDK_BASE}_iOS.png\""
I_SDK_NET="${I_FORMAT}${I_SDK_BASE}_Net.png\""

# Transports
OVER_HTTP='[color="blue"];'
OVER_MYSQL='[color="red"];'
OVER_API='[color="green"];'
OVER_SNS='[color="blue"];'
OVER_EVENT='[color="red"];'
