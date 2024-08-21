#!/bin/bash

# Stop the application
echo "Stopping application..."
systemctl stop my-application

# Verify the application has stopped
if systemctl status my-application | grep -q "inactive (dead)"; then
  echo "Application stopped successfully."
else
  echo "Failed to stop application."
  exit 1
fi
