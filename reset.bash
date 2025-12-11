kill $(pgrep "firecracker")
rm -rf /tmp/*sock*
echo 3 > /proc/sys/vm/drop_caches
