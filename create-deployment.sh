#!/bin/env bash
#
#
set -x

echo "Create namespace for setup"
kubectl create namespace elk-stack
kubectl create -f manifests/kibana-nginx.yaml -n elk-stack
kubectl create -f manifests/kibana-http.yaml -n elk-stack
kubectl create -f manifests/elasticsearch-master-headless.yaml -n elk-stack
kubectl create -f manifests/elasticsearch-master-service.yaml -n elk-stack
kubectl create -f manifests/elasticsearch-master.yaml -n elk-stack
kubectl create -f manifests/kibana-deployment.yaml -n elk-stack

echo "Expose Kibana port"
kubectl get pods -n elk-stack
# kubectl port-forward <kibana-deployment-name> 5601:5601 -n elk-stack
echo "http://localhost:5601"