#!/bin/bash
set -v
#SEE https://www.arthurkoziel.com/running-knative-with-istio-in-kind/
#SEE https://istio.io/latest/docs/setup/install/istioctl/

ENABLE_KNATIVE_SERVING_INTEGRATION=${1-true}
echo 'installing istio.....'
istioctl manifest apply --set profile=default -y

echo 'waiting for istio deployment.....'
sleep 20

kubectl get pods -n istio-system

echo 'verifying the istio installation....'
istioctl manifest generate --set profile=default | istioctl verify-install -f -

echo 'patching the istio ingressgateway. By default is loadbalancer and that configuration doesnt work for a local cluster...'
kubectl patch service istio-ingressgateway -n istio-system --patch "$(cat ./config/istio-patch-ingressgateway-nodeport.yaml)"

if [ "$ENABLE_KNATIVE_SERVING_INTEGRATION" = true ] ; then

echo 'We patch the Knative config via kubectl and set the domain to 127.0.0.1.nip.io which will forward all requests to 127.0.0.1:'
kubectl patch configmap/config-domain \
  --namespace knative-serving \
  --type merge \
  --patch '{"data":{"127.0.0.1.nip.io":""}}'
echo 'We enable Istio sidecar injection for the knative-serving namespace and deploy the Knative service in it:'
kubectl label namespace knative-serving istio-injection=enabled
fi
