#!/bin/bash

if [ -z "$1" ];then
echo
echo "$0 : Brute force the name servers for a target then dumps its zone transfere files. "
echo
echo "[*] Usage: $0 <domain.com> "
echo
exit 0
fi;

for i in $(host -t ns $1 | cut -d " " -f 4 ); do
host -l $1 $i | grep "has address"
done
