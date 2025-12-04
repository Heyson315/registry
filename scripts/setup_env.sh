#!/bin/bash
# Setup script for the development environment

set -e

# Copy .env.example to .env if .env doesn't exist
if [ ! -f .env ]; then
    if [ -f .env.example ]; then
        echo "Copying .env.example to .env..."
        cp .env.example .env
    else
        echo "Warning: .env.example not found, skipping .env creation"
    fi
fi

# Install Go dependencies
echo "Downloading Go dependencies..."
go mod download

# Clean build artifacts
echo "Cleaning build artifacts..."
make clean

echo "Development environment setup complete!"
