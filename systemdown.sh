#!/bin/bash
set -e

docker-compose -f ./nzb/docker-compose.yml down

docker-compose -f ./pihole/docker-compose.yml down

docker-compose -f ./trefik/docker-compose.yml down


