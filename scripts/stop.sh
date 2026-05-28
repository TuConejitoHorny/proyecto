#!/bin/bash

echo "Stopping containers..."
docker compose down

echo "Stopping Jenkins..."
sudo systemctl stop jenkins

echo "Stopping Docker..."
sudo systemctl stop docker

echo "Environment stopped"
