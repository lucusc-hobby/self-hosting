# Self Hosting

## Description
This repository provides a comprehensive setup for self-hosting various services using Docker and Docker Compose. It includes infrastructure, monitoring, network, management, family, media, and AI services.

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [Services](#services)
  - [Infrastructure Services](#infrastructure-services)
    - Watchtower
    - Cloudflared
  - [Monitoring Services](#monitoring-services)
    - Grafana
    - Prometheus
  - [Network Services](#network-services)
    - Traefik
    - Pi-hole
  - [Management Services](#management-services)
    - Portainer
  - [Family Services](#family-services)
    - Mealie
  - [Media Services](#media-services)
    - Sonarr
    - Radarr
    - Hydra2
    - SABnzbd
  - [AI](#ai)
    - Ollama

## Installation

### 1. Install Docker & Docker Compose
To install Docker, follow the official documentation [here](https://docs.docker.com/get-docker/).
To install Docker Compose, follow the official documentation [here](https://docs.docker.com/compose/install/).

### 2. Clone the Repository
```sh
git clone https://github.com/yourusername/self-hosting.git
cd self-hosting
```

### 3. Configure Environment Variables
Copy the sample environment file and adjust the variables as needed:
```sh
cp sample.env .env
```
Edit the [`.env`]("/home/lucusc/selfhosting/.env") file to match your configuration:
```plaintext
DOMAIN=localtest.me

# traefik
TRAEFIK_LOG_LEVEL=INFO
```

## Usage
To start the services, run:
```sh
docker-compose up -d
```

## Services

### Infrastructure Services

#### Watchtower
Watchtower automatically updates running Docker containers whenever a new image is available.

#### Cloudflared
Cloudflared is a tunneling daemon that proxies traffic from Cloudflare to your local services.

### Monitoring Services

#### Grafana
Grafana is an open-source platform for monitoring and observability. It provides dashboards and graphs for visualizing metrics.

#### Prometheus
Prometheus is a monitoring system and time series database. It collects metrics from configured targets at given intervals.

### Network Services

#### Traefik
Traefik is a modern HTTP reverse proxy and load balancer that makes deploying microservices easy. It is configured to use Docker as a backend and integrates with Cloudflare for DNS management.

#### Pi-hole
Pi-hole is a network-wide ad blocker that acts as a DNS sinkhole. It is configured to work with Traefik for secure access.

### Management Services

#### Portainer
Portainer is a lightweight management UI which allows you to easily manage your Docker environments.

### Family Services

#### Mealie
Mealie is a self-hosted recipe manager and meal planner. It helps you organize your recipes and plan your meals.

### Media Services

#### Sonarr
Sonarr is a PVR for Usenet and BitTorrent users. It can monitor multiple RSS feeds for new episodes of your favorite shows and will grab, sort, and rename them.

#### Radarr
Radarr is a movie collection manager for Usenet and BitTorrent users. It can monitor multiple RSS feeds for new movies and will grab, sort, and rename them.

#### Hydra2
Hydra2 is a meta search application for newznab indexers and torznab trackers. It can be used to search for content across multiple indexers.

#### SABnzbd
SABnzbd is an open-source binary newsreader written in Python. It simplifies the process of downloading from Usenet.

### AI

#### Ollama
Ollama is a service for managing and deploying machine learning models. It helps in organizing and serving models for inference.