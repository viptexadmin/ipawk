# ipawk
Some function for awk(gawk) to work with ip, net, subnet in shell/bash
make sure you using gawk|nawk (not mawk)

mawk
### awk -W version

gawk | nawk
### awk -V

include ipawk.awk function in your code
```
CUR_IP="192.168.1.1/24"
awk -i ./ipawk.awk -v ip="$CUR_IP" '{print ip, entryip(ip,$1), $1 }' ./3.txt
```

Description:
ip - simple ip ("192.168.1.1" or "8.8.8.8")
fullip - ip with numerical mask ("192.168.1.1/24" or "127.0.0.1/32")
mask - numerical mask 0-32
firstip -first ip of subnet (exactly ip not host)
lastip - last ip of subnet (exactly ip not host)

**function ip2long(ip)** convert ip to long

**function ipfromfull(fullip)** remove mask from fullip

**function maskfromfull(fullip)** extract mask from fullip

function firstiplong(fullip)
function lastiplong(fullip)
function long2ip(num)
function firstip(fullip)
function lastip(fullip)
function getsubnet(fullip)
function ip2full(fullip)
function entryip(fullip1,fullip2)
  
