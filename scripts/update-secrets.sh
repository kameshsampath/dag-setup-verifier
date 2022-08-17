#! /usr/bin/env bash

set -euxo pipefail

drone secret update --name destination_image --data "${REGISTRY_NAME}/example/dag-setup-verifier" "${GITEA_USERNAME}/dag-setup-verifier"

drone secret update --name image_registry --data "${REGISTRY_NAME}" "${GITEA_USERNAME}/dag-setup-verifier"

drone secret update --name image_registry_user --data "${IMAGE_REGISTRY_USER}" "${GITEA_USERNAME}/dag-setup-verifier"

drone secret update --name image_registry_password --data "${IMAGE_REGISTRY_PASSWORD}" "${GITEA_USERNAME}/dag-setup-verifier"