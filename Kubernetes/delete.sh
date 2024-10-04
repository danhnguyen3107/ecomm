#!/bin/bash

kubectl delete deployment ecom-deployment --namespace=default

kubectl delete statefulset postgres-deployment  --namespace=default

#kubectl delete deployment postgres-deployment --namespace=default

kubectl delete service ecom-service postgres-service --namespace=default


kubectl delete configmap ecom-config --namespace=default

kubectl delete secret ecom-secrets --namespace=default



kubectl delete PersistentVolume local-postgres-pv
kubectl delete PersistentVolumeClaim postgres-pvc
kubectl delete StorageClass local-storage



