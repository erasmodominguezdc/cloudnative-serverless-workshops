#include .env
#config= --env-file .env
#DOCKER_IMAGE_KNATIVE=${DOCKER_REGISTRY}/${DOCKER_REPOSITORY_KNATIVE}
CLUSTER_NAME=kind-knative

KNATIVE_SERVING_EXAMPLE=helloworld-go

PHONY: help
help:
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.PHONY: hacking
hacking: ## install tooling required, Kind , Kubectl , make ..
	cd ./common_scripts/hacking && ./install_requirements.sh && ./install_serverless_framework.sh

.PHONY: create-cluster
create-cluster: ## Create Kind Cluster
	cd ./common_scripts/kind && ./create_kind_cluster.sh ${CLUSTER_NAME}

.PHONY: delete-cluster
delete-cluster: ## Delete Kind Cluster
	cd ./common_scripts/kind && ./delete_kind_cluster.sh ${CLUSTER_NAME}

.PHONY: knative-install
knative-install: ## Install all the knative components in the cluster
	cd ./knative/scripts/ && ./install_knative.sh  && ./install_knative_kourier.sh

.PHONY: knative-uninstall
knative-uninstall:  ## UnInstall all the knative components in the cluster
	./knative/scripts/uninstall_knative.sh

.PHONY: knative-show
knative-show:  ## Knative configuration and resources
	kubectl get routes && kubectl get ksvc && kubectl get configurations && kubectl -n knative-serving  get cm config-autoscaler -o yaml
.PHONY: kubeless-install
kubeless-install: ## Install all the kubeless components in the cluster
	cd ./kubeless/scripts/ && ./install_kubeless.sh

.PHONY: kubeless-uninstall
kubeless-uninstall:  ## UnInstall all the kubeless components in the cluster
	cd ./kubeless/scripts/ && ./uninstall_kubeless.sh

.PHONY: monitoring-install
monitoring-install: ## Install monitoring Operator Stacks (Prometheus, Grafana)
	cd ./common_scripts/kube-prometheus-stack && ./install_prometheus_operator.sh

.PHONY: monitoring-uninstall
monitoring-uninstall: ## Install monitoring Operator Stacks (Prometheus, Grafana)
	cd ./common_scripts/kube-prometheus-stack && ./uninstall_prometheus_operator.sh

.PHONY: knative-workshop-build
knative-workshop-build: ## Build Knative Helloworld-go servicing By Default . This command accept a param KNATIVE_SERVING_EXAMPLE --> Example make workshop-build KNATIVE_SERVING_EXAMPLE=github-java-client
	cd ./workshops/knative-serving/$(KNATIVE_SERVING_EXAMPLE)/ && ./build.sh

.PHONY: knative-workshop-serve
knative-workshop-serve: ## Run Knative Helloworld-go servicing By Default . This command accept a param KNATIVE_SERVING_EXAMPLE --> Example make workshop-serve KNATIVE_SERVING_EXAMPLE=github-java-client
	cd ./workshops/knative-serving/$(KNATIVE_SERVING_EXAMPLE)/ && ./run.sh
