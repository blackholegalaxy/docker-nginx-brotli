#!/bin/bash

docker login -u "$DOCKERHUB_USERNAME" -p "$DOCKERHUB_TOKEN"

if [ "$TRAVIS_BRANCH" = "master" ]; then 
    docker push "$DOCKERHUB_REGISTRY:$MASTER_LATEST_TAG"
else
    docker push "$DOCKERHUB_REGISTRY:$TRAVIS_BRANCH"
fi