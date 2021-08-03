#!/bin/bash

# SEE https://knative.dev/v0.21-docs/serving/samples/blue-green-deployment/

# Create BLUE deployment
kubectl apply -f ./blue-revision-config.yaml

# Obtain deployment name
kubectl get configurations blue-green-demo -o=jsonpath='{.status.latestCreatedRevisionName}'

#### GREEN ####

# Create GREEN deployment
kubectl apply -f ./green-revision-config.yaml
# Obtain deployment name
kubectl get configurations blue-green-demo -o=jsonpath='{.status.latestCreatedRevisionName}'

# Create blue-green Route . Add GREEN revision name for the previous deployment name
kubectl apply -f ./blue-green-demo-route.yaml

# Obtain URL of the GREEN deployment
kubectl get route blue-green-demo --output jsonpath="{.status.traffic[*].url}"

## ROUTE ##
# Create blue-green Route . Modify revision name for the previous deployment name
kubectl apply -f ./blue-green-demo-route.yaml

# Obtain URL of the blue green deployment
kubectl get route blue-green-demo