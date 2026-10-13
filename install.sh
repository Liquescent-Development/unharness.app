#!/bin/sh
# Installs unharness: fetches the current release's installer from GitHub
# and runs it, passing on any arguments (`sh -s -- --help` lists them).
#
#   curl -fsSL https://unharness.app/install.sh | sh
#
# The installer itself is built by dist for each release:
# https://github.com/Liquescent-Development/unharness/releases/latest
set -eu

url="https://github.com/Liquescent-Development/unharness/releases/latest/download/unharness-installer.sh"

if command -v curl >/dev/null 2>&1; then
    curl -fsSL "$url" | sh -s -- "$@"
elif command -v wget >/dev/null 2>&1; then
    wget -qO- "$url" | sh -s -- "$@"
else
    echo "install.sh: curl or wget is needed to download the installer" >&2
    exit 1
fi
