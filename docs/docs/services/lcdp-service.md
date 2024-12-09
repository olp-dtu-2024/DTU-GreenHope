# 📄 Dịch vụ LCDP

## 📝 Tổng quan
Dịch vụ LCDP (Nền tảng Phát triển Low-Code) được xây dựng sử dụng NocoBase để hỗ trợ phát triển ứng dụng nhanh và quản lý cấu hình cho nền tảng cứu trợ thiên tai Hi Vọng Xanh.

## ⚙️ Tính năng chính

### 1. 📱 Quản lý ứng dụng
- Phát triển ứng dụng nhanh chóng
- Công cụ cấu hình trực quan
- Phát triển dựa trên component
- Giao diện kéo thả (drag-and-drop)

### 2. 👤 Quản lý người dùng
- Kiểm soát truy cập theo vai trò
- Xác thực người dùng
- Quản lý quyền hạn
- Quản lý hồ sơ người dùng

### 3. 💾 Quản lý dữ liệu
- Mô hình dữ liệu tùy chỉnh
- Quan hệ dữ liệu
- Tạo API tự động
- Quản lý cấu trúc cơ sở dữ liệu

### 4. 🔄 Quản lý quy trình
- Công cụ xây dựng quy trình trực quan
- Quy tắc tự động hóa
- Kích hoạt sự kiện
- Điều phối quy trình

## 🛠️ Kiến trúc kỹ thuật

### 🔑 Thành phần cốt lõi
- Framework NocoBase
- Cơ sở dữ liệu PostgreSQL
- Cache Redis
- RESTful APIs
- Hỗ trợ WebSocket

### 🔌 Điểm tích hợp
- Dịch vụ xác thực
- Dịch vụ giao dịch
- Dịch vụ nhận diện
- Hàng đợi tin nhắn (Kafka)

## 🧑‍💻 Hướng dẫn phát triển

### 🛠️ Cài đặt môi trường local
1. Cài đặt dependencies:
   ```bash
   npm install
Cấu hình môi trường:
```
cp .env.example .env
```
Khởi động server phát triển:
```
npm run dev
```
⚙️ Cấu hình
Cài đặt database trong config/database.js
Cài đặt ứng dụng trong config/application.js
Cấu hình plugin trong thư mục plugins/
🚀 Triển khai
Build ứng dụng:
```
npm run build
```
Khởi động server production:
```
npm run start
```
Theo dõi logs:
```
npm run logs
```
## ✅ Quy tắc thực hành tốt
Sử dụng version control cho cấu hình
Tuân thủ kiến trúc component
Xử lý lỗi đúng cách
Duy trì tài liệu
Sao lưu cấu hình thường xuyên
## 🔒 Vấn đề bảo mật
Bật xác thực cho tất cả endpoints
Triển khai giới hạn tốc độ truy cập
Kiểm tra bảo mật định kỳ
Mã hóa dữ liệu khi lưu trữ
Bảo mật truy cập API
## 📞 Liên hệ hỗ trợ
- Email: minhtuanledng@gmail.com 
- Hotline: +84 889 001 505 
- Website: green-hope.minhtuandng.id.vn
