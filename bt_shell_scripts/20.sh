#!/bin/bash
create_and_run() {
    local script_name="auto_generated.sh"

    # 1. Tạo file và ghi nội dung code vào file
    cat << 'EOF' > "$script_name"
#!/bin/bash
echo "==> File script này đã được tạo tự động và cấp quyền thực thi thành công!"
echo "Thời gian chạy: $(date)"
EOF

    # 2. Cấp quyền thực thi
    chmod +x "$script_name"

    # 3. Tiến hành chạy file vừa tạo
    echo "Đang tiến hành chạy $script_name..."
    ./"$script_name"

}


create_and_run
ls -la auto_generated.sh