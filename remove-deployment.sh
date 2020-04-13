#!/bin/env bash
#
#
set -x

echo "Delete all components of Elasticsearch and Kibana"

kubectl delete svc elasticsearch-master -n elk-stack
kubectl delete svc elasticsearch-master-headless -n elk-stack
kubectl delete svc kibana-http -n elk-stack
kubectl delete ingress kibana-website -n elk-stack
kubectl delete configmaps kibana-nginx  -n elk-stack
kubectl delete statefulset elasticsearch-master -n elk-stack
kubectl delete pvc elasticsearch-master-elasticsearch-master-0 -n elk-stack
kubectl delete deployment kibana-deployment -n elk-stack
