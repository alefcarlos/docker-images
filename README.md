# Set of Docker images

## ASP.NET

| Image | tag | build status |
| ----- | ---- | -----------|
| alefcarlos/aspnet| 3.0-tools | [![Build Status](https://dev.azure.com/alefcarlos/PlusUltra/_apis/build/status/alefcarlos.docker-images.aspnet.3.tools?branchName=master)](https://dev.azure.com/alefcarlos/PlusUltra/_build/latest?definitionId=19&branchName=master) |

## ASP.NET gRPC

| Image | tag | build status |
| ----- | ---- | -----------|
| alefcarlos/aspnet-grpc | 3.0 | [![Build Status](https://dev.azure.com/alefcarlos/PlusUltra/_apis/build/status/alefcarlos.docker-images.grpc.3?branchName=master)](https://dev.azure.com/alefcarlos/PlusUltra/_build/latest?definitionId=17&branchName=master) |
| alefcarlos/aspnet-grpc | 3.0-cli|[![Build Status](https://dev.azure.com/alefcarlos/PlusUltra/_apis/build/status/alefcarlos.docker-images.grpc.3.cli?branchName=master)](https://dev.azure.com/alefcarlos/PlusUltra/_build/latest?definitionId=18&branchName=master) |



### Dotnet tools

Image `alefcarlos/aspnet:3.0-tools` contains 3 tools to analyze perfomance:

 - dotnet-trace
 - dotnet-counters
 - dotnet-dump

### k8s probes

Image `alefcarlos/aspnet-grpc` contains `grpc_health_probe`, to see how to use [check here](https://github.com/grpc-ecosystem/grpc-health-probe/blob/master/README.md#example-grpc-health-checking-on-kubernetes)

### grpc_cli

Tag `3.0-cli` contains `grpc_cli` which is useful for debugging.
