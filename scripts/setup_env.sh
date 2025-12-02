#!/bin/bash
# Setup script for MCP Registry development environment

set -e

# Copy .env.example to .env if .env doesn't exist
if [ ! -f ".env" ]; then
    echo "Creating .env from .env.example..."
    cp .env.example .env
fi

# Download Go dependencies
echo "Downloading Go dependencies..."
go mod download

# Clean build artifacts
echo "Cleaning old artifacts..."
make clean

echo "Setup complete!"
