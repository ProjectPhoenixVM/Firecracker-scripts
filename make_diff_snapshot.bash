#!/usr/bin/bash

sudo curl --unix-socket /tmp/firecracker.socket -i \
    -X PUT 'http://localhost/snapshot/create' \
    -H  'Accept: application/json' \
    -H  'Content-Type: application/json' \
    -d '{
            "snapshot_type": "Diff",
            "snapshot_path": "./diff_snapshot_file",
            "mem_file_path": "./diff_mem_file"
    }'
