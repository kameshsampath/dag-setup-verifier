#! /usr/bin/env bash

set -euxo pipefail

drone secret rm --name destination_image "${DRONE_GIT_REPO}"

drone secret rm --name image_registry "${DRONE_GIT_REPO}"

drone secret rm --name image_registry_user "${DRONE_GIT_REPO}"

drone secret rm --name image_registry_password "${DRONE_GIT_REPO}"