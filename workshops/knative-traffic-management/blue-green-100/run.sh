#!/bin/bash
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'
# SEE https://knative.dev/v0.21-docs/serving/samples/blue-green-deployment/

#### BLUE ####
# Create BLUE deployment
echo -e "${BLUE}Create BLUE deployment${NC}"
kubectl apply -f ./blue.yaml

#### GREEN ####
# Create GREEN deployment
echo -e "${GREEN}Create GREEN deployment${NC}"
kubectl apply -f ./green.yaml

kn revision list -s blue-green-canary
