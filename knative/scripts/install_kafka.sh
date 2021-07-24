#!/bin/bash
set -v
KAFKA_NAMESPACE=${1:-kafka-system}

helm repo add kafka-ui https://provectus.github.io/kafka-ui
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

helm repo update

kubectl create namespace ${KAFKA_NAMESPACE}

helm install kafka bitnami/kafka --namespace ${KAFKA_NAMESPACE}

helm install kafka-ui kafka-ui/kafka-ui --namespace ${KAFKA_NAMESPACE}

helm install kafka-exporter prometheus-community/prometheus-kafka-exporter  --set kafka.server=kafka:9092	--namespace ${KAFKA_NAMESPACE}
