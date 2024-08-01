[ -z "$CONTAINER_ID" ] && PODMAN="podman" || PODMAN="distrobox-host-exec podman"
[ -z "$CONTAINER_ID" ] && ROOT_PODMAN="sudo podman" || ROOT_PODMAN="distrobox-host-exec sudo podman"
