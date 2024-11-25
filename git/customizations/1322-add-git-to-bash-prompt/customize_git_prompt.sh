
#!/bin/bash

# 1. Source the git-prompt.sh script
if [ -f /usr/share/git-core/contrib/completion/git-prompt.sh ]; then
  source /usr/share/git-core/contrib/completion/git-prompt.sh
else
  echo "git-prompt.sh not found. Please install Git or ensure the script is in the expected location."
  exit 1
fi

# 2. Temporary customization of the PS1 variable with Git branch
echo "Temporary Bash prompt with Git branch:"
export PS1='[\u@\h \w$(__git_ps1 " (%s)")]\$ '
echo "Prompt customized for this session only."

# 3. Permanent customization by adding PS1 to ~/.bashrc
echo "Adding customization to ~/.bashrc for persistence..."
echo 'source /usr/share/git-core/contrib/completion/git-prompt.sh' >> ~/.bashrc
echo 'export PS1="[\u@\h \w\$(__git_ps1 \" (%s)\")]\$ "' >> ~/.bashrc

# Reload ~/.bashrc
echo "Reloading ~/.bashrc to apply changes..."
source ~/.bashrc
echo "Bash prompt customized with Git branch."
