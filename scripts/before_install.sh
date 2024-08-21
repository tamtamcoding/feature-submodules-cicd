#!/bin/bash

# Update package lists and install necessary packages
apt-get update
apt-get install -y curl unzip

# Stop the application if it's already running
echo "Stopping existing application..."
systemctl stop my-application || true

# Clean up old files
echo "Cleaning up old files..."
rm -rf /path/to/your/application/*
