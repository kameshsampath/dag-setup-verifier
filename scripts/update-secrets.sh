#! /usr/bin/env bash

set -euxo pipefail

drone secret update --name destination_image --data "${REGISTRY_NAME}/example/dag-setup-verifier" "${DRONE_GIT_REPO}"

drone secret update --name image_registry --data "${REGISTRY_NAME}" "${DRONE_GIT_REPO}"

drone secret update --name image_registry_user --data "${IMAGE_REGISTRY_USER}" "${DRONE_GIT_REPO}"

drone secret update --name image_registry_password --data "${IMAGE_REGISTRY_PASSWORD}" "${DRONE_GIT_REPO}"