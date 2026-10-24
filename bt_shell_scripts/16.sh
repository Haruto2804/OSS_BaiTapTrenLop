#!/bin/bash
isPrime() {
    local num=$1
    if [ "$num" -lt 2 ]; then
        return 0 # Không phải nguyên tố
    fi

    for ((i=2; i*i<=num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            return 0 # Không phải nguyên tố
        fi
    done
    return 1 # Là số nguyên tố
}

read -p "Nhập số cần kiểm tra: " n
isPrime "$n"
status=$?

if [ "$status" -eq 1 ]; then
    echo "$n là số nguyên tố."
else
    echo "$n không phải là số nguyên tố."
fi