#!/bin/bash
create_tree() {
    read -p "Nhập tên thư mục cha: " parent
    read -p "Nhập danh sách thư mục con (cách nhau bởi dấu cách): " sub_dirs

    mkdir -p "$parent"
    for dir in $sub_dirs; do
        mkdir -p "$parent/$dir"
    done
    echo "Đã tạo cây thư mục tại: $(pwd)/$parent"
}

create_tree