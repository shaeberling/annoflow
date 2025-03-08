#!/bin/bash

set -e

function command_missing() {
  local command_to_check="$1"

  if command -v "$command_to_check" >/dev/null 2>&1; then
    return 1  # False
  else
    return 0  # True
  fi
}

if command_missing gcloud; then
  echo "ERROR: Please install 'gcloud'."
  exit 1
fi

if command_missing firebase; then
  echo "ERROR: Please install 'firebase'."
  exit 1
fi

gcloud run deploy annoflow --source . --service-account=annoflow-service-account@annoflow-453121.iam.gserviceaccount.com --min-instances=0 --max-instances=1 --cpu=1 --memory 512Mi --timeout=10
