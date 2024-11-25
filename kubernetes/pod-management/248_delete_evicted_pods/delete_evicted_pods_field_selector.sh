#!/bin/bash

# Define the namespace
NAMESPACE="your-namespace"

# Get pods with status.phase=Failed and status.reason=Evicted, then delete them
kubectl get pods -n $NAMESPACE --field-selector=status.phase=Failed -o jsonpath='{.items[?(@.status.reason=="Evicted")].metadata.name}' | xargs -I {} kubectl delete pod -n $NAMESPACE {}
