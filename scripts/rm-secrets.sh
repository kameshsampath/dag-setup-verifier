#! /usr/bin/env bash

set -euxo pipefail

drone secret rm --name destination_image "${GITEA_USERNAME}/dag-setup-verifier"

drone secret rm --name image_registry "${GITEA_USERNAME}/dag-setup-verifier"

drone secret rm --name image_registry_user "${GITEA_USERNAME}/dag-setup-verifier"

drone secret rm --name image_registry_password "${GITEA_USERNAME}/dag-setup-verifier"