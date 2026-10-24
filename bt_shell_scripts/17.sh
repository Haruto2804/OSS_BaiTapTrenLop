#!/bin/bash
check_executable() {
    local file_path=$1
    if [ ! -e "$file_path" ]; then
        echo "File không tồn tại."
        return
    fi

    if [ -x "$file_path" ]; then
        echo "File '$file_path' CÓ quyền thực thi (x)."
    else
        echo "File '$file_path' KHÔNG có quyền thực thi."
    fi
}

read -p "Nhập đường dẫn file: " target
check_executable "$target"