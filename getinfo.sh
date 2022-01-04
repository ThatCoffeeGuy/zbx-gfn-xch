#! /bin/bash
cd /home/<user>/chia-blockchain; . ./activate;
chia farm summary > /tmp/farmsummary
chia show -s > /tmp/chiashow
chia wallet show > /tmp/wallet
ls -l /home/<user>/.chia/mainnet/db/blockchain_v1_mainnet.sqlite > /tmp/dbsize
