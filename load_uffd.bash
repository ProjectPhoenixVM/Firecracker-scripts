#!/usr/bin/bash

sudo curl --unix-socket /tmp/firecracker.socket -i \
    -X PUT 'http://localhost/snapshot/load' \
    -H  'Accept: application/json' \
    -H  'Content-Type: application/json' \
    -d  """{
            \"snapshot_path\": \"$1\",
            \"mem_backend\": {
                \"backend_path\": \"/tmp/firecracker_uffd.socket\",
                \"backend_type\": \"Uffd\"
            },
            \"track_dirty_pages\": true,
            \"resume_vm\": false
    }"""
