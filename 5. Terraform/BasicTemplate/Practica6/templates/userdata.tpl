#!/bin/bash
sudo apt -y update
sudo apt -y install ${webserver}
sudo service ${webserver} start