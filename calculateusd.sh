#!/bin/bash
balance=$(cat /tmp/wallet | grep "Total Balance" | egrep -v "0.0|Pending" | awk '{print $3}')
usd=$(curl -s https://xchscan.com/api/chia-price | jq '.usd')
echo  $balance*$usd | genius
