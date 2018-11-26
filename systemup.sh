#!/bin/bash
set -e

docker-compose -f ./trefik/docker-compose.yml up -d

docker-compose -f ./pihole/docker-compose.yml up -d

docker-compose -f ./nzb/docker-compose.yml up -d