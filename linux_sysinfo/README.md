### linux_sysinfo
### A Bash script that retrieves the requested system information:

uname -r: Fetches the kernel version.
uptime -p: Outputs system uptime in a human-readable format.
free -h: Displays memory usage in a readable format.
lscpu | grep: Extracts key CPU details like model, architecture, and speed.
uptime: Retrieves load averages.
df -h --total | grep "total": Shows total disk usage across all mounted filesystems.
