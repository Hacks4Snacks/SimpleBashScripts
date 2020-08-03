# BashScripts
A collection of Bash scripts that are either not meaningful or complex enough to warrant an independent repository.

## Security

1. [bulkDns](scripts/bulkDns): bulk DNS lookup
2. [otxpull](scripts/otxpull): pull recently updated indicators from pulse subscriptions
3. [cidrToIP](scripts/cidrToIP): convert provided CIDR address to list of IPs
4. [nmapDiff](scripts/nmapDiff): compare previous nmap results and identify changes
5. [nmapRdns](scripts/nmapRdns): use NMAP for reverse DNS
6. [mal_binary_extract_http](scripts/mal_binary_extract_http.sh): extract binary from pcap using http stream
7. [mal_binary_extract](scripts/mal_binary_extract.sh): extract binary from pcap using tcp stream
8. [get_local_ipv4](scripts/get_local_ipv4): overly complicated method for getting local interface and ipv4 address

## Cloud

1. [awsEC2](scripts/awsEC2): simple script to deploy EC2 instance in AWS

## System Administration

1. [directorySize](scripts/directorySize): output a specified directory's size
2. [testFile](scripts/testFile): evaluate the status of a file/directory
3. [serverHealth](scripts/serverHealth): report server related information
4. [cpu](scripts/cpu): report if CPU usage exceeds the threshold
5. [diskSpace](scripts/diskSpace): check if the disk space crosses the limit
6. [collectNetworkInfo](scripts/collectNetworkInfo): gather information related to server
7. [remoteBackup](scripts/remoteBackup): backup a local file into a remote server
8. [running](scripts/running): show running processes for the current user
9. [softwareInstall](scripts/softwareInstall): auto install desired software
10. [softwareRemove](scripts/softwareRemove): auto remove Ubuntu bloatware
11. [showOSVersion](scripts/showOSVersion): show running OS version
12. [auditd](scripts/auditd): automated install and configuration of auditd and log forwarding
13. [versionCompare](scripts/versionCompare): compare two version number
14. [remote_scp](scripts/remote_scp_through_jump_server): scp file from remote machine through a jumpserver to localhost
15. [scp_jumpserver](scripts/scp_through_jump_server): scp file to remote machine through a jumpserver
16. [jump_server_access](scripts/jump_server_access): ssh to remote machine through a jumpserver
17. [decimal2Binary](scripts/decimal2Binary): convert Decimal Number to Binary
18. [binary2Decimal](scripts/binary2Decimal): convert Binary Number back to decimal
19. [encrypt](scripts/encrypt): encrypt a file/folder with password
20. [convertLowercase](scripts/convertLowercase): convert data either from the file or standard input to lowercase
21. [randomFile](scripts/randomFile): create unique file/folder automatically with date and time stamp

## Templates and Reference

1. [whileRead](scripts/whileRead): read lines from a file using while loop
2. [readMenu](scripts/readMenu): display a menu for system information
3. [whileMenu](scripts/whileMenu): a repeated menu for system information
4. [colorFull](scripts/colorFull): provide you with the output of several colours
5. [switchStatement](scripts/switchStatement): simple example of a switch statement
6. [unitlLoop](scripts/untilLoop): simple example of an until loop
7. [bashTemplate](scripts/bashTemplate): script template based on Google Style Guide: https://google.github.io/styleguide/shell.xml
