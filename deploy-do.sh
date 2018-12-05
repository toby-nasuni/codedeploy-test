#!/bin/bash

ETAG=$1
FILENAME=${2:-Project3Method1.zip}
GROUP=${3:-LinuxDeployGroupInPlace}
CONFIG=${4:-CodeDeployDefault.OneAtATime}
CONFIG=${4:-CodeDeployDefault.HalfAtATime}
DESC=${5:-Deployment}

# aws deploy push --application-name TobysCodeDeployTest --s3-location s3://tobys-codedeploy-test/$FILENAME --ignore-hidden-files --source . --region=us-west-1
aws deploy create-deployment --application-name TobysCodeDeployTest --s3-location bucket=tobys-codedeploy-test,key=$FILENAME,bundleType=zip,eTag=$ETAG --deployment-group-name "$GROUP" --deployment-config-name "$CONFIG" --description "$DESC" --region=us-west-1
