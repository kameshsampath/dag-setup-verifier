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

Let use set these variables as Drone secrets using the Drone CLI,

```shell
./scripts/add-secrets
```

Now we are all set to verify our DAG setup, do an empty commit and push to the repo to see the build getting started

```shell
git commit --allow-empty -m "Verify Setup" -m "Verify Setup"
```
