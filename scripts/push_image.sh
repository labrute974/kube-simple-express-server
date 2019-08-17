#!/usr/bin/env bash

set -euo pipefail

echo "--- push image for ${APP_NAME} to docker hub ${DOCKER_IMAGE}:${COMMIT}"
docker push "${DOCKER_IMAGE}:${COMMIT}"
