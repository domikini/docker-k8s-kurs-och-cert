#!/bin/bash

#Setup minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
minikube config set driver docker
sudo snap install kubectl --classic
minikube start --insecure-registry "10.0.0.0/24"
echo 'alias k="kubectl"' >> /home/ubuntu/.bashrc

#Configure Docker registry in Minikube
minikube addons enable registry
kubectl -n kube-system expose rc/registry --type=ClusterIP --port=5000 --target-port=5000 --name=minikube-registry --selector='actual-registry=true'
export REGISTRY_IP=$(kubectl -n kube-system get svc/minikube-registry -o=template={{.spec.clusterIP}})
minikube ssh "echo '$REGISTRY_IP minikube-registry.kube-system.svc.cluster.local' | sudo tee -a /etc/hosts"
echo "127.0.0.1 minikube-registry.kube-system.svc.cluster.local" | sudo tee -a /etc/hosts
