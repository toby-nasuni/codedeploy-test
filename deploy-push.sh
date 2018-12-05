#!/bin/bash

FILENAME=${1:-Project3Method1.zip}

aws deploy push --application-name TobysCodeDeployTest --s3-location s3://tobys-codedeploy-test/$FILENAME --ignore-hidden-files --source . --region=us-west-1
