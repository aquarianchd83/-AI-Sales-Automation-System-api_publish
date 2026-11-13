
# ASP.NET Core 8 runtime
FROM mcr.microsoft.com/dotnet/aspnet:8.0

WORKDIR /app

# Copy published application files
COPY ./publish/ ./

# Application port
EXPOSE 8080

# ASP.NET Core configuration
ENV ASPNETCORE_URLS=http://+:8080
ENV ASPNETCORE_ENVIRONMENT=Production

# Start application
ENTRYPOINT ["dotnet", "WhatsAppSalesAutomation.Api.dll"]
