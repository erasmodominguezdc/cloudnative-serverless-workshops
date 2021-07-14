#!/bin/bash
set -o nounset
set -x

NAMESPACE=${1:-ingress-nginx}
RELEASE=${1:-ingress}

echo 'Installing Nginx Controller..'
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

kubectl create namespace ${NAMESPACE}

helm install ${RELEASE} ingress-nginx/ingress-nginx -n ${NAMESPACE}

kubectl wait --namespace ${NAMESPACE} \
  --for=condition=ready pod \
  --selector=app.kubernetes.io/component=controller \
  --timeout=90s
