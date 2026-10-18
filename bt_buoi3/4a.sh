echo "--- Tim phan du cua a chia cho b ---"
echo -n "Nhap a: "
read a
echo -n "Nhap b: "
read b

if [ $b -eq 0 ]; then
    echo "Khong the chia cho 0"
else
    du=$((a % b))
    echo "Phan du cua $a chia cho $b la: $du"
fi