#!/bin/bash

export APPC_ENV=preproduction
export TOKEN="`cat token.txt`"
sudo npm install appc-reg -g
echo "{ \"type\": \"timodule\", \"access\": \"public\", \"metadata\": { \"platform\": \"ios\" } }" > $MODULE_ROOT/ios/appc.json
echo "{ \"name\": \"ti.styledlabel\", \"version\": \"1.6.1\", \"description\": \"ti.styledlabel module\" }" > $MODULE_ROOT/ios/package.json
cd $MODULE_ROOT/ios
appc-reg --token "$TOKEN"
echo "{ \"type\": \"timodule\", \"access\": \"public\", \"metadata\": { \"platform\": \"android\" } }" > $MODULE_ROOT/android/dist/appc.json
echo "{ \"name\": \"ti.styledlabel\", \"version\": \"2.0.2\", \"description\": \"ti.styledlabel module\" }" > $MODULE_ROOT/android/dist/package.json
cd $MODULE_ROOT/android/dist
appc-reg --token "$TOKEN"
