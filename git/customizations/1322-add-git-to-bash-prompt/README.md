
# Customize Git Prompts in Bash

This repository contains a shell script to customize your Bash prompt to include Git branch information. By following the steps in the script, you can integrate your terminal workflow with real-time repository status indicators.

## Features

- Displays the current Git branch in your Bash prompt.
- Dynamically updates based on the repository state.
- Includes options for temporary or permanent customization.

## Script Overview

1. **Source the git-prompt.sh Script**:
   - Ensures the `git-prompt.sh` script is loaded for Git-specific prompt functionality.

2. **Temporary Customization**:
   - Updates the `PS1` variable for the current session only.

3. **Permanent Customization**:
   - Adds the Git prompt configuration to your `~/.bashrc` file for persistence.

## Prerequisites

- Git must be installed on your system.
- `git-prompt.sh` must be available (usually included with Git installations).

## Usage

1. **Run the Script**:
   Make the script executable and run it:
   ```bash
   chmod +x customize_git_prompt.sh
   ./customize_git_prompt.sh
   ```

2. **Verify the Changes**:
   Open a new terminal or reload your shell configuration:
   ```bash
   source ~/.bashrc
   ```

3. **Observe the Git Prompt**:
   Navigate to a Git repository and check the prompt for branch details:
   ```plaintext
   user@hostname ~/project (main)$
   ```

## Learn More

For a detailed explanation of customizing Git prompts in Bash, read our article on [SocketDaddy](https://socketdaddy.com/git/how-to-customize-git-prompts-in-the-bash-prompt/?source=github&campaign=example_code&medium=readme).

---

## License

This project is licensed under the [MIT License](LICENSE). Feel free to use and modify the script.
