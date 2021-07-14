#!/bin/bash

set -v
kubectl -n knative-serving patch cm config-observability \
--patch "$(cat config-observability-patch.yaml)"

kubectl -n knative-serving get cm config-observability -oyaml
