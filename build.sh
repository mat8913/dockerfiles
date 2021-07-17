#!/bin/sh

exec podman build -f "$1".Dockerfile -t "$1"
