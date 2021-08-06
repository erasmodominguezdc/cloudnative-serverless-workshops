#!/bin/bash
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'
# SEE https://knative.dev/v0.21-docs/serving/samples/blue-green-deployment/

#### BLUE ####
# Create BLUE deployment
echo -e "${BLUE}Create BLUE deployment${NC}"
kubectl apply -f ./blue-revision-config.yaml

# Obtain deployment name
kubectl get configurations blue-green-demo -o=jsonpath='{.status.latestCreatedRevisionName}'
echo -e "\\n"

#### GREEN ####
# Create GREEN deployment
echo -e "${GREEN}Create GREEN deployment${NC}"
kubectl apply -f ./green-revision-config.yaml
# Obtain deployment name
kubectl get configurations blue-green-demo -o=jsonpath='{.status.latestCreatedRevisionName}'
echo -e "\\n${GREEN}URL of GREEN Deployment${NC}"

# Obtain URL of the GREEN deployment
kubectl get route blue-green-demo --output jsonpath="{.status.traffic[*].url}"
echo -e "\\n"

## ROUTE ##
echo -e "${YELLOW}Route traffic 50/50${NC}"

# Create blue-green-distributed Route . Modify revision name for the previous deployment name
kubectl apply -f ./blue-green-demo-route.yaml

# Obtain URL of the blue green deployment
echo -e "\\n${YELLOW}URL blue green deployment${NC}"
kubectl get route blue-green-demo


#kn  revision list --namespace knative-serving
