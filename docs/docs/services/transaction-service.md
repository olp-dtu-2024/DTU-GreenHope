# 💱 Transaction Service

## 📝 Tổng Quan
Dịch vụ Giao dịch (Transaction Service) là thành phần cốt lõi trong hệ thống Hi Vọng Xanh, chịu trách nhiệm xử lý các giao dịch cứu trợ và quản lý dòng tiền. Được xây dựng trên nền tảng TypeScript và NestJS, dịch vụ này tích hợp nhiều công nghệ hiện đại nhằm đảm bảo tính minh bạch, hiệu quả và an toàn cho tất cả các giao dịch.

## 🏗️ Kiến Trúc Chi Tiết

### ⚓️ 1. Các Thành Phần Chính
- **Transaction Controller**: Xử lý các yêu cầu HTTP liên quan đến giao dịch, đảm bảo tính chính xác và nhanh chóng.
- **Transaction Service Layer**: Chứa logic nghiệp vụ chính, thực hiện các quy trình giao dịch phức tạp.
- **Repository Layer**: Tương tác với cơ sở dữ liệu để lưu trữ và truy xuất thông tin.
- **Event Handlers**: Xử lý các sự kiện từ Kafka, đảm bảo thông tin được truyền tải một cách hiệu quả.

### 📈 2. Sơ Đồ Cơ Sở Dữ Liệu
- **Transactions**: Lưu trữ thông tin chi tiết về các giao dịch.
- **Transaction_Logs**: Ghi lại nhật ký giao dịch để theo dõi và kiểm tra.
- **Relief_Funds**: Quản lý quỹ cứu trợ, đảm bảo nguồn lực được phân bổ hợp lý.
- **Beneficiaries**: Lưu trữ thông tin về những người nhận cứu trợ.

### 🧬 3. Tích Hợp Kafka
- **Topics**:
  - `transaction-events`: Chứa các sự kiện liên quan đến giao dịch.
  - `relief-distribution`: Quản lý quá trình phân phối cứu trợ.
  - `notification-events`: Thông báo về trạng thái giao dịch và phân phối.

## 🔄 Quy Trình Xử Lý Giao Dịch

### ⚖️ 1. Khởi Tạo Giao Dịch
- **API Endpoint**: `POST /transactions`
- Thực hiện xác thực dữ liệu đầu vào và kiểm tra captcha qua Captcha Service để ngăn chặn giao dịch tự động.
- Tạo bản ghi giao dịch mới trong cơ sở dữ liệu.

### 🔧 2. Xử Lý SAGA Pattern   
1. **Khởi Đầu Giao Dịch**
   - Khởi tạo một instance của saga để theo dõi tiến trình giao dịch.
   - Ghi log để theo dõi thời điểm bắt đầu.

2. **Các Bước Thực Hiện**
   - Kiểm tra số dư tài khoản.
   - Xác thực danh tính người dùng.
   - Thực hiện giao dịch và cập nhật trạng thái tương ứng.

3. **Xử Lý Rollback**
   - Tự động thực hiện rollback khi phát sinh lỗi trong quá trình xử lý.
   - Ghi log chi tiết để phục vụ cho việc kiểm tra và khắc phục sự cố.

## 🛠️ Tích Hợp Với Các Dịch Vụ Khác

###  1. Captcha Service
- Đảm bảo xác thực captcha trước mỗi giao dịch để ngăn chặn hoạt động của bot.

###  2. Recognition Service
- Xác thực thông tin người dùng và phân tích dữ liệu giao dịch nhằm nâng cao độ tin cậy.

###  3. LCDP Service (NocoBase)
- Quản lý cấu hình hệ thống và tạo báo cáo tự động để theo dõi hiệu suất.

## 📊 Giám Sát & Ghi Nhận

### 1. Metrics
- Theo dõi thông số hiệu suất như throughput của giao dịch, thời gian phản hồi, tỷ lệ lỗi và tỷ lệ thành công.

### 2. Logging
- Ghi lại nhật ký yêu cầu/phản hồi, nhật ký lỗi và nhật ký kiểm toán để phục vụ cho việc phân tích sau này.

## 🔐 Bảo Mật

### 1. Xác Thực & Phân Quyền
- Sử dụng JWT để xác thực người dùng, kết hợp với kiểm soát truy cập dựa trên vai trò (RBAC) và xác thực API key.

### 2. Bảo Mật Dữ Liệu
- Áp dụng mã hóa dữ liệu khi lưu trữ và truyền tải, đồng thời bảo vệ thông tin cá nhân (PII).

## 🚀 Khả Năng Mở Rộng
- Hỗ trợ mở rộng ngang với Kubernetes, sử dụng sharding cơ sở dữ liệu và caching với Redis để cải thiện hiệu suất.
- Cân bằng tải (Load balancing) giúp tối ưu hóa tài nguyên hệ thống.

## 📈 Tối Ưu Hiệu Suất
- Sử dụng connection pooling, tối ưu hóa truy vấn cơ sở dữ liệu, áp dụng chiến lược caching và xử lý theo lô để nâng cao hiệu suất tổng thể.

## 🔄 Khôi Phục Sau Thảm Họa
- Thiết lập các chiến lược sao lưu, quy trình chuyển tiếp (failover) và sao chép dữ liệu để đảm bảo tính khả dụng liên tục của hệ thống.

## ✅ Kết Luận
Dịch vụ Giao dịch đóng vai trò thiết yếu trong việc quản lý và điều phối các hoạt động tài chính trong môi trường phân tán. Với việc áp dụng các công nghệ tiên tiến cùng phương pháp quản lý hiện đại, nó không chỉ đảm bảo tính nhất quán và an toàn cho dữ liệu mà còn tối ưu hóa hiệu suất của toàn bộ hệ thống, góp phần vào sự phát triển bền vững của Hi Vọng Xanh.

## 📞 Liên hệ hỗ trợ
- Email: minhtuanledng@gmail.com 
- Hotline: +84 889 001 505 
- Website: green-hope.minhtuandng.id.vn

### 📝 License
Dự án này được cấp phép theo các điều khoản của giấy phép GPL V3 [GPL V3 License](https://github.com/olp-dtu-2024/DTU-GreenHope/blob/main/LICENSE)
