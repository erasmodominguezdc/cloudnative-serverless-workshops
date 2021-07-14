#!/bin/bash
set -v

#with cli --> kn service create helloworld-go --image=docker.io/erasmolpa/knative-go:v0 --env TARGET="Go Sample v1"

echo 'creating knative service...'
kubectl apply -f service.yaml

kubectl get ksvc -n knative-serving

kubectl apply --filename ./service.yaml
##http://localhost:57345/api/v3/actuator
##http://localhost:8080/api/v3/ranking?location=barcelona

kubectl get pods -n knative-serving -w
## Delete service like following:
#  kubectl get ksvc -n knative-serving
#  kubectl delete ksvc <NAME> -n knative-serving

