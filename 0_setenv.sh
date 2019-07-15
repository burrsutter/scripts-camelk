#!/bin/bash

echo 'source 0_setenv.sh'

export MINIKUBE_HOME=/Users/burrsutter/minikube_1.1.1;
export KAMEL_BIN=$MINIKUBE_HOME/scripts-camelk/bin
export PATH=$MINIKUBE_HOME/bin:$KAMEL_BIN:$PATH

# https://github.com/apache/camel-k/pull/740
export KUBECONFIG=$MINIKUBE_HOME/.kube/config:$MINIKUBE_HOME/.kube/kubconfig2


export KUBE_EDITOR="code -w"

