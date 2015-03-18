#!/bin/bash

export APPC_ENV=preproduction
export TOKEN=`echo token.txt`
sudo npm install appc-reg -g
echo "{ \"type\": \"timodule\", \"metadata\": { \"platform\": \"ios\" } }" > ios/appc.json
echo "{ \"name\": \"ti.styledlabel\", \"version\": \"1.6.1\", \"description\": \"ti.styledlabel module\" }" > ios/package.json
cd ios
appc-reg --token "$TOKEN""
