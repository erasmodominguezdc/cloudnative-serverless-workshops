#!/bin/bash

export RELEASE=$(curl -s https://api.github.com/repos/kubeless/kubeless/releases/latest | grep tag_name | cut -d '"' -f 4)

kubectl create namespace kubeless

kubectl create -f https://github.com/kubeless/kubeless/releases/download/$RELEASE/kubeless-$RELEASE.yaml

kubectl create -f https://raw.githubusercontent.com/kubeless/kubeless-ui/master/k8s.yaml

kubectl get pods -n kubeless

kubectl get deployment -n kubeless

kubectl get customresourcedefinition