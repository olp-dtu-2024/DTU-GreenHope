# 🔐 Dịch vụ Solidity Service

## 📝 Tổng quan
Dịch vụ Solidity Service là một microservice trong hệ thống Hi Vọng Xanh, được phát triển để quản lý các smart contract và giao dịch blockchain. Dịch vụ này đảm bảo tính minh bạch trong hoạt động cứu trợ, giúp quản lý các giao dịch tài trợ, theo dõi và kiểm soát các smart contract.

## 🛠️ Chức năng chính

### 1. Quản lý Smart Contract
- Triển khai và quản lý các smart contract cho hoạt động cứu trợ.
- Theo dõi và kiểm soát các giao dịch tài trợ.
- Đảm bảo tính minh bạch của nguồn tiền cứu trợ.

### 2. Xử lý Giao dịch
- Tạo và quản lý ví blockchain.
- Xử lý giao dịch chuyển tiền cứu trợ.
- Tạo báo cáo tài chính tự động.

### 3. Tích hợp Hệ thống
- Kết nối với `transaction-service` để đồng bộ dữ liệu.
- Tích hợp với hệ thống báo cáo tổng thể.
- Cung cấp API để tương tác với các service khác.

## ⚙️ Công nghệ sử dụng
- **Solidity**: Ngôn ngữ lập trình để phát triển smart contract.
- **Web3.js**: Thư viện giúp tương tác với blockchain.
- **TypeScript**: Ngôn ngữ lập trình backend.
- **NestJS**: Framework phát triển cho backend.

## 🌱 Cấu hình môi trường
- `NODE_ENV=development`: Chế độ môi trường phát triển.
- `BLOCKCHAIN_NETWORK=testnet`: Mạng blockchain thử nghiệm.
- `SMART_CONTRACT_ADDRESS=<địa_chỉ_contract>`: Địa chỉ của smart contract.
- `WALLET_PRIVATE_KEY=<khóa_bí_mật>`: Khóa bí mật ví blockchain.

## 🚀 API Endpoints

### Smart Contract
- **POST /contracts/deploy**: Triển khai smart contract mới.
- **GET /contracts/:address**: Lấy thông tin smart contract.
- **POST /contracts/:address/execute**: Thực thi một function trong contract.

### Giao dịch
- **POST /transactions**: Tạo giao dịch mới.
- **GET /transactions/:hash**: Kiểm tra trạng thái giao dịch.
- **GET /transactions/history**: Lấy lịch sử giao dịch.

### Ví dụ sử dụng API

## 🔄 Quy trình làm việc

### Khởi tạo Smart Contract
1. Triển khai contract mới.
2. Cấu hình các tham số cần thiết.
3. Kiểm tra tính đúng đắn của contract.

### Xử lý Giao dịch
1. Nhận yêu cầu từ `transaction-service`.
2. Thực hiện giao dịch trên blockchain.
3. Cập nhật trạng thái và gửi phản hồi.

### Giám sát và Báo cáo
1. Theo dõi trạng thái các giao dịch.
2. Tạo báo cáo định kỳ.
3. Lưu trữ lịch sử giao dịch.

## 🔒 Bảo mật
- Sử dụng mã hóa cho khóa private.
- Kiểm tra quyền truy cập API.
- Giới hạn số lượng request để bảo vệ hệ thống.
- Ghi log đầy đủ các hoạt động để theo dõi và khắc phục sự cố.

## ⚠️ Khắc phục sự cố

### Lỗi thường gặp:
- **Smart contract deployment failed**: Triển khai contract không thành công.
- **Transaction timeout**: Hết thời gian chờ giao dịch.
- **Gas estimation error**: Lỗi ước tính gas.

### Giải pháp:
- Kiểm tra kết nối mạng và cấu hình.
- Xác nhận số dư gas đủ cho giao dịch.
- Kiểm tra cấu hình môi trường, đảm bảo các tham số được cài đặt chính xác.

## 🧪 Phát triển và Kiểm thử

### Môi trường phát triển
- Cài đặt dependencies.
- Chạy môi trường phát triển và kiểm thử.

### Unit Testing
- Viết test cho các smart contract.
- Kiểm tra các function quan trọng của contract.
- Mô phỏng các trường hợp lỗi để đảm bảo tính ổn định của dịch vụ.

## 📁 Cấu trúc thư mục

## 📢 Events
Service này phát ra các events sau thông qua Kafka:

- `contract.deployed`: Khi một smart contract mới được triển khai
- `transaction.created`: Khi một giao dịch mới được tạo
- `transaction.confirmed`: Khi giao dịch được xác nhận thành công
- `transaction.failed`: Khi giao dịch thất bại

## 📞 Liên hệ hỗ trợ
- Email: minhtuanledng@gmail.com 
- Hotline: +84 889 001 505 
- Website: green-hope.minhtuandng.id.vn
## 📝 License
Dự án này được cấp phép theo các điều khoản của giấy phép GPL V3 [GPL V3 License](https://github.com/olp-dtu-2024/DTU-GreenHope/blob/main/LICENSE)
