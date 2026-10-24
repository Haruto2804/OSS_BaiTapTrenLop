#!/bin/bash
sudo groupadd admin
sudo groupadd customer 
sudo usermod -aG admin admin1
sudo usermod -aG admin admin2
sudo usermod -aG customer admin3
id admin1
id admin2
id admin3