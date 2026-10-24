#!/bin/bash
read -p "Nhập username: " user
read -s -p "Nhập password: " pass
echo ""

if [ "$user" = "admin" ] && [ "$pass" = "123456" ]; then
    echo "Đăng nhập thành công!"
else
    echo "Tài khoản hoặc mật khẩu không chính xác!"
fi