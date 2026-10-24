#!/bin/bash
pwd_path=$(pwd)

# Kiểm tra thư mục hiện tại có tồn tại và có quyền ghi không
if [ -d "$pwd_path" ] && [ -w "$pwd_path" ] && [ -r "$pwd_path" ]; then
    echo "Vùng làm việc hợp lệ: $pwd_path (Có quyền đọc và ghi)"
else
    echo "Vùng làm việc không hợp lệ hoặc bị giới hạn quyền!"
fi