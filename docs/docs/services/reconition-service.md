# 🛰️ Dịch vụ Nhận dạng (Recognition Service)

## 📝 Tổng quan
Dịch vụ Nhận dạng là thành phần cốt lõi của nền tảng Hi Vọng Xanh, xử lý phân tích hình ảnh vệ tinh để phát hiện thiên tai và đánh giá tác động. Dịch vụ này giúp phân tích dữ liệu vệ tinh theo thời gian thực, đánh giá mức độ thiệt hại và dự báo nhu cầu cứu trợ, từ đó hỗ trợ các hoạt động cứu trợ thiên tai hiệu quả.

## 🛠️ Tính năng
- **Phân tích hình ảnh vệ tinh theo thời gian thực**: Xử lý và phân tích các hình ảnh vệ tinh để phát hiện thiên tai và tình hình thiệt hại.
- **Đánh giá thiệt hại tự động**: Xác định mức độ thiệt hại của các khu vực bị ảnh hưởng, cung cấp báo cáo chi tiết về tình hình thiên tai.
- **Dự báo nhu cầu cứu trợ thiên tai**: Dự báo các nhu cầu cứu trợ như thực phẩm, thuốc men, nước sạch cho các vùng bị ảnh hưởng.
- **Tích hợp với TensorFlow cho xử lý ML/AI**: Sử dụng TensorFlow để triển khai c��c mô hình học máy và trí tuệ nhân tạo phục vụ việc phân tích và nhận diện trong hình ảnh vệ tinh.

## 📁 Cấu trúc thư mục

## ⚙️ Công nghệ sử dụng
- **Python**: Ngôn ngữ lập trình chính để phát triển dịch vụ.
- **TensorFlow**: Thư viện mã nguồn mở hỗ trợ triển khai các mô hình học sâu (deep learning) cho phân tích hình ảnh.
- **REST API endpoints**: Cung cấp các API để tích hợp và giao tiếp với các dịch vụ bên ngoài.
- **Docker containerization**: Triển khai dịch vụ trong môi trường Docker để đảm bảo tính ổn định và dễ dàng mở rộng.

## 🔌 API Endpoints

### POST /api/v1/analyze
- **Mô tả**: Phân tích hình ảnh vệ tinh để phát hiện thiên tai và đánh giá thiệt hại.
- **Request body**: Nhận tệp hình ảnh (multipart/form-data).
- **Response**: Cung cấp kết quả phân tích, bao gồm thông tin về mức độ thiệt hại và các khu vực bị ảnh hưởng.

### GET /api/v1/status
- **Mô tả**: Truy vấn trạng thái sức khỏe của dịch vụ.
- **Response**: Thông tin trạng thái hoạt động của dịch vụ, giúp kiểm tra liệu dịch vụ có đang hoạt động bình thường hay không.

## 🌱 Biến môi trường
Các biến môi trường cần thiết để cấu hình dịch vụ nhận dạng:
- `TENSORFLOW_MODEL_PATH=./models`: Đường dẫn đến mô hình TensorFlow đã được huấn luyện.
- `API_PORT=3000`: Cổng API mà dịch vụ sử dụng để lắng nghe các yêu cầu.
- `KAFKA_BROKER=localhost:9092`: Địa chỉ của broker Kafka dùng cho việc xử lý tin nhắn.
- `REDIS_URL=redis://localhost:6379`: Địa chỉ Redis cho việc lưu trữ tạm thời kết quả.

## 🚢 Triển khai Docker

Dịch vụ nhận dạng có thể được triển khai trong Docker để đảm bảo môi trường vận hành ổn định. Docker giúp đơn giản hóa quá trình triển khai và bảo trì, đồng thời dễ dàng mở rộng dịch vụ khi cần thiết.

## 🔗 Điểm tích hợp
- **Kafka**: Hệ thống hàng đợi tin nhắn Kafka giúp xử lý dữ liệu theo thời gian thực.
- **Redis**: Sử dụng Redis để lưu trữ các kết quả tạm thời, giúp truy xuất nhanh chóng trong quá trình xử lý.
- **PostgreSQL/TimescaleDB**: Cơ sở dữ liệu PostgreSQL được sử dụng để lưu trữ các kết quả phân tích và dữ liệu lịch sử.
- **NocoBase LCDP**: Dịch vụ này tích hợp với nền tảng NocoBase LCDP để hỗ trợ phát triển và quản lý ứng dụng.

## 📋 Quy tắc phát triển
- **Tuân thủ chuẩn mã nguồn Python PEP 8**: Dịch vụ phải tuân thủ chuẩn mã hóa Python PEP 8 để đảm bảo mã nguồn sạch sẽ, dễ duy trì.
- **Viết unit tests**: Mỗi tính năng mới cần được kiểm thử đơn vị (unit testing) để đảm bảo chất lượng mã nguồn.
- **Cập nhật tài liệu API**: Mỗi khi có thay đổi về API, cần cập nhật tài liệu để đảm bảo các bên liên quan có thông tin chính xác.
- **Sử dụng commit theo chuẩn convention**: Các commit nên theo một quy ước rõ ràng, dễ hiểu để người khác có thể dễ dàng theo dõi sự thay đổi trong mã nguồn.

## 🧪 Kiểm thử
Để đảm bảo chất lượng dịch vụ, việc kiểm thử rất quan trọng:
- **Unit tests**: Kiểm thử các đơn vị mã nguồn riêng lẻ để đảm bảo mỗi phần của hệ thống hoạt động như mong đợi.
- **Integration tests**: Kiểm thử sự tương tác giữa các thành phần của dịch vụ để đảm bảo tất cả các phần làm việc mượt mà khi kết hợp lại với nhau.
## 📞 Liên hệ hỗ trợ
- Email: minhtuanledng@gmail.com 
- Hotline: +84 889 001 505 
- Website: green-hope.minhtuandng.id.vn

## 📝 License
Dự án này được cấp phép theo các điều khoản của giấy phép GPL V3 [GPL V3 License](https://github.com/olp-dtu-2024/DTU-GreenHope/blob/main/LICENSE)
