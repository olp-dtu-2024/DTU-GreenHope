# Hướng Dẫn Cài Đặt 
## 🔧 Yêu Cầu Hệ Thống

### 🛠️ Phần Mềm Bắt Buộc
- 🐳 Docker Desktop - [Tải tại đây](https://www.docker.com/products/docker-desktop/)
- 🧶 Yarn phiên bản 1.2.1 (Yêu cầu bởi Nocobase)
- 🌳 Git

## ℹ️ Ghi Chú Quan Trọng

> **Lưu ý về NocoBase và Yarn Workspace:**
>
> - Nocobase ([Tài liệu chính thức](https://docs.nocobase.com/welcome/getting-started/installation/create-nocobase-app)) yêu cầu Yarn phiên bản 1.22.x
> - Yarn 1.22.x không hỗ trợ workspace public
> - Vì đây là dự án mã nguồn mở, chúng tôi đã để `private = false` trong `lcdp-app/package.json`
> - Để phát triển tiếp dự án, bạn cần:
>   - Mở file `lcdp-app/package.json`
>   - Thay đổi trường `private` từ `false` thành `true`
>   - Sau đó có thể tiếp tục phát triển bình thường

### 📥 Hướng Dẫn Cài Đặt Chi Tiết

#### 🏭 Môi Trường Production
```bash
# Tải mã nguồn về
git clone https://github.com/olp-dtu-2024/DTU-GreenHope.git

# Di chuyển vào thư mục dự án
cd DTU-GreenHope

# Cài đặt các gói phụ thuộc
yarn install

# Khởi chạy docker cho môi trường production
yarn docker:release
```

**🔐 Thông tin đăng nhập mặc định:**
- 👤 Tài khoản: `admin@nocobase.com`
- 🔑 Mật khẩu: `admin123`

### 💻 Môi Trường Development

#### Bước 1: Cài đặt dự án
```bash
# Tải mã nguồn về
cd DTU-GreenHope
yarn install
yarn docker:build
```

#### Bước 2: Cài Đặt LCDP App (NocoBase)
```bash
# Cài đặt và cấu hình NocoBase
cd DTU-GreenHope/lcdp-app
# Mở file package.json và thay đổi trường private từ false thành true
yarn install
yarn nocobase install --lang=en-US
yarn lcdp:restore
yarn dev
```
Máy chủ phát triển sẽ chạy tại: http://localhost:13000
#### Bước 3: Cài đặt transaction service
```bash
# Cài đặt dự án
cd DTU-GreenHope/transaction-service
yarn install
yarn dev
```
#### Bước 4: Cài đặt solidity service
```bash
# Cài đặt dự án
cd DTU-GreenHope/solidity-service
yarn install
yarn dev
```
#### Bước 5: Cài đặt recognition service
```bash
# Cài đặt dự án
cd DTU-GreenHope/recognition-service
pip install -r requirements.txt
python app.py
```
#### Bước 6: Cài đặt captcha service
```bash
# Cài đặt dự án
cd DTU-GreenHope/captcha-service
pip install -r requirements.txt
python app.py
```
## 🔌 Phát Triển Plugin Mới
```bash
# Tạo plugin mới
yarn pm create @<tên-namespace>/<tên-package>

# Ví dụ
yarn pm create @greenhope/theo-doi-thien-tai
```

## 🔗 Cấu Hình Ports

| 🚦 Dịch Vụ | 🏭 Ports Production | 💻 Ports Development | 📝 Mô Tả |
|------------|:-------------------:|:-------------------:|-----------|
| 📦 LCDP NOCOBASE | `12000:12000` | `13000` | Nền tảng ứng dụng chính |
| 🤖 Recognition Service | `8001:8001` | `8001` | Dịch vụ nhận diện |
| 💱 Transaction Service | `3027:3027` | `3027` | Trung tâm xử lý giao dịch |
| 🔗 Solidity Service | `3029:3029` | `3029` | Tương tác hợp đồng blockchain |
| 🛡️ Captcha Service | `1234:1234` | `1234` | Hệ thống xác minh giải mã |
| 📡 Kafka | `9092:9092`  `9093:9093` | `9092` `9093` | Nền tảng streaming phân tán |
| 💾 Redis | `6444:6379` | `6444` | Kho dữ liệu trong bộ nhớ |
| 🗃️ PostgreSQL | `5439:5432` | `5439` | Hệ quản trị cơ sở dữ liệu |
| ⛓️ Ganache | `8545:8545` | `8545` | Blockchain Ethereum cục bộ |
| 🌳 Zookeeper | `2181:2181` | `2181` | Quản lý tin nhắn Kafka |

## 📦 Các Package Phát Triển Trong Nền Tảng
- [@dtu-olp-2024/carousel-nocobase](https://www.npmjs.com/package/@dtu-olp-2024/carousel-nocobase)
- [@dtu-olp-2024/kafka-nocobase](https://www.npmjs.com/package/@dtu-olp-2024/kafka-nocobase)
- [@dtu-olp-2024/progress-nocobase](https://www.npmjs.com/package/@dtu-olp-2024/progress-nocobase)
- [@dtu-olp-2024/rich-block-nocobase](https://www.npmjs.com/package/@dtu-olp-2024/rich-block-nocobase)
- [@dtu-olp-2024/vietqr-nocobase](https://www.npmjs.com/package/@dtu-olp-2024/vietqr-nocobase)
- [@dtu-olp-2024/landing-page](https://www.npmjs.com/package/@dtu-olp-2024/landing-page)
- [@dtu-olp-2024/solidity-editor-nocobase](https://www.npmjs.com/package/@dtu-olp-2024/solidity-editor-nocobase)
- [@dtu-olp-2024/video-player-nocobase](https://www.npmjs.com/package/@dtu-olp-2024/video-player-nocobase)
## 💡Nhà phát triển
-  Lê Minh Tuấn
```
      📧 Email: minhtuanledng@gmail.com
      📱 Hotline: 0889001505
```
-  Trần Nguyễn Duy Khánh
```
     📧 Email: duykhanhtran17062003@gmail.com
     📱 Hotline: 0905081330
```
-  Trịnh Minh Son
```
     📧 Email: trinhminhson2004@gmail.com
     📱 Hotline: 0357572879
```
Dự án này được cấp phép theo các điều khoản của giấy phép GPL V3 [GPL V3 License](https://github.com/olp-dtu-2024/DTU-GreenHope/blob/main/LICENSE)

