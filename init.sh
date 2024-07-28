#!/bin/bash

# Install Rye
if ! command -v rye &> /dev/null; then
    echo "Installing Rye..."
    curl -sSf https://rye-up.com/install.sh | bash
    source "$HOME/.rye/env"
else
    echo "Rye is already installed."
fi

# Install uv
if ! command -v uv &> /dev/null; then
    echo "Installing uv..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
else
    echo "uv is already installed."
fi

# Source environment variables
source "$HOME/.rye/env"
source "$HOME/.cargo/env"

# Configure Rye to use uv
rye config --set-bool behavior.use-uv=true

# Sync Rye
rye sync

# Activate virtual environment
source .venv/bin/activate