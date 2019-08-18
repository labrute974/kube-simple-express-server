#! /bin/bash

set -euo pipefail

echo "--- deploy application"
helm upgrade ${PROJECT}-${ENVIRONMENT}-${APP_NAME} deploy/ -i \
  --set "commit=${COMMIT},environment=${ENVIRONMENT},project=${PROJECT}"
