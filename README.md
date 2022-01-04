# zbx-gfn-xch

Chia Grafana dashboard using Zabbix and Bash, featuring showing node status, size of plots, amount of plots, USD currency, wallet to USD, wallet to HUF, etc. 

![alt text](https://i.imgur.com/yYx44ml.png)

## Disclamer

This was going to be just a private repository but after I wrote a installation guide I decided to make it public.

 I am aware that this is nowhere near nice looking or practical - I might improve it over time.


## Prerequisites
prerequisites (assuming you're using Ubuntu 20.04):
- Latest Grafana
- Zabbix 5.0 LTS agent and server
- Running chia CLI (daemon, farmer, wallet)

To install potentially missing but required packages:
```
sudo apt install jq genius 
```

## Installation

1.) Copy the content of ```zabbix_agentd.conf``` to the ending of your ```/etc/zabbix/zabbix_agentd.conf```

2.) Put ```getinfo.sh```, ```calculateusd.sh``` and ```calculatehuf.sh``` to your home or modify the locations accordingly

3.) Copy the content of ```crontab``` to your own crontab

4.) Execute ```sudo systemctl restart zabbix-agent.service``` 

5.) Import the template ```zbx_export_templates.xml``` to your Zabbix server instance and configure it with your desired host

6.) Import the dashboard ```chiadashboard.json``` to your Grafana instance 

7.) Tweak timings, settings, however you want
