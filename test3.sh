
CUR_IP="192.168.1.1/24"
gawk -i ./ipfun.awk -v ip="$CUR_IP" '{print ip, entryip(ip,$1), $1 }' ./3.txt
