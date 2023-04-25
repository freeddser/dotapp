FROM mcr.microsoft.com/dotnet/nightly/sdk:6.0.408-focal-amd64
WORKDIR /app
RUN mkdir -p /app
COPY . /app
RUN dotnet build --output ./build_output
EXPOSE 80 443
ENTRYPOINT ["dotnet", "build_output/net-test.dll"]
