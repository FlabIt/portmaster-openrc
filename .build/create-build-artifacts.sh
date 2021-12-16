#!/bin/bash

BASEDIR="$(dirname "$0")/.."

# Get git revision
revision="$(git rev-list --count HEAD).$(git rev-parse --short HEAD)"

# Get portmaster version
version="$(cat "$BASEDIR"/VERSION).r$revision"

# Make next version available
echo "$version" >"$BASEDIR/.next-version"

# Pack init script
artifact_name="$(cat .next-version).tar.gz"
tar -czf "$artifact_name" ./portmaster.initd
