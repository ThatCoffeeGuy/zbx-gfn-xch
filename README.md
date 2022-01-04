# zbx-gfn-xch

## Disclamer

This was going to be just a private repo but I thought I would make it public. I am aware that this is nowhere near nice looking or practical - I might improve it over time as I'm planning to make an automated installed for it. 

Zabbix-Grafana-Chia-Dashboard 

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
