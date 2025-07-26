#!/bin/bash

NAMESPACE="rbac-propdev"

kubectl create serviceaccount admin-user -n $NAMESPACE
kubectl create serviceaccount reader-user -n $NAMESPACE
kubectl create serviceaccount writer-user -n $NAMESPACE

echo "ServiceAccounts created in namespace $NAMESPACE:"
kubectl get serviceaccount -n $NAMESPACE | grep -E 'admin-user|reader-user|writer-user'