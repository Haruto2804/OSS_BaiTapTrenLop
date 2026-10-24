#!/bin/bash
read -p "Nhập vào số nguyên n: " n

if [ "$n" -le 1 ]; then
    echo "$n không phải là số hoàn thiện."
    exit 0
fi

sum=0
for ((i=1; i<n; i++)); do
    if [ $((n % i)) -eq 0 ]; then
        sum=$((sum + i))
    fi
done

if [ "$sum" -eq "$n" ]; then
    echo "$n là số hoàn thiện."
else
    echo "$n không phải là số hoàn thiện."
fi