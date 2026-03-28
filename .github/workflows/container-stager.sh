#!/bin/sh
#
# Copies containers from public and private registries to the private demo registry.
# spell-checker: disable

if [ -z "${OCI_REGISTRY}" ]; then
    echo "$0: OCI_REGISTRY environment variable is required to be set" >&2
    exit 1
fi

if ! command -v gcrane >/dev/null 2>/dev/null; then
    echo "$0: gcrane is required on path" >&2
    exit 1
fi

awk '!/^($|#)/ {print}' <<EOF |
# Debugging/utility containers
busybox:1.37.0
curlimages/curl:8.18.0
ghcr.io/memes/terraform-google-private-bastion/forward-proxy:4.0.2
EOF

while read -r src; do
    gcrane cp "${src}" "${OCI_REGISTRY}/${src##*://}"
done
