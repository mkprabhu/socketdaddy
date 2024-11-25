#!/bin/bash
# Temporary PATH update script for Ansible

# Locate the Ansible executable
ANSIBLE_PATH=$(which ansible)

# Check if Ansible is installed
if [ -z "$ANSIBLE_PATH" ]; then
  echo "Ansible executable not found. Please ensure Ansible is installed."
  exit 1
fi

# Extract the directory containing the Ansible executable
ANSIBLE_DIR=$(dirname "$ANSIBLE_PATH")

# Add the directory to PATH temporarily
export PATH=$PATH:$ANSIBLE_DIR
echo "Temporary PATH updated. Ansible should now be accessible."

# Test the configuration
ansible --version
