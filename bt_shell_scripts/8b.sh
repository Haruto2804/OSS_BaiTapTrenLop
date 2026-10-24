#!/bin/bash
read -p "Nhập a: " a
read -p "Nhập b: " b

if [ "$a" -eq 0 ]; then
    if [ "$b" -eq 0 ]; then
        echo "Phương trình có vô số nghiệm."
    else
        echo "Phương trình vô nghiệm."
    fi
else
    # Sử dụng bc để chia lấy phần thập phân
    x=$(echo "scale=2; -$b / $a" | bc)
    echo "Nghiệm của phương trình là x = $x"
fi