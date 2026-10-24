#!/bin/bash
read -p "Nhập a: " a
read -p "Nhập b: " b
if [ "$b" -eq 0 ]; then
    echo "Không thể chia cho 0!"
else
    echo "Phần dư của $a chia cho $b là: $((a % b))"
fi