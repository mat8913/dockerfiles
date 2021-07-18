#!/bin/sh

# Run firefox in a container.
# Useful for debugging another container's network stack.
# eg. ./firefox.sh --net=container:name_of_other_container
#
# The first run of this may take a while due to --userns=keep-id

exec podman run \
 --rm \
 --userns=keep-id \
 --device /dev/dri \
 --volume "$XDG_RUNTIME_DIR"/"$WAYLAND_DISPLAY":/tmp/runtime/wayland-0 \
 --security-opt label=disable \
 "$@" \
 localhost/firefox \
 sh -c "mkdir /tmp/home; export HOME=/tmp/home; export GDK_BACKEND=wayland; export WAYLAND_DISPLAY=wayland-0; export XDG_RUNTIME_DIR=/tmp/runtime; exec firefox"
