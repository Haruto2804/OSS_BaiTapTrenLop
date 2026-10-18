echo "--- Kiem tra a va b cung dau hay trai dau ---"
echo -n "Nhap a: "
read a
echo -n "Nhap b: "
read b

tich=$((a * b))

if [ $tich -gt 0 ]; then
    echo "Hai so $a va $b CUNG DAU"
elif [ $tich -lt 0 ]; then
    echo "Hai so $a va $b TRAI DAU"
else
    echo "Co it nhat mot so bang 0"
fi