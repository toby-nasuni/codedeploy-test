#!/bin/bash

url="http://localhost:80/"
curl_command="curl --silent --output /dev/null --write-out %{http_code} $url"
resp_code=$($curl_command)
if [ "$resp_code" == "200" ] ; then
    exit 0
else
    exit 1
fi