#!/bin/bash
read -p "Nhập vào một số nguyên n: " n

if [ "$n" -lt 2 ]; then
    echo "$n không phải là số nguyên tố."
    exit 0
fi

is_prime=1
for ((i=2; i*i<=n; i++)); do
    if [ $((n % i)) -eq 0 ]; then
        is_prime=0
        break
    fi
done

if [ "$is_prime" -eq 1 ]; then
    echo "$n là số nguyên tố."
else
    echo "$n không phải là số nguyên tố."
fi