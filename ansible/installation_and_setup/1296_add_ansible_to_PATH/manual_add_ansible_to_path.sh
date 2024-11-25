#!/bin/bash
# Commands to manually add Ansible to PATH

# 1. Locate the Ansible executable
which ansible

# Example output might look like:
# /home/user/.local/bin/ansible

# 2. Add the directory to PATH temporarily
# Replace /path/to/ansible/directory with the directory from the 'which ansible' output
export PATH=$PATH:/path/to/ansible/directory

# Verify by checking the version
ansible --version

# 3. To make the change permanent:
# For Bash:
echo 'export PATH=$PATH:/path/to/ansible/directory' >> ~/.bashrc
source ~/.bashrc

# For Zsh:
echo 'export PATH=$PATH:/path/to/ansible/directory' >> ~/.zshrc
source ~/.zshrc

# For Fish shell:
# Replace /path/to/ansible/directory with the correct directory
set -U fish_user_paths /path/to/ansible/directory $fish_user_paths

# 4. Verify the configuration again
ansible --version
