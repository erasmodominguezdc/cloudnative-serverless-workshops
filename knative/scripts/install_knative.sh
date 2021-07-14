#!/bin/bash

set -v

export KNATIVE_SERVING_VERSION="0.24.0"
export KNATIVE_EVENTING_VERSION="0.24.0"


echo 'there are more installation topics. Please , take a look to the following site https://knative.dev/docs/install/install-extensions/ '

# SEE https://knative.dev/docs/install/install-extensions/

kubectl create namespace knative-serving


#SEE https://knative.dev/docs/install/knative-with-operators/
echo 'installing knative operator....'
kubectl apply -f "https://github.com/knative/operator/releases/download/v${KNATIVE_SERVING_VERSION}/operator.yaml"


kubectl apply -f "https://github.com/knative/serving/releases/download/v${KNATIVE_SERVING_VERSION}/serving-crds.yaml"

# Install Serving Core Components
kubectl apply -f "https://github.com/knative/serving/releases/download/v${KNATIVE_SERVING_VERSION}/serving-core.yaml"


# Check pods have STATUS 'Running'
kubectl get pods -n knative-serving

kubectl create namespace knative-eventing

# Install Eventing CRDs
kubectl apply -f "https://github.com/knative/eventing/releases/download/v${KNATIVE_EVENTING_VERSION}/eventing-crds.yaml"


# Install Eventing Core
kubectl apply -f "https://github.com/knative/eventing/releases/download/v${KNATIVE_EVENTING_VERSION}/eventing-core.yaml"

# Install default in-memory channel (not suitable for production)
kubectl apply -f "https://github.com/knative/eventing/releases/download/v${KNATIVE_EVENTING_VERSION}/in-memory-channel.yaml"

# Install default Broker
kubectl apply -f "https://github.com/knative/eventing/releases/download/v${KNATIVE_EVENTING_VERSION}/mt-channel-broker.yaml"

# Install Sugar Controller
kubectl apply -f "https://github.com/knative/eventing/releases/download/v${KNATIVE_EVENTING_VERSION}/eventing-sugar-controller.yaml"

#Install HPA 
# SEE THIS DOCUMENTATION https://knative.dev/docs/install/installation-files/
kubectl apply -f "https://github.com/knative/serving/releases/download/v${KNATIVE_EVENTING_VERSION}/serving-hpa.yaml"

# Check pods have STATUS 'Running'
kubectl get pods -n knative-eventing

