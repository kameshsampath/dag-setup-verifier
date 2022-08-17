# dag-verify

A simple demo application to verify DAG setup

## Drone Account Settings

Set your local environment with Drone Account settings,

```shell
export DRONE_SERVER=http://drone-127.0.0.1.sslip.io:30980
export DRONE_TOKEN=<with the token on your drone instance>
```

Ensure the token works,

```shell
drone info
```

As part of the drone build we use the following secrets,

- image_registry - this will be the image registry where we push the image,for DAG setup this can be set to `${REGISTRY_NAME}:${REGISTRY_PORT}`
- destination_image - the image repo where we will push the image for DAG setup let use the repo name like e.g `${GITEA_USER}/dag-setup-verifier`

Set some local variables for convinience,

```shell
export GITEA_USER=user-01
export REGISTRY_NAME=k3d-myregistry.localhost
# always 5000 for in cluster push and pull
export REGISTRY_PORT=5000
```

Let use set these variables as Drone secrets using the Drone CLI,

```shell
drone secret add --name destination_image --data "${GITEA_USER}/dag-setup-verifier" "${GITEA_USER}/dag-setup-verifier"

drone secret add --name image_registry --data "${REGISTRY_NAME}:${REGISTRY_PORT}" "${GITEA_USER}/dag-setup-verifier"

drone secret add --name image_registry_user --data "${IMAGE_REGISTRY_USER}" "${GITEA_USER}/dag-setup-verifier"

drone secret add --name image_registry_password --data "${IMAGE_REGISTRY_PASSWORD}" "${GITEA_USER}/dag-setup-verifier"
```

Verify if the secrets are added using the command,

```shell
drone secret ls "${GITEA_USER}/dag-setup-verifier"
```

It show an output like,

```text
destination_image 
Pull Request Read:  false
Pull Request Write: false

image_registry 
Pull Request Read:  false
Pull Request Write: false
```

Make it trusted,

```shell
drone repo update --trusted "${GITEA_USER}/drone-quickstart"
```

Now we are all set to verify our DAG setup, do an empty commit and push to the repo to see the build getting started

```shell
git commit --allow-empty -m "Verify Setup" -m "Verify Setup"
```
