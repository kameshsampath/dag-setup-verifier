#! /usr/bin/env bash

set -euxo pipefail

drone secret add --name maven_mirror_url --data 'http://nexus.infra:8081/repository/maven-public/' "${GITEA_USERNAME}/dag-setup-verifier"

drone secret add --name destination_image --data "${REGISTRY_NAME}/example/dag-setup-verifier" "${GITEA_USERNAME}/dag-setup-verifier"

drone secret add --name image_registry --data "${REGISTRY_NAME}" "${GITEA_USERNAME}/dag-setup-verifier"

drone secret add --name image_registry_user --data "${IMAGE_REGISTRY_USER}" "${GITEA_USERNAME}/dag-setup-verifier"

drone secret add --name image_registry_password --data "${IMAGE_REGISTRY_PASSWORD}" "${GITEA_USERNAME}/dag-setup-verifier"