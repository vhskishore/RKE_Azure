#!/bin/bash
sudo curl https://get.docker.com | bash
sudo usermod -a -G docker adminuser
sudo usermod -a -G root adminuser
sudo systemctl daemon-reload
sudo systemctl restart docker
sudo reboot