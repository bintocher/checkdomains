#!/bin/bash

#
start="date"
#lastcheck=$('date +%Y-%m-%d');
lastcheck=$(date +%Y-%m-%d);

for v in {a..z}{a..z}{a..z}{a..z}; do
        domain=$v;
        domainzone="ru";
        fulldomain=$domain.$domainzone
        symbolcount=${#v};
        isnumeric=0;

        result="$(whois $fulldomain)";
        res1=$(echo ${result} | egrep -q '^No match|^NOT FOUND|^Not fo|AVAILABLE|^No Data Fou|has not been regi|No entri')

        if [ $? -eq 0 ]; then
                echo "domain : " $fulldomain " is free"
                echo $fulldomain >> log.txt
        fi
sleep 2s
done                                                                                                                 