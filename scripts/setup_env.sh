#!/bin/bash
echo "Setting up the environment..."

# Clean up old artifacts to improve speed as requested
if [ -f Makefile ]; then
    echo "Cleaning old builds..."
    make clean
fi

# Setup env file
if [ ! -f .env ]; then
    if [ -f .env.example ]; then
        echo "Creating .env from example..."
        cp .env.example .env
    fi
fi

# Install dependencies
echo "Downloading Go dependencies..."
go mod download

echo "Environment setup complete!"
