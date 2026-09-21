# Hệ thống quản lý phòng học thư viện

Dự án web quản lý phòng học, lịch đặt phòng và trạng thái sử dụng trong thư viện, xây dựng bằng Python (Flask), JavaScript, SQL và C++.

## Cấu trúc thư mục

```text
static/
├── css/
│   └── style.css
├── js/
│   └── main.js
└── images/
    └── .gitkeep

templates/
├── index.html
├── dashboard.html

database/
├── schema.sql
├── seed.sql

cxx_modules/
├── process.cpp
├── CMakeLists.txt

app.py
models.py
requirements.txt
README.md
.gitignore
```

## Mục tiêu

- Quản lý phòng học, lịch đặt phòng và trạng thái phòng
- Hiển thị dashboard cho admin và staff
- Giữ dữ liệu bằng SQLite/PostgreSQL
- Có module C++ xử lý logic nặng

## Cài đặt

```bash
python -m venv .venv
source .venv/bin/activate  # Linux/macOS
# hoặc .venv\Scripts\activate  # Windows
pip install -r requirements.txt
python app.py
```

Mở trình duyệt tại: http://127.0.0.1:5000
