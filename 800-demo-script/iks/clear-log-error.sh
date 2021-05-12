#!/bin/bash

echo "scale-up started ..... $(date)"

source ./config.sh

##### scale up
kubectl scale --replicas=1 deployment/ratings-v1 -n $NAMESAPCE_APP

# curl $STOP_ERROR_URL

echo "scale-up completed ..... $(date)"

