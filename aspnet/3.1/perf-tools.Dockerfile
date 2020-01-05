FROM mcr.microsoft.com/dotnet/core/sdk:3.1 as builder

RUN dotnet tool install --global dotnet-trace
RUN dotnet tool install --global dotnet-counters
RUN dotnet tool install --global dotnet-dump

ENV PATH="/root/.dotnet/tools:${PATH}"

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1

# Copy the binaries across, and set the path
COPY --from=builder /root/.dotnet/tools/ /opt/bin
ENV PATH="/opt/bin:${PATH}"
