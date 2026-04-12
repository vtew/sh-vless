#!/bin/bash

set -e

[[ -f .env ]] && { set -a; . .env; set +a; }

declare -A arch=( ["x86_64"]="amd64" ["aarch64"]="arm64" )
arch=${arch[$(uname -m)]:?Unsupported arch: $(uname -m)}

curl -sL https://github.com/SagerNet/sing-box/releases/download/v1.11.4/sing-box-1.11.4-linux-$arch.tar.gz |
  tar -xz --strip-components=1

curl -sL -o cloudflared https://github.com/cloudflare/cloudflared/releases/download/2026.3.0/cloudflared-linux-$arch
chmod u+x cloudflared

curl -s https://raw.githubusercontent.com/vtew/docker-vless/refs/heads/main/docker-entrypoint.sh |
  PATH=.:$PATH exec bash
