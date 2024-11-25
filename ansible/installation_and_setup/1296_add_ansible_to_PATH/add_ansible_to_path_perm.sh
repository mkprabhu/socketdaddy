#!/bin/bash
# Permanent PATH update script for Ansible

# Locate the Ansible executable
ANSIBLE_PATH=$(which ansible)

# Check if Ansible is installed
if [ -z "$ANSIBLE_PATH" ]; then
  echo "Ansible executable not found. Please ensure Ansible is installed."
  exit 1
fi

# Extract the directory containing the Ansible executable
ANSIBLE_DIR=$(dirname "$ANSIBLE_PATH")

# Detect the user's shell and update the appropriate configuration file
if [ "$SHELL" = "/bin/bash" ]; then
  CONFIG_FILE="$HOME/.bashrc"
elif [ "$SHELL" = "/bin/zsh" ]; then
  CONFIG_FILE="$HOME/.zshrc"
else
  echo "Unsupported shell. Please update your PATH manually."
  exit 1
fi

# Add Ansible directory to PATH in the configuration file
echo "export PATH=\$PATH:$ANSIBLE_DIR" >> "$CONFIG_FILE"
echo "Permanent PATH updated in $CONFIG_FILE. Reloading configuration..."

# Reload the configuration file
source "$CONFIG_FILE"

# Test the configuration
ansible --version
