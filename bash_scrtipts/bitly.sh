#!/bin/sh
# Bitly Generic access token
Accesstoken=$1
api=https://api-ssl.bitly.com/v4/shorten
longurl=$2
# Curl request
curl -s -H Authorization:\ $Accesstoken -H Content-Type: -d '{"long_url": "'"$longurl"\"} $api | jq -j .link | pbpaste
 #| xsel -ib; xsel -ob; echo
