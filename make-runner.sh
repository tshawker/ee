#! /usr/bin/env bash
#
# Create a self-hosted Github runner
WHERE=~/actions-runner

# Create a folder
[[ ! -d "${WHERE}" ]] && mkdir -p "${WHERE}"
cd "${WHERE}"
# Download the latest runner package
curl -o actions-runner-osx-x64-2.311.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.311.0/actions-runner-osx-x64-2.311.0.tar.gz
# Optional: Validate the hash
echo "f4d8d1dd850fd0889e0d250c82fa587b0e21934f8441143ee6772284b2ae6211  actions-runner-osx-x64-2.311.0.tar.gz" | shasum -a 256 -c
# Extract the installer
tar xzf ./actions-runner-osx-x64-2.311.0.tar.gz

