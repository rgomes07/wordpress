#!/bin/bash
# Carregar variáveis do arquivo .env
export $(cat .env |xargs)
# Deploy no Docker Swarm
/usr/bin/docker stack deploy -c wordpress.yaml wordpress -d