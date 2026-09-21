# Hệ thống quản lý phòng học thư viện

Hệ thống quản lý phòng học thư viện là ứng dụng web hỗ trợ quản lý và theo dõi việc sử dụng các phòng học trong thư viện. Dự án được xây dựng bằng Python và Flask, sử dụng SQLite để lưu trữ dữ liệu.

## 1. Mục tiêu

- Quản lý thông tin các phòng học trong thư viện
- Hỗ trợ theo dõi tình trạng phòng học
- Cung cấp giao diện tổng quan về hệ thống
- Tạo nền tảng để phát triển chức năng đặt lịch và quản lý người dùng

## 2. Tính năng chính

- Hiển thị trang chủ của hệ thống
- Hiển thị trang tổng quan quản lý phòng học
- Quản lý dữ liệu phòng học với SQLite
- Chuẩn bị cấu trúc để mở rộng chức năng đặt phòng, quản lý người dùng và báo cáo

## 3. Đối tượng sử dụng

- Quản trị viên hệ thống
- Nhân viên thư viện
- Giảng viên
- Sinh vi��n

## 4. Quy trình hoạt động dự kiến

1. Người dùng truy cập hệ thống
2. Xem thông tin và trạng thái các phòng học
3. Chọn phòng học cần sử dụng
4. Gửi yêu cầu đặt phòng
5. Quản trị viên hoặc nhân viên thư viện phê duyệt yêu cầu
6. Hệ thống cập nhật trạng thái phòng
7. Người dùng theo dõi lịch sử sử dụng và báo cáo

## 5. Công nghệ sử dụng

- **Ngôn ngữ:** Python
- **Backend:** Flask 3.0.3
- **Template engine:** Jinja2 (được tích hợp trong Flask)
- **Database:** SQLite
- **Cấu hình môi trường:** python-dotenv
- **Frontend:** HTML, CSS, JavaScript

## 6. Yêu cầu hệ thống

- Python 3.9 trở lên
- `pip`
- Trình duyệt web hiện đại
- Kết nối internet để tải các package khi cài đặt lần đầu

Dự án sử dụng SQLite nên không cần cài đặt máy chủ cơ sở dữ liệu riêng. Cơ sở dữ liệu được lưu tại:

```text
database/library_management.db
```

## 7. Hướng dẫn cài đặt

### Bước 1: Clone repository

```bash
git clone https://github.com/quanh-nguyen/He-thong-quan-ly-phong-hoc-thu-vien.git
cd He-thong-quan-ly-phong-hoc-thu-vien
```

### Bước 2: Tạo môi trường ảo

Windows:

```bash
python -m venv .venv
.venv\Scripts\activate
```

Linux/macOS:

```bash
python3 -m venv .venv
source .venv/bin/activate
```

### Bước 3: Cài đặt các thư viện phụ thuộc

```bash
python -m pip install --upgrade pip
pip install -r requirements.txt
```

### Bước 4: Khởi tạo cơ sở dữ liệu

Nếu cần tạo hoặc cập nhật cơ sở dữ liệu theo schema của dự án, chạy lệnh sau:

```bash
python -c "from models import init_db; init_db()"
```

Lệnh trên sẽ khởi tạo cơ sở dữ liệu SQLite tại `database/library_management.db` dựa trên file `database/schema.sql`.

### Bước 5: Chạy ứng dụng

```bash
python app.py
```

Sau khi ứng dụng khởi động, mở trình duyệt và truy cập:

```text
http://localhost:5000
```

Trang tổng quan có thể truy cập tại:

```text
http://localhost:5000/dashboard
```

### Chạy ứng dụng bằng Flask CLI

Ngoài cách chạy trực tiếp bằng `python app.py`, có thể sử dụng Flask CLI:

Windows PowerShell:

```powershell
$env:FLASK_APP="app.py"
$env:FLASK_DEBUG=1
flask run
```

Linux/macOS:

```bash
export FLASK_APP=app.py
export FLASK_DEBUG=1
flask run
```

### Vô hiệu hóa môi trường ảo

Sau khi hoàn tất, có thể thoát môi trường ảo bằng lệnh:

```bash
deactivate
```

### Lưu ý

- Kích hoạt môi trường ảo trước khi cài đặt package hoặc chạy ứng dụng.
- Không commit các thông tin nhạy cảm trong file `.env` lên repository.
- Nếu lệnh `python` không hoạt động trên Linux/macOS, hãy sử dụng `python3`.
- Chế độ debug chỉ nên sử dụng trong môi trường phát triển, không sử dụng trực tiếp khi triển khai production.

## 8. Cấu trúc thư mục

```text
He-thong-quan-ly-phong-hoc-thu-vien/
├── app.py                         # Điểm khởi chạy ứng dụng Flask
├── models.py                      # Kết nối và thao tác với SQLite
├── requirements.txt               # Danh sách thư viện Python
├── database/
│   ├── schema.sql                 # Cấu trúc cơ sở dữ liệu
│   └── library_management.db      # Cơ sở dữ liệu SQLite
├── templates/                     # Các giao diện Jinja2/HTML
├── static/                        # Tài nguyên tĩnh như CSS, JavaScript
├── cxx_modules/                   # Các module C++ bổ trợ nếu có
├── .gitignore
└── README.md
```

## 9. Các trang hiện có

- Trang chủ: `http://localhost:5000/`
- Trang tổng quan: `http://localhost:5000/dashboard`

## 10. Roadmap

- [ ] Hoàn thiện chức năng đặt phòng
- [ ] Quản lý người dùng và phân quyền
- [ ] Kiểm tra phòng trống theo ngày và giờ
- [ ] Tích hợp email hoặc thông báo
- [ ] Tạo biểu đồ thống kê
- [ ] Bổ sung kiểm thử tự động
- [ ] Triển khai lên môi trường production

## 11. Đóng góp

Mọi đóng góp đều được chào đón. Nếu bạn muốn tham gia phát triển, vui lòng:

1. Fork repository
2. Tạo một nhánh mới cho thay đổi của bạn
3. Cài đặt dependency và kiểm tra ứng dụng cục bộ
4. Commit thay đổi với nội dung rõ ràng
5. Tạo pull request và mô tả chi tiết thay đổi

## 12. Liên hệ

- **Tác giả:** quanh-nguyen
- **GitHub:** https://github.com/quanh-nguyen
- **Repository:** https://github.com/quanh-nguyen/He-thong-quan-ly-phong-hoc-thu-vien

## 13. Giấy phép

Dự án chưa chỉ định giấy phép cụ thể. Vui lòng bổ sung file `LICENSE` nếu muốn quy định cách sử dụng và phân phối mã nguồn.
