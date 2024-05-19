## Cupsd on Kubernetes
This container is ment to run on microk8s.

# How to setup
First open 2 ports in the firewall ufw:
```
ufw allow from 192.168.2.0/24 to any port 631 proto tcp
ufw allow from 192.168.2.0/24 to any port 5353 proto udp
```

Second create a namespace named 'cups' in microk8s:
```
microk8s kubectl create namespace cups
```

Finaly upload the config:
```
microk8s kubectl apply -f create_deployment_cups.yaml
```

Enjoy!