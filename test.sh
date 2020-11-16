#!/bin/bash

set -e

read -ra ENVOY_DOCKER_OPTIONS <<< "${ENVOY_DOCKER_OPTIONS:-}"

[[ -t 1 ]] && ENVOY_DOCKER_OPTIONS+=("-it")

echo "ENVOY_DOCKER_OPTIONS=${ENVOY_DOCKER_OPTIONS}"

docker info

docker images
