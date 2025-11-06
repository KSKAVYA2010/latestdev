# Base image for ASP.NET Framework 4.8 on Windows Server Core with IIS
FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2022

# Set working directory to IIS default webroot
WORKDIR /inetpub/wwwroot

# Copy published app files to the container
COPY SampleWebAppForMigration/ .

# Expose HTTP port
EXPOSE 80
