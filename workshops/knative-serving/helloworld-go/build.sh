#!/bin/bash
set -o nounset
set -x

#TODO: Convert this kind of scripts into bash functions.
DOCKER_REGISTRY=${1:-erasmolpa}
DOCKER_REPOSITORY=${1:-helloworld-go}
TAG=${1:-latest}

docker build --no-cache -t ${DOCKER_REGISTRY}/${DOCKER_REPOSITORY}:${TAG} .

docker push ${DOCKER_REGISTRY}/${DOCKER_REPOSITORY}:${TAG}