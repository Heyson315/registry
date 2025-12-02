#!/bin/bash
set -e

echo "Setting up the environment..."

# Clean up old artifacts to improve speed/space as requested
if [ -f Makefile ]; then
    echo "Cleaning up old artifacts..."
    make clean || echo "Warning: make clean failed, continuing..."
fi

# Setup env
if [ ! -f .env ] && [ -f .env.example ]; then
    cp .env.example .env
    echo "Created .env from .env.example"
fi

echo "Downloading dependencies..."
go mod download

echo "Environment is ready!"
