#!/usr/bin/bash

API_SOCKET="/tmp/firecracker.socket"
sudo rm -f $API_SOCKET
sudo ./firecracker --api-sock "${API_SOCKET}" --enable-pci --metrics-path /tmp/metrics.fifo

