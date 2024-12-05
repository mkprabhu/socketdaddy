
# Redis Cluster on Kubernetes

This repository contains example configurations for deploying a Redis cluster on Kubernetes. These files enable the setup of a distributed Redis cluster with high availability and scalability.

## Files Included

1. **`redis-statefulset.yaml`**
   - Deploys Redis using a Kubernetes StatefulSet.
   - Configures six replicas (three master nodes and three replicas).
   - Includes persistent volume mounts for data storage.

2. **`redis-service.yaml`**
   - Defines a headless service for Redis pods.
   - Enables cluster node discovery and communication.

## Deployment Instructions

### Prerequisites
- A working Kubernetes cluster.
- `kubectl` CLI configured for your cluster.

### Steps
1. Create a namespace for the Redis cluster:
   ```bash
   kubectl create namespace redis-cluster
   ```

2. Apply the Redis StatefulSet configuration:
   ```bash
   kubectl apply -f redis-statefulset.yaml
   ```

3. Apply the Redis Service configuration:
   ```bash
   kubectl apply -f redis-service.yaml
   ```

4. Verify the deployment:
   ```bash
   kubectl get pods -n redis-cluster
   ```

5. Connect and configure the Redis cluster using `redis-cli`.

## Reference
For detailed instructions, refer to the [SocketDaddy documentation](https://socketdaddy.com/redis/install-redis-cluster-on-kubernetes/?source=github&medium=example_code&campaign=readme).
