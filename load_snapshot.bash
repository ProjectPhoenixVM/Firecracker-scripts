#!/usr/bin/bash

sudo curl --unix-socket /tmp/firecracker.socket -i \
    -X PUT 'http://localhost/snapshot/load' \
    -H  'Accept: application/json' \
    -H  'Content-Type: application/json' \
    -d """{
            \"snapshot_path\": \"${1}_snapshot\",
            \"mem_backend\": {
                \"backend_path\": \"$1\",
                \"backend_type\": \"File\"
            },
            \"track_dirty_pages\": true,
            \"resume_vm\": false
    }"""
