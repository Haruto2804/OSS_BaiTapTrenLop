#!/bin/bash
count_items() {
    local dir=${1:-.} # Mặc định là thư mục hiện tại nếu không truyền tham số

    if [ ! -d "$dir" ]; then
        echo "Thư mục không tồn tại!"
        return
    fi

    # Đếm số file (loại trừ thư mục)
    total_files=$(find "$dir" -maxdepth 1 -type f | wc -l)
    # Đếm số thư mục con
    total_dirs=$(find "$dir" -maxdepth 1 -mindepth 1 -type d | wc -l)

    echo "Thư mục: $dir"
    echo "- Số lượng file: $total_files"
    echo "- Số lượng thư mục con: $total_dirs"
}

read -p "Nhập thư mục cần quét (Enter để chọn thư mục hiện tại): " p
count_items "$p"