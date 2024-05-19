#!/bin/bash
ufw allow from 192.168.2.0/24 to any port 631 proto tcp
ufw allow from 192.168.2.0/24 to any port 5353 proto udp
