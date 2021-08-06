#!/bin/bash
kubectl apply -f ./canary.yaml

kn  revision list --namespace default

kubectl get pods -w
