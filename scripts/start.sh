#!/bin/bash

echo "Starting Docker..."
sudo systemctl start docker

echo "Starting Jenkins..."
sudo systemctl start jenkins

echo "Starting containers..."
docker compose up -d

echo "Environment started"
