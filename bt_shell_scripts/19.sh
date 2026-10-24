#!/bin/bash
count_users() {
    # Đếm tổng số dòng trong /etc/passwd tương ứng với tổng số user
    local user_count=$(wc -l < /etc/passwd)
    echo "Tổng số lượng user trên hệ thống: $user_count"
}

count_users