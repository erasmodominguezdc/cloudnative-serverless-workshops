#!/bin/bash
set -v

#with cli --> kn service create helloworld-go --image=docker.io/erasmolpa/knative-go:v0 --env TARGET="Go Sample v1"

echo 'creating knative service...'
kubectl apply -f service.yaml

kubectl get ksvc -n knative-serving

