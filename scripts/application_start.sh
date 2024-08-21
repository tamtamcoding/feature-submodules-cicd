#!/bin/bash

# Start the application
echo "Starting application..."
systemctl start my-application

# Verify the application is running
if systemctl status my-application | grep -q "active (running)"; then
  echo "Application started successfully."
else
  echo "Failed to start application."
  exit 1
fi
