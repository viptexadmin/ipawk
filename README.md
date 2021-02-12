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

### DESCRIPTION:

**ip** - simple ip ("192.168.1.1" or "8.8.8.8")

**fullip** - ip with numerical mask ("192.168.1.1/24" or "127.0.0.1/32")

**mask** - numerical mask 0-32

**firstip** -first ip of subnet (exactly ip not host)

**lastip** - last ip of subnet (exactly ip not host)


### CONTENT:

**function ip2long(ip)** convert ip to long

**function ipfromfull(fullip)** remove mask from fullip

**function maskfromfull(fullip)** extract mask from fullip

**function firstiplong(fullip)** convert first ip of subnet to long

**function lastiplong(fullip)** convert last ip of subnet to long

**function long2ip(num)** convert long to ip

**function firstip(fullip)** get first ip of subnet

**function lastip(fullip)**  get last ip of subnet

**function getsubnet(fullip)** get true subnet address presentation

**function ip2full(fullip)** get ip with mask

**function entryip(fullip1,fullip2)** returns a character indicating that one ip or subnet is entanced in other subnet

  
