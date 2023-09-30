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