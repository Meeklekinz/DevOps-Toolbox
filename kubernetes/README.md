# Kubernetes Directory

This directory contains Kubernetes YAML files for deploying applications on Kubernetes clusters.

## Contents

1. [deployment.yaml](./deployment.yml): YAML file defining the deployment configuration for the sample application.
2. [service.yaml](./service.yml): YAML file defining the service configuration for the sample application.

## Usage

### Deploying on Kubernetes

1. Apply the deployment configuration:

```bash
kubectl apply -f deployment.yaml
```

2. Apply the service configuration:

```bash
kubectl apply -f service.yaml
```
This will deploy the sample application on the Kubernetes cluster and expose it as a service.

## License

This project is licensed under the [GNU General Public License v3.0](../../LICENSE).