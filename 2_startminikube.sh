#!/bin/bash

minikube start -p camelk --memory=10240 --cpus=4 \
  --kubernetes-version=v1.13.0 \
  --vm-driver=virtualbox \
  --disk-size=50g \
  --extra-config=apiserver.enable-admission-plugins="LimitRanger,NamespaceExists,NamespaceLifecycle,ResourceQuota,ServiceAccount,DefaultStorageClass,MutatingAdmissionWebhook"

minikube -p camelk addons enable registry
