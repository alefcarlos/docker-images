FROM mcr.microsoft.com/dotnet/core/aspnet:3.0

## Health prob
RUN apt-get update -y && apt-get install wget -y && \
GRPC_HEALTH_PROBE_VERSION=v0.3.1 && \
wget -qO/bin/grpc_health_probe https://github.com/grpc-ecosystem/grpc-health-probe/releases/download/${GRPC_HEALTH_PROBE_VERSION}/grpc_health_probe-linux-amd64

RUN chmod +x /bin/grpc_health_probe
