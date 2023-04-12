# Helm for releasing Rails

This charts contains configurable way to deploy various parts of Rails application.
Currently it supports Deployments for Rails server using Puma, Sneakers, Whenever and RPC for Anycable.

## Parameters

### Global Parameters

| Parameter          | Description                                                                                                                                                                                                               | Default                                                                                                                                                        |
|--------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `fullNameOverride` | If set it will create a chart name by combining `release_name` and `fullNameOverride`                                                                                                                                     | ""                                                                                                                                                             |
| `namespace`        | sets the namespace to be used for the deployment of the charts                                                                                                                                                            | `default`                                                                                                                                                      |
| `imagePullSecrets` | Secret name used to pull images fro private registry. Only tested with docker registry credentials. <br/> Check [link](https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/) for details | expects `regcred` secret of [this](https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/#registry-secret-existing-credentials) |
| `extraEnvs`        | Set of extra envs to be added to all deployments. Set as <br/> <pre>extraEnvs:<br/>  RAILS_ENV: production<pre>                                                                                                           | ""                                                                                                                                                             |
| `extraConfigMaps`  | Name of extra configmap. Set as   `extraConfigMaps: ["cm1", "cm2"]`                                                                                                                                                       | `[]`                                                                                                                                                           |
| `extraSecrets`     | Name of extra secret.   Set as    `extraSecrets: ["secret1", "secret2"]`                                                                                                                                                  | ` []`                                                                                                                                                          |

### Image Parameters (Global)

| Parameter          | Description                                                              | Default  |
|--------------------|--------------------------------------------------------------------------|----------|
| `image.repository` | Image repository `selisebt/rails`                                        |
| `image.tag`        | Image tag (immutable tags are recommended)                               | `v0`     |
| `image.pullPolicy` | https://kubernetes.io/docs/concepts/containers/images/#image-pull-policy | `Always` |

### Configmap Parameters (Global)

| Parameter           | Description                                                                           | Default                      |
|---------------------|---------------------------------------------------------------------------------------|------------------------------|
| `configMap.enabled` | Enable or disable the config map for this chart                                       | `false`                      |
| `configMap.keys`    | Set of key value pairs to be used by the configmap and to referenced and used as ENVs | `configMap.enabled` is false |

### volumeMounts Parameters.

Check values.yaml for details

### APP Parameters (Sub section for individual service such as puma, sneakers, whenever)

#### puma

Reference `values.yaml` for details.

- Puma is enabled by default and service for it is also enabled
- Health check, resource request and limits and livenessProbe and readinessProbe disabled by default

#### sneakers

Reference `values.yaml` for details.

#### whenever

Reference `values.yaml` for details.

#### RPC for AnyCable as `acrpc`

Reference `values.yaml` for details.