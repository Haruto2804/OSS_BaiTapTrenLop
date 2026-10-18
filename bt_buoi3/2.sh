
echo "[+] 1. Tạo nhóm người dùng..."
groupadd -f admin
groupadd -f customer

echo "[+] 2. Tạo/cập nhật người dùng admin1 (Mật khẩu mặc định: 1)..."
if id "admin1" &>/dev/null; then
    usermod -aG admin admin1
else
    useradd -m -s /bin/bash -g admin admin1
fi

# Đặt mật khẩu là 1 cho admin1
echo "admin1:1" | chpasswd
echo "    Đã cập nhật mật khẩu cho admin1 thành công!"

echo "[+] 3. Tạo cấu trúc thư mục trong /home/public..."
mkdir -p /home/public/admin
mkdir -p /home/public/customer
mkdir -p /home/public/share

echo "[+] 4. Phân quyền sở hữu (chown) và quyền truy cập (chmod)..."
chown root:admin /home/public/admin
chmod 070 /home/public/admin

chown root:customer /home/public/customer
chmod 070 /home/public/customer

chmod 007 /home/public/share

echo "[+] 5. Hoàn tất cài đặt môi trường bài tập buổi 3!"
