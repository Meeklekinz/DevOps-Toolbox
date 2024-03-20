#!/bin/bash

# Define variables to specify the namespace and the path to the deployment YAML file.
NAMESPACE="example-namespace"
DEPLOYMENT_FILE="deployment.yaml"

# Check if deployment file exists before attempting to deploy.
if [ ! -f "$DEPLOYMENT_FILE" ]; then
  echo "Deployment file '$DEPLOYMENT_FILE' not found."
  exit 1
fi

# Deploy application
echo "Deploying application..."
kubectl apply -f "$DEPLOYMENT_FILE" -n "$NAMESPACE"