#!/bin/bash

set -v

export KNATIVE_SERVING_VERSION="0.24.0"
export KNATIVE_EVENTING_VERSION="0.24.0"

# Install Istio
kubectl apply -f "https://github.com/knative/net-istio/releases/download/v${KNATIVE_SERVING_VERSION}/istio.yaml"

# Install Knative Istio Controller
kubectl apply -f "https://github.com/knative/net-istio/releases/download/v${KNATIVE_SERVING_VERSION}/net-istio.yaml"

# Check pods have STATUS 'Running'
kubectl get pods -n istio-system

# Optional: Setup Magic DNS (xip.io)
kubectl apply -f "https://github.com/knative/serving/releases/download/v${KNATIVE_SERVING_VERSION}/serving-default-domain.yaml"