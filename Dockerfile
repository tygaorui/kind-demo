#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:5.0
COPY bin/Release/net5.0/publish /app
WORKDIR /app
EXPOSE 80
ENTRYPOINT ["dotnet", "Catalog.API.dll"]