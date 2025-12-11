#!/usr/bin/bash

echo $1
UFFD_CONTROL_PATH=/tmp/uffd_control.socket
UFFD_SERVER_PATH=/tmp/firecracker_uffd.socket

rm -f "$UFFD_SERVER_PATH"

sudo  curl --unix-socket "$UFFD_CONTROL_PATH" -i \
    -X PUT 'http://localhost/load' \
    -H 'Accept: application/json' \
    -H 'Content-Type: application/json' \
    -d "{\"path\": \"$1\"}"

sudo  curl --unix-socket "$UFFD_CONTROL_PATH" -i \
    -X PUT 'http://localhost/create_uffd_server' \
    -H 'Accept: application/json' \
    -H 'Content-Type: application/json' \
    -d """{
        \"snapshot_path\": \"$1\",
        \"uffd_socket\": \"$UFFD_SERVER_PATH\"
    }"""
