#!/bin/sh

VER='dev'
docker build -f Dockerfile.develop -t "habratest/savehabr:${VER}" .

