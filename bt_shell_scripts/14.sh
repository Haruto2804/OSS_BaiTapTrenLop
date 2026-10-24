#!/bin/bash
# 1. Định nghĩa hàm greeting nhận tham số
greeting() {
    echo "Xin chào $1, chúc bạn một ngày học tập hiệu quả!"
}

# 2. Gọi hàm
greeting "Sinh viên"

# Giải thích lý thuyết:
# - Biến trong Shell Script là một ô nhớ dùng để lưu trữ dữ liệu (dạng chuỗi hoặc số).
# - Cú pháp gán: ten_bien=gia_tri (không có khoảng trắng xung quanh dấu '=').
# - Cú pháp truy xuất giá trị: $ten_bien