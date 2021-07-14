#!/bin/bash

NAMESPACE=${1:-metrics}
RELEASE=${1:-prometheus-stack}

echo "Uninstalling prometheus stack"
helm delete ${RELEASE} --namespace ${NAMESPACE}

kubectl delete namespace ${NAMESPACE}