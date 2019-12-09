# Set of Docker images

## Aspnet grpc

| Image | tag | build status |
| ----- | ---- | -----------|
| alefcarlos/aspnet-grpc | 3.0 | [![Build Status](https://dev.azure.com/alefcarlos/PlusUltra/_apis/build/status/alefcarlos.docker-images.grpc.3?branchName=master)](https://dev.azure.com/alefcarlos/PlusUltra/_build/latest?definitionId=17&branchName=master) |
| alefcarlos/aspnet-grpc | 3.0-cli|[![Build Status](https://dev.azure.com/alefcarlos/PlusUltra/_apis/build/status/alefcarlos.docker-images.grpc.3.cli?branchName=master)](https://dev.azure.com/alefcarlos/PlusUltra/_build/latest?definitionId=18&branchName=master) |

### k8s probes

Image `alefcarlos/aspnet-grpc` contains `grpc_health_probe`, to see how to use [check here](https://github.com/grpc-ecosystem/grpc-health-probe/blob/master/README.md#example-grpc-health-checking-on-kubernetes)

### grpc_cli

Tag `3.0-1` contains `grpc_cli` which is useful to debugging.
