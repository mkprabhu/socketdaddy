#!/bin/bash

# Define the namespace
NAMESPACE="your-namespace"

# Get all pods in the namespace, filter for 'Evicted' status, and delete them
kubectl get pods -n $NAMESPACE --no-headers | grep Evicted | awk '{print $1}' | xargs -I {} kubectl delete pod -n $NAMESPACE {}
