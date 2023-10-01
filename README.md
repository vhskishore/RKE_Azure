# RKE_Azure
- Create 3 virtual machines in azure cloud.
- Install Docker on all servers
```
        #!/bin/bash
        sudo curl https://get.docker.com | bash
        sudo usermod -a -G docker ubuntu
        sudo usermod -a -G root ubuntu
        sudo systemctl daemon-reload
        sudo systemctl restart docker
        sudo reboot
```

- Get Control Plane IP Addresses

```
terraform apply -target output.pip | awk '/([0-9]{1,3}\.){3}[0-9]{1,3}/ {print $0}' |awk -F '"' '{print $2}' >> iplist.txt
```