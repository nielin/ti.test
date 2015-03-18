#!/bin/bash

export APPC_ENV=preproduction
export TOKEN="`cat token.txt`"
sudo npm install appc-reg -g
echo "{ \"type\": \"timodule\", \"access\": \"public\", \"metadata\": { \"platform\": \"ios\" } }" > ios/appc.json
echo "{ \"name\": \"ti.styledlabel\", \"version\": \"1.6.1\", \"description\": \"ti.styledlabel module\" }" > ios/package.json
cd ios
appc-reg --token "$TOKEN"
cd ../android/dist
echo "{ \"type\": \"timodule\", \"access\": \"public\", \"metadata\": { \"platform\": \"android\" } }" > android/dist/appc.json
echo "{ \"name\": \"ti.styledlabel\", \"version\": \"2.0.2\", \"description\": \"ti.styledlabel module\" }" > android/dist/package.json
appc-reg --token "$TOKEN"
