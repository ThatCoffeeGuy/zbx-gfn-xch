#!/bin/bash
amount=$(/bin/bash /home/sadmin/calculateusd.sh)
rate=$(curl -s https://open.er-api.com/v6/latest/USD | jq '.rates.HUF')
echo $rate*$amount | genius
