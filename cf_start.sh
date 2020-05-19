#!/bin/bash



# configure postgres
SERVICE=postgresql-db
URI=`echo $VCAP_SERVICES | jq -r '.["'$SERVICE'"][0].credentials.uri'`
export DB_URI=`echo $URI`

export PORT=8080
export NODE_ENV=development
export KONGA_HOOK_TIMEOUT=120000
export DB_ADAPTER=postgres
export KONGA_LOG_LEVEL=warn
export TOKEN_SECRET=some_secret_token


echo "PORT : " $PORT
echo "NODE_ENV : " $NODE_ENV
echo "KONGA_HOOK_TIMEOUT : " $KONGA_HOOK_TIMEOUT
echo "DB_ADAPTER : " $DB_ADAPTER
echo "KONGA_LOG_LEVEL : " $KONGA_LOG_LEVEL
echo "TOKEN_SECRET : " $TOKEN_SECRET

echo  "test 1 DB_URI : " $DB_URI


# start konga
npm start
