# ✅ Captcha service
Captcha service sẽ giải captcha phục vụ cho transaction service, bằng python, ONNX (Open Neural Network Exchange).

## Kiến Trúc của Captcha Service
Captcha service có thể được xây dựng dưới dạng một dịch vụ độc lập hoặc là một phần của ứng dụng web hiện tại. Kiến trúc của Captcha service thường bao gồm các thành phần sau:


- Captcha Generation: Khi người dùng truy cập trang yêu cầu xác minh CAPTCHA (ví dụ, form đăng nhập, đăng ký, hay thanh toán), server sẽ tạo ra một thử thách CAPTCHA (hình ảnh, câu hỏi, v.v.) và gửi nó đến client (trình duyệt của người dùng).
- Hình ảnh/Challenge: Captcha generator có thể tạo các hình ảnh chứa các ký tự ngẫu nhiên hoặc yêu cầu nhận diện đối tượng trong hình ảnh. Đối với reCAPTCHA, đây sẽ là việc gọi API của Google để lấy thử thách.
-Captcha Validation: Sau khi người dùng trả lời thử thách CAPTCHA, dữ liệu trả lời (có thể là một chuỗi ký tự hoặc thông tin về các đối tượng trong hình ảnh) sẽ được gửi lại tới server để kiểm tra tính hợp lệ.
Tính hợp lệ: Server sẽ kiểm tra câu trả lời của người dùng với câu trả lời chính xác hoặc so sánh kết quả từ API CAPTCHA bên ngoài (ví dụ, reCAPTCHA của Google).
- API Captcha: Dịch vụ CAPTCHA có thể được triển khai dưới dạng một API giúp các ứng dụng khác sử dụng dịch vụ này để tích hợp vào hệ thống của họ. API có thể cung cấp các chức năng:
Tạo Captcha: Sinh CAPTCHA và trả về cho client.
Kiểm tra Captcha: Xác minh câu trả lời CAPTCHA của người dùng.
## Quy Trình Hoạt Động của Captcha Service
- Gửi yêu cầu CAPTCHA
- Hiển thị CAPTCHA 
- Người dùng giải CAPTCHA
- Gửi kết quả CAPTCHA 
- Kiểm tra câu trả lời CAPTCHA
- Xử lý kết quả CAPTCHA 
## Lợi Ích của Captcha Service
- Ngăn chặn bot và lạm dụng: Captcha giúp ngăn chặn các cuộc tấn công tự động như brute force attack (tấn công thử tất cả các mật khẩu có thể) hoặc spamming (gửi thông tin tự động).
- Bảo mật cho hệ thống: Khi yêu cầu người dùng giải quyết thử thách CAPTCHA, hệ thống đảm bảo rằng chỉ người dùng thực sự có thể thực hiện các thao tác quan trọng.
- Tiện lợi và dễ tích hợp: Các dịch vụ như reCAPTCHA của Google cho phép các nhà phát triển tích hợp một cách dễ dàng vào các ứng dụng mà không cần phải xây dựng hệ thống CAPTCHA từ đầu.
