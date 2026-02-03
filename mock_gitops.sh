#!/bin/bash
echo "Starting GitOps Sync..."
while true; do
  git pull --quiet origin main
  kubectl apply -f deployment.yaml > /dev/null 2>&1
  sleep 2
done
