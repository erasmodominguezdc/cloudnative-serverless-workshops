#!/bin/bash
set -v

# SEE https://knative.dev/docs/serving/autoscaling/autoscale-go/

kubectl apply -f ./autoscale-go-autoscale-go-service.yaml

kubectl get ksvc autoscale-go

