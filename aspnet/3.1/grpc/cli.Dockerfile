## grpc_cli
FROM python:2 as grpc_cli

RUN pip install grpcio --ignore-installed && \
    pip install grpcio-tools && \
    apt update -y && \
    apt install -y build-essential autoconf libtool pkg-config && \
    apt install -y libgflags-dev libgtest-dev && \
    git clone https://github.com/grpc/grpc.git && \
    cd grpc && \
	git submodule update --init && \
    make grpc_cli && \
	cp /grpc/bins/opt/grpc_cli /usr/local/bin/ && \
	cd ../ && rm -rf grpc

FROM alefcarlos/aspnet:3.1-tools

## grpc_cli
COPY --from=grpc_cli /usr/local/bin/grpc_cli /bin/
RUN chmod +x /bin/grpc_cli

## Health prob
RUN apt-get update -y && apt-get install wget -y && \
GRPC_HEALTH_PROBE_VERSION=v0.3.1 && \
wget -qO/bin/grpc_health_probe https://github.com/grpc-ecosystem/grpc-health-probe/releases/download/${GRPC_HEALTH_PROBE_VERSION}/grpc_health_probe-linux-amd64

RUN chmod +x /bin/grpc_health_probe
