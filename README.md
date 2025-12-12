# AltT

A .NET 9 WPF application solution.

## Project Structure

- **AltT.App** - WPF application (main entry point)
- **AltT.Core** - Core business logic and models
- **AltT.Data** - Data access layer
- **AltT.Platform** - Win32 interop and platform-specific functionality
- **AltT.Tests** - xUnit test project

## Prerequisites

- .NET 9 SDK or later
- Windows (required for WPF and Win32 interop)

## Building

Build the entire solution:

```bash
make build
```

Or using .NET CLI:

```bash
dotnet build
```

## Testing

Run all tests:

```bash
make test
```

Or using .NET CLI:

```bash
dotnet test
```

## Publishing

Publish the Windows application:

```bash
make publish-win
```

Or using .NET CLI:

```bash
dotnet publish AltT.App/AltT.App.csproj -c Release -r win-x64 --self-contained
```

## Development

This solution follows standard .NET project structure with clear separation of concerns:
- Core contains business logic
- Data handles data persistence
- Platform provides OS-level functionality
- App is the WPF user interface

