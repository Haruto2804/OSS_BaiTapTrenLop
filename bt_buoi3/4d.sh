echo "--- Tim so lon nhat trong 3 so a, b, c ---"
echo -n "Nhap a: "
read a
echo -n "Nhap b: "
read b
echo -n "Nhap c: "
read c

max=$a

if [ $b -gt $max ]; then
    max=$b
fi

if [ $c -gt $max ]; then
    max=$c
fi
echo -n "So lon nhat la: ${max}"