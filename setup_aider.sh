#!/bin/bash

# Install aider if missing
if ! command -v aider &>/dev/null; then
    echo "Installing aider..."
    # Install to user space and ensure local bin is in PATH
    python -m pip install --user aider-install
    export PATH="$HOME/.local/bin:$PATH"    
    # Run aider-install with error handling
    if aider-install; then
        echo "Aider installed successfully"
    else
        echo "Installation failed."
        exit 1
    fi
else
    echo "Aider already installed."
fi

# Get API key  # Use common sense, move api key if needed 
read -p "Enter your OpenRouter API key: " api_key

# Create alias
alias_cmd="alias aa='aider --read ~/prompt.md \
--chat-history-file=/dev/null \
--input-history-file=/dev/null \
--llm-history-file=/dev/null \
--model openrouter/deepseek/deepseek-r1 \
--editor-model openrouter/deepseek/deepseek-chat \
--no-auto-accept-architect \
--api-key openrouter=${api_key}'"

echo "$alias_cmd" >> ~/.bashrc
source ~/.bashrc
echo "Alias 'aa' set up! Restart your terminal or run 'source ~/.bashrc'"
