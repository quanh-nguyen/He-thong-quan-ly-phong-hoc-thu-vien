INSERT INTO rooms (room_name, status, capacity) VALUES
('P101', 'available', 30),
('P102', 'booked', 20),
('P103', 'maintenance', 25),
('P201', 'available', 40);

INSERT INTO users (full_name, email, role) VALUES
('Nguyễn Văn A', 'a@library.edu.vn', 'admin'),
('Trần Thị B', 'b@library.edu.vn', 'staff'),
('Lê Văn C', 'c@library.edu.vn', 'student');

INSERT INTO bookings (room_id, user_name, booking_date, start_time, end_time, purpose) VALUES
(2, 'Nguyễn Văn A', '2026-09-22', '08:00', '10:00', 'Học nhóm'),
(4, 'Trần Thị B', '2026-09-22', '13:00', '15:00', 'Thi thử');
