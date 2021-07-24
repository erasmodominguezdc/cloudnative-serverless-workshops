#!/bin/bash
set -v

istioctl x uninstall --purge -y

kubectl delete namespace istio-system
