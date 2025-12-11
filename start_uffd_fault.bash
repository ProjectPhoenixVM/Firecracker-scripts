API_SOCKET="/tmp/firecracker_uffd.socket"
rm $API_SOCKET
./uffd_on_demand_handler "$API_SOCKET" ./mem_file

