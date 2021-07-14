#include .env
#config= --env-file .env
#DOCKER_IMAGE_KNATIVE=${DOCKER_REGISTRY}/${DOCKER_REPOSITORY_KNATIVE}

CLUSTER_NAME=kind-knative
PHONY: help
help:
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.PHONY: hacking
hacking: ## install tooling required, Kind , Kubectl , make ..
	cd ./common_scripts/hacking && ./install_requirements.sh && ./common_scripts/install_serverless_framework.sh

.PHONY: create-cluster
create-cluster: ## Create Kind Cluster
	cd ./common_scripts/kind && ./create_kind_cluster.sh ${CLUSTER_NAME}

.PHONY: delete-cluster
delete-cluster: ## Delete Kind Cluster
	cd ./common_scripts/kind && ./delete_kind_cluster.sh ${CLUSTER_NAME}

.PHONY: knative-install
knative-install: ## Install all the knative components in the cluster
	cd ./knative/scripts/ && ./install_knative.sh  && ./install_knative_kourier.sh

.PHONY: knative-build
knative-build: ## build and publish the docker image
	cd ./knative/helloworld-go/ && ./build.sh

.PHONY: knative-serve
knative-serve: ## deploy the knative
	cd ./knative/helloworld-go/ && ./run.sh

.PHONY: knative-event
knative-event: d-push h-lint h-package ## App EVENT

.PHONY: knative-uninstall
knative-uninstall:  ## UnInstall all the knative components in the cluster
	./knative/scripts/uninstall_knative.sh

.PHONY: knative-helloworld-serving
knative-helloworld-serving:  ## Run Knative Helloworld servicing
	cd ./knative/helloworld-go/ && ./run.sh

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
monitoring-install: ## Install monitoring stack (Prometheus, Grafana)
	cd ./common_scripts/kube-prometheus-stack && ./install_prometheus_operator.sh