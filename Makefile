.PHONY: build test publish-win clean restore

# Build the entire solution
build:
	dotnet build AltT.sln -c Release

# Run all tests
test:
	dotnet test AltT.sln

# Publish the Windows application
publish-win:
	dotnet publish AltT.App/AltT.App.csproj -c Release -r win-x64 --self-contained -p:PublishSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true

# Clean build artifacts
clean:
	dotnet clean AltT.sln

# Restore NuGet packages
restore:
	dotnet restore AltT.sln

