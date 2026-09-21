# Hệ thống quản lý phòng học thư viện

Hệ thống quản lý phòng học thư viện là một ứng dụng hỗ trợ quản lý, đặt lịch và theo dõi việc sử dụng các phòng học trong thư viện của trường/cơ sở đào tạo. Hệ thống giúp giảm thiểu việc đặt phòng thủ công, tăng hiệu quả quản lý và đảm bảo tính minh bạch trong việc phân bổ tài nguyên.

## 1. Mục tiêu

- Quản lý thông tin các phòng học trong thư viện
- Hỗ trợ đặt phòng theo ngày, giờ và mục đích sử dụng
- Theo dõi trạng thái phòng: trống, đang được sử dụng, bảo trì
- Giảm sai sót trong quy trình lập lịch
- Tạo báo cáo nhanh về tình trạng sử dụng phòng

## 2. Tính năng chính

- Quản lý danh sách phòng học
- Đặt lịch sử dụng phòng
- Kiểm tra tính khả dụng của phòng
- Xác nhận hoặc từ chối yêu cầu đặt phòng
- Quản lý người dùng: quản trị viên, giảng viên, sinh viên
- Ghi nhận lịch sử sử dụng phòng
- Thống kê và báo cáo theo thời gian

## 3. Đối tượng sử dụng

- Quản trị viên hệ thống
- Nhân viên thư viện
- Giảng viên
- Sinh viên

## 4. Quy trình hoạt động

1. Người dùng đăng nhập vào hệ thống
2. Chọn phòng học cần đặt
3. Chọn thời gian và mục đích sử dụng
4. Gửi yêu cầu đặt phòng
5. Quản trị viên hoặc nhân viên thư viện phê duyệt
6. Hệ thống cập nhật trạng thái phòng
7. Người dùng theo dõi lịch sử và báo cáo

## 5. Công nghệ sử dụng

- Frontend: [Thêm công nghệ]
- Backend: [Thêm công nghệ]
- Database: [Thêm cơ sở dữ liệu]
- Authentication: [Thêm phương thức xác thực]
- Deployment: [Thêm môi trường triển khai]

## 6. Yêu cầu hệ thống

- Máy tính hoặc server có cài đặt [Node.js / Java / Python / .NET ...]
- Cơ sở dữ liệu hỗ trợ [MySQL / SQL Server / PostgreSQL / MongoDB ...]
- Trình duyệt hiện đại
- Kết nối internet ổn định

## 7. Hướng dẫn cài đặt

### Bước 1: Clone repository

```bash
git clone https://github.com/your-username/He-thong-quan-ly-phong-hoc-thu-vien.git
cd He-thong-quan-ly-phong-hoc-thu-vien
```

### Bước 2: Cài đặt dependency

```bash
npm install
```

### Bước 3: Cấu hình môi trường

Tạo file `.env` và cấu hình thông tin kết nối database, API key, port,...

```env
DB_HOST=localhost
DB_PORT=3306
DB_NAME=library_room_management
DB_USER=root
DB_PASSWORD=
```

### Bước 4: Chạy ứng dụng

```bash
npm start
```

## 8. Cấu trúc thư mục

```text
He-thong-quan-ly-phong-hoc-thu-vien/
├── src/
├── public/
├── database/
├── docs/
├── .env.example
├── package.json
├── README.md
└── LICENSE
```

## 9. Ví dụ màn hình

- Màn hình đăng nhập
- Trang quản lý phòng học
- Trang đặt lịch
- Trang quản lý yêu cầu
- Báo cáo thống kê

## 10. Roadmap

- [ ] Hoàn thiện chức năng đặt phòng
- [ ] Quản lý người dùng và phân quyền
- [ ] Tích hợp email / thông báo
- [ ] Tạo biểu đồ thống kê
- [ ] Tối ưu trải nghiệm người dùng
- [ ] Triển khai lên môi trường production

## 11. Đóng góp

Mọi đóng góp đều được chào đón. Nếu bạn muốn tham gia phát triển, vui lòng:

1. Fork repository
2. Tạo nhánh mới
3. Commit thay đổi
4. Tạo pull request mô tả rõ ràng

## 12. Liên hệ

- Tác giả: [Tên của bạn]
- Email: [your-email@example.com]
- GitHub: [your-github-profile]

## 13. Giấy phép

Dự án này được phát hành theo giấy phép [MIT / GPL / Apache 2.0 ...].
