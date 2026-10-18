echo "--- Giai phuong trinh ax + b = 0 ---"
echo -n "Nhap a: "
read a
echo -n "Nhap b: "
read b

if [ $a -eq 0 ]; then
    if [ $b -eq 0 ]; then
        echo "Phuong trinh co vo so nghiem"
    else
        echo "Phuong trinh vo nghiem"
    fi
else
    # Phep chia so nguyen co ban trong Bash
    x=$(( -b / a ))
    echo "Nghiem nguyen cua phuong trinh la: x = $x"
fi