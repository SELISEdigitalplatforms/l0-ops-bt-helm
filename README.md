# Helm charts

## [1. rails](https://selisebt.github.io/helm/charts/rails/)

To use this chart

1. Add Helm repository using

```shell
helm repo add rails https://selisebt.github.io/helm/
```

2. Search available charts as

```shell
 helm search repo rails
```

3. Install or dry-run as

```shell
helm install test rails --repo https://selisebt.github.io/helm/ --dry-run
```
