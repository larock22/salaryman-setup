#!/bin/bash

#chmod +x setup_aider.sh
if ! command -v aider &>/dev/null; then
    echo "Installing aider..."
    python -m pip install aider-install && aider-install || { echo "Installation failed."; exit 1; }
else
    echo "Aider already installed."
fi

read -p "Enter your OpenRouter API key: " api_key
#move/set up key as needed

echo "alias aa='aider --read ~/prompt.md --chat-history-file=/dev/null --input-history-file=/dev/null --llm-history-file=/dev/null --model openrouter/deepseek/deepseek-r1 --editor-model openrouter/deepseek/deepseek-chat --no-auto-accept-architect --api-key openrouter=${api_key}'" >> ~/.bashrc
source ~/.bashrc
echo "Alias 'aa' set up!"
