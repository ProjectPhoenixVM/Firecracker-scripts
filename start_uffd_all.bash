API_SOCKET="/tmp/firecracker_uffd.socket"
rm $API_SOCKET
./uffd_fault_all_handler "$API_SOCKET" ./mem_file

