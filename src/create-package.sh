#!/bin/sh -e

_SCRIPT_DIR="$( cd -P -- "$(dirname -- "$(command -v -- "$0")")" && pwd -P )"
PROJECT=$_SCRIPT_DIR/IxMilia.Stl/IxMilia.Stl.csproj
dotnet restore $PROJECT
dotnet pack --configuration Release $PROJECT
