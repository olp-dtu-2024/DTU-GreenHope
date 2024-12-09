# 🌟 Recognition Service

## 📘 Giới thiệu

_**[Dịch Vụ Nhận Diện (Recognition Service)](https://hub.docker.com/repository/docker/auroraphtgrp/dtu-olp-recognition-service)**_ là một giải pháp microservice tiên tiến được phát triển bằng Python, chuyên về xử lý và phân tích hình ảnh thông minh. Hệ thống này tích hợp các công nghệ AI và học máy hiện đại để cung cấp khả năng nhận diện chính xác và linh hoạt.

### Tính năng nổi bật:

- **Nhận diện khuôn mặt**: Phát hiện và xác định khuôn mặt với độ chính xác cao, hỗ trợ nhiều góc độ và điều kiện ánh sáng khác nhau

- **Đối chiếu sinh trắc học**: So sánh và xác thực khuôn mặt với dữ liệu trong hệ thống một cách nhanh chóng và đáng tin cậy 

- **Nhận diện đối tượng**: Khả năng phân loại và nhận dạng đa dạng đối tượng trong hình ảnh

- **API RESTful**: Cung cấp giao diện API đơn giản và mạnh mẽ, dễ dàng tích hợp vào các hệ thống khác

Được thiết kế theo kiến trúc microservice hiện đại, dịch vụ đảm bảo khả năng mở rộng cao và hiệu suất ổn định, phù hợp cho các ứng dụng từ quy mô nhỏ đến hệ thống doanh nghiệp lớn.

## 🏛️ Kiến trúc
Service được thiết kế theo kiến trúc layer, bao gồm:

### 🚀 API Layer (`app/api/`)
- REST API endpoints nhận request từ client
- Route handlers cho face recognition và object detection
- Request/response validation schemas  
- API documentation với Swagger/OpenAPI

### 🧩 Core Layer (`app/core/`)
- Cấu hình service (config)
- Kết nối cơ sở dữ liệu
- Thiết lập logging
- Constants và enums

### 📦 Models Layer (`app/models/`)
- Database models
- Data transfer objects (DTOs)
- Response schemas

### 🛠️ Services Layer (`app/services/`)
- Business logic chính
- Engine nhận diện khuôn mặt
- Engine phát hiện đối tượng
- Quản lý cache
- Tối ưu hóa hiệu suất

### 🔧 Utils Layer (`app/utils/`)
- Helpers xử lý hình ảnh
- Định dạng dữ liệu
- Tiện ích chung

## 🔑 Tính năng chính

### 👤 Nhận Diện Khuôn Mặt
- Nhận diện khuôn mặt trong ảnh
- So sánh khuôn mặt và scoring độ tương đồng
- Lưu trữ và truy xuất embedding khuôn mặt
- Quản lý cơ sở dữ liệu khuôn mặt

### 📷 Phát Hiện Đối Tượng
- Phát hiện đối tượng đa lớp
- Dự đoán bounding box
- Phân loại đối tượng
- Tích hợp mô hình pre-trained

### 🖼️ Xử Lý Hình Ảnh
- Tiền xử lý hình ảnh (resize, normalize)
- Tối ưu hóa cho suy luận mô hình
- Caching kết quả
- Xử lý batch

## 🛠️ Công Nghệ Sử Dụng

### 📚 Framework & Libraries
- FastAPI
- face_recognition
- OpenCV
- PyTorch/TensorFlow

### 🏗️ Hạ Tầng
- Redis caching
- Cơ sở dữ liệu PostgreSQL
- Docker containers
- CI/CD pipeline

### 📈 Khả Năng Mở Rộng
- Horizontal scaling
- Load balancing
- Độ sẵn sàng cao

### 📝 License
Dự án này được cấp phép theo các điều khoản của giấy phép GPL V3 [GPL V3 License](https://github.com/olp-dtu-2024/DTU-GreenHope/blob/main/LICENSE)
