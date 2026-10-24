#!/bin/bash
read -p "Nhập tên user cần kiểm tra: " input_user
current_user=$(whoami)

if [ "$input_user" = "$current_user" ]; then
    echo "Chính xác, $input_user là user hiện hành đang chạy script."
else
    echo "$input_user không phải là user hiện hành (User hiện tại là $current_user)."
fi