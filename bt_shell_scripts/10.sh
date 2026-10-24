#!/bin/bash
read -p "Nhập số cần kiểm tra: " n

if [ "$n" -lt 0 ]; then
    echo "$n không phải là số chính phương."
    exit 0
fi

# Dùng căn bậc hai để kiểm tra
can=$(echo "sqrt($n)" | bc)
if [ $((can * can)) -eq "$n" ]; then
    echo "$n là số chính phương."
else
    echo "$n không phải là số chính phương."
fi