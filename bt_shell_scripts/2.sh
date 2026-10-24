#!/bin/bash
sudo adduser admin1
sudo adduser admin2
sudo adduser admin3
sudo addgroup admin
sudo addgroup customer
sudo addgroup share
cd ~ 
cd ..
mkdir admin
mkdir customer
mkdir share
sudo chmod 070 admin
sudo chmod 070 customer
sudo chmod 007 share
sudo chown :admin admin
sudo chown :customer customer
echo "Đã tạo 3 user và thiết lập quyền thư mục!"