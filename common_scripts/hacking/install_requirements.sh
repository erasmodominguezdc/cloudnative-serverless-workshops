#!/usr/bin/env bash

if [ "$(uname)" == "Darwin" ]; then
brew update

echo 'Installing make.....'
brew install make
make --version

echo 'Installing Golang.....'
brew install go
go --version

echo 'Installing Node.....'
brew install node
npm --version

echo 'Installing Docker.....'
brew install --cask docker
docker ps

echo 'Installing Knative CLI.....'
brew install knative/client/kn
kn version

echo 'installing istio ctl'
brew install istioctl
istioctl --help

echo 'Installing Helm.....'
brew install helm
helm --help

echo 'Installing Lens.....'
brew install --cask lens

echo 'Installing Kind.....'
brew install kind
kind --help

echo 'Installing Kubectx....'
brew install kubectx

echo 'Installing Kubeless....'
brew install kubeless
kubeless --help

fi

