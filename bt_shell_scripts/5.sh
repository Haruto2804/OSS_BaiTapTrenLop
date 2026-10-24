#!/bin/bash
read -p "Nhập đường dẫn cần kiểm tra: " path
if [ -e "$path" ]; then
    echo "Đường dẫn hợp lệ và tồn tại!"
    if [ -d "$path" ]; then
        echo "Đây là một thư mục."
    elif [ -f "$path" ]; then
        echo "Đây là một tập tin."
    fi
else
    echo "Đường dẫn không tồn tại trên hệ thống!"
fi