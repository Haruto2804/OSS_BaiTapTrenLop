i=1
user="admin${i}"   # Kết quả: admin1
echo "Dang xu ly: $user"
sudo usermod -aG admin "$user"
id admin${i}
i=2
user="admin${i}"   # Kết quả: admin2
echo "Dang xu ly: $user"
sudo usermod -aG admin "$user"
id admin${i}
i=3
user="admin${i}"   # Kết quả: admin3
echo "Dang xu ly: $user"
sudo usermod -aG admin "$user"
id admin${i}