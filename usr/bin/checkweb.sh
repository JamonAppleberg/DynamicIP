#!/bin/bash
source /c2.sh
PATH=/bin:/bin/bash:/usr/bin:/sbin:/usr/sbin:/usr/local/bin
while :;do
    result=$(curl --connect-timeout 3 -Is http://192.168.3.36 | head -1)
    pattern="HTTP/1.1 200 OK";
        if [[ $result =~ $pattern ]]; then              
            echo "connection is up"
	else 
c2-ec2 AssociateAddress AllocationId eipalloc-D60B804A NetworkInterfaceId eni-2CB5A482
        fi
sleep 7
done
