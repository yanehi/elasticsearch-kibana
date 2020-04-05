#!/bin/env bash
#
#
set -x

kubectl create -f manifests/kibana-nginx.yaml -n test-helm
kubectl create -f manifests/kibana-http.yaml -n test-helm
kubectl create -f manifests/elasticsearch-master-headless.yaml -n test-helm
kubectl create -f manifests/elasticsearch-master-service.yaml -n test-helm
kubectl create -f manifests/elasticsearch-master.yaml -n test-helm
kubectl create -f manifests/kibana-deployment.yaml -n test-helm
