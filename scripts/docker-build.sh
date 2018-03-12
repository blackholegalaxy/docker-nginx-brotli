#!/bin/bash
if [ "$TRAVIS_BRANCH" = "master" ]; then 
    docker build --no-cache -t "$DOCKERHUB_REGISTRY:$MASTER_LATEST_TAG" .
else
    docker build --no-cache -t "$DOCKERHUB_REGISTRY:$TRAVIS_BRANCH" .
fi