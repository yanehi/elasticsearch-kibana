#!/bin/env bash
#
#
set -x

echo "Delete all components of Elasticsearch and Kibana"

kubectl delete svc elasticsearch-master -n test-helm
kubectl delete svc elasticsearch-master-headless -n test-helm
kubectl delete svc kibana-http -n test-helm
kubectl delete ingress kibana-website -n test-helm
kubectl delete configmaps kibana-nginx  -n test-helm
kubectl delete statefulset elasticsearch-master -n test-helm
kubectl delete pvc elasticsearch-master-elasticsearch-master-0 -n test-helm
kubectl delete deployment kibana-deployment -n test-helm
