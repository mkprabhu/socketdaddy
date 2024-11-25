
# Kubernetes Evicted Pods Cleanup Scripts

This repository contains example scripts to delete evicted pods in Kubernetes. These scripts are part of the blog post on [SocketDaddy.com](https://socketdaddy.com/kubernetes/how-to-delete-evicted-pods-in-kuberenetes/?utm_source=github&utm_medium=example_code&utm_campaign=readme).

## Overview

The scripts provided offer two methods for deleting evicted pods from a Kubernetes namespace:

1. **Using `grep` and `awk`**: Filters pods based on their status and deletes those marked as "Evicted".
2. **Using `field-selectors`**: Leverages Kubernetes field selectors to identify and delete evicted pods.

These examples demonstrate automation techniques for maintaining a clean Kubernetes environment.

## Scripts

### 1. `delete_evicted_pods_grep.sh`

Uses `grep` and `awk` to identify and delete evicted pods.

```bash
#!/bin/bash

# Define the namespace
NAMESPACE="your-namespace"

# Get all pods in the namespace, filter for 'Evicted' status, and delete them
kubectl get pods -n $NAMESPACE --no-headers | grep Evicted | awk '{print $1}' | xargs -I {} kubectl delete pod -n $NAMESPACE {}
```

### 2. `delete_evicted_pods_field_selector.sh`

Uses Kubernetes `field-selectors` to identify and delete evicted pods.

```bash
#!/bin/bash

# Define the namespace
NAMESPACE="your-namespace"

# Get pods with status.phase=Failed and status.reason=Evicted, then delete them
kubectl get pods -n $NAMESPACE --field-selector=status.phase=Failed -o jsonpath='{.items[?(@.status.reason=="Evicted")].metadata.name}' | xargs -I {} kubectl delete pod -n $NAMESPACE {}
```

## Usage

1. Replace `your-namespace` in the scripts with the namespace where evicted pods reside.
2. Save the scripts as `delete_evicted_pods_grep.sh` and `delete_evicted_pods_field_selector.sh`.
3. Make the scripts executable:
   ```bash
   chmod +x delete_evicted_pods_grep.sh
   chmod +x delete_evicted_pods_field_selector.sh
   ```
4. Run the scripts:
   ```bash
   ./delete_evicted_pods_grep.sh
   ./delete_evicted_pods_field_selector.sh
   ```

## Contributing

Contributions are welcome! Feel free to submit issues or pull requests to enhance the functionality or improve documentation.

## License

This repository is licensed under the MIT License. See the LICENSE file for details.

---

For more details, visit the original blog post on [SocketDaddy.com](https://socketdaddy.com/kubernetes/how-to-delete-evicted-pods-in-kuberenetes/?utm_source=github&utm_medium=example_code&utm_campaign=readme).
