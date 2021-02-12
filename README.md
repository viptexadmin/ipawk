# ipawk
Some function for awk(gawk) to work with ip, net, subnet in shell/bash
make sure you using gawk|nawk (not mawk)

mawk
### awk -W version

gawk | nawk
### awk -V

include ipawk function in your code
```CUR_IP="192.168.1.1/24"
awk **-i ./ipawk.awk** -v ip="$CUR_IP" '{print ip, entryip(ip,$1), $1 }' ./3.txt```

