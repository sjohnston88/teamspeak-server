#!/bin/bash

aws cloudformation deploy \
    --region eu-west-1 \
    --stack-name teamspeak-server-yah \
    --capabilities CAPABILITY_NAMED_IAM \
    --template-file ./infra.yml \
    --no-fail-on-empty-changeset \
