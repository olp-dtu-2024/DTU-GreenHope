# Kiến trúc hệ thống
## Hệ thống
Thiết kế theo kiến trúc microservices như hình vẽ bên dưới:
![s](../resources/LCDP-Architecture.png)

## Các thành phần chính và chức năng:
- NocoBase: Là nền tảng cốt lõi, cung cấp giao diện người dùng và có thể là cả backend.
- LCDP: Một nguồn dữ liệu quan trọng, được lưu trữ trong Postgresql.
- Kafka: Hệ thống nhắn tin, đóng vai trò như một bus sự kiện, truyền tải dữ liệu giữa các dịch vụ.
- Zookeeper: Dịch vụ phối hợp, quản lý cấu hình và đồng bộ hóa các dịch vụ.
- Postgresql: Cơ sở dữ liệu chính để lưu trữ dữ liệu.
- Các dịch vụ khác: Nhận dạng, giao dịch, captcha, xử lý công việc, ... mỗi dịch vụ có chức năng riêng và giao tiếp với nhau thông qua Kafka.
## Cách thức hoạt động
- Dữ liệu từ LCDP được lưu trữ trong Postgresql.
- Các dịch vụ truy xuất dữ liệu từ Postgresql thông qua Kafka.
- Người dùng tương tác với hệ thống qua giao diện NocoBase.
- Các dịch vụ giao tiếp với nhau thông qua Kafka hoặc các - giao thức khác.
- Zookeeper đảm bảo sự đồng bộ và quản lý cấu hình.
## Đặc điểm nổi bật của kiến trúc
- Phân tán: Hệ thống được chia thành nhiều dịch vụ nhỏ, hoạt động độc lập.
- Linh hoạt: Dễ dàng mở rộng và thay đổi.
- Hiệu suất cao: Nhờ sử dụng Kafka và Redis.
- Độ tin cậy: Nhiều dịch vụ và cơ sở dữ liệu đảm bảo hệ thống hoạt động ổn định.
