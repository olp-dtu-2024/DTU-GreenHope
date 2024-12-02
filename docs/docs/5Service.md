# Services

## 💱 Transaction service
[Transaction service ](https://www.pwc.com/vn/en/services/deals/transaction.html) service gửi thông báo giao dịch: Đây là service chịu trách nhiệm thu thập thông tin giao dịch từ hệ thống ngân hàng (có thể từ cơ sở dữ liệu, API, hoặc các hệ thống giao dịch khác) và gửi dữ liệu vào Kafka topic. Dữ liệu có thể là thông tin đơn giản như số tài khoản, số tiền, thời gian giao dịch, hoặc dữ liệu phức tạp hơn tùy vào yêu cầu.
 1. Quản lý Giao Dịch trong Hệ Thống Phân Tán
Transaction service giúp điều phối các giao dịch trên nhiều hệ thống, đồng thời đảm bảo các đặc tính ACID (Atomicity, Consistency, Isolation, Durability) của giao dịch. Điều này có thể được thực hiện qua các công nghệ như:
- Two-phase commit (2PC): Một giao thức để đảm bảo tính nhất quán của giao dịch giữa các hệ thống phân tán.
- Distributed Transaction Protocols: Các giao thức phức tạp hơn được sử dụng trong các hệ thống phân tán lớn.

2. Các Thành Phần Chính Của Transaction Service
Một dịch vụ giao dịch có thể bao gồm các thành phần sau:

- Transaction Manager: Quản lý quá trình giao dịch, đảm bảo tất cả các bước trong giao dịch được thực hiện chính xác và hoàn tất.
- Transactional Resources: Các tài nguyên như cơ sở dữ liệu, hệ thống file, dịch vụ web mà giao dịch có thể tác động đến.
- Logging/Recovery System: Một hệ thống để ghi lại tất cả các thay đổi trong giao dịch, giúp khôi phục trạng thái của hệ thống nếu có sự cố xảy ra.
3. Các Kiểu Giao Dịch
- Giao dịch đơn: Một giao dịch đơn giản, bao gồm các thao tác trên một hệ thống duy nhất.
- Giao dịch liên hệ (Chained transactions): Một loạt các giao dịch phụ thuộc vào nhau, ví dụ, một giao dịch đầu tiên phải thành công để các giao dịch tiếp theo có thể được thực hiện.
- Giao dịch phân tán: Các giao dịch yêu cầu thực hiện trên nhiều hệ thống hoặc dịch vụ khác nhau.
5. Sử Dụng trong Microservices
Trong kiến trúc microservices, nơi ứng dụng được chia thành nhiều dịch vụ nhỏ độc lập, mỗi dịch vụ có thể thực hiện giao dịch của riêng mình.  Một số phương pháp để xử lý giao dịch trong microservices bao gồm:

- Event-driven architecture: Thay vì thực hiện một giao dịch toàn cục, hệ thống có thể sử dụng các sự kiện (events) để thông báo về các thay đổi trạng thái giữa các dịch vụ. Mỗi dịch vụ sẽ xử lý sự kiện và thay đổi trạng thái tương ứng.
- SAGA pattern: Một phương pháp để quản lý giao dịch dài trong các hệ thống phân tán, thông qua việc chia nhỏ giao dịch thành nhiều giao dịch con (subtransactions), mỗi giao dịch con sẽ có thể hoàn tất hoặc hủy bỏ tùy vào tình huống.

## ✅ Captcha service
Captcha service sẽ giải captcha phục vụ cho transaction service, bằng python, ONNX (Open Neural Network Exchange).

1. Kiến Trúc của Captcha Service
Captcha service có thể được xây dựng dưới dạng một dịch vụ độc lập hoặc là một phần của ứng dụng web hiện tại. Kiến trúc của Captcha service thường bao gồm các thành phần sau:


- Captcha Generation: Khi người dùng truy cập trang yêu cầu xác minh CAPTCHA (ví dụ, form đăng nhập, đăng ký, hay thanh toán), server sẽ tạo ra một thử thách CAPTCHA (hình ảnh, câu hỏi, v.v.) và gửi nó đến client (trình duyệt của người dùng).
- Hình ảnh/Challenge: Captcha generator có thể tạo các hình ảnh chứa các ký tự ngẫu nhiên hoặc yêu cầu nhận diện đối tượng trong hình ảnh. Đối với reCAPTCHA, đây sẽ là việc gọi API của Google để lấy thử thách.
-Captcha Validation: Sau khi người dùng trả lời thử thách CAPTCHA, dữ liệu trả lời (có thể là một chuỗi ký tự hoặc thông tin về các đối tượng trong hình ảnh) sẽ được gửi lại tới server để kiểm tra tính hợp lệ.
Tính hợp lệ: Server sẽ kiểm tra câu trả lời của người dùng với câu trả lời chính xác hoặc so sánh kết quả từ API CAPTCHA bên ngoài (ví dụ, reCAPTCHA của Google).
- API Captcha: Dịch vụ CAPTCHA có thể được triển khai dưới dạng một API giúp các ứng dụng khác sử dụng dịch vụ này để tích hợp vào hệ thống của họ. API có thể cung cấp các chức năng:
Tạo Captcha: Sinh CAPTCHA và trả về cho client.
Kiểm tra Captcha: Xác minh câu trả lời CAPTCHA của người dùng.
2. Quy Trình Hoạt Động của Captcha Service
- Gửi yêu cầu CAPTCHA
- Hiển thị CAPTCHA 
- Người dùng giải CAPTCHA
- Gửi kết quả CAPTCHA 
- Kiểm tra câu trả lời CAPTCHA
- Xử lý kết quả CAPTCHA 
3. Lợi Ích của Captcha Service
- Ngăn chặn bot và lạm dụng: Captcha giúp ngăn chặn các cuộc tấn công tự động như brute force attack (tấn công thử tất cả các mật khẩu có thể) hoặc spamming (gửi thông tin tự động).
- Bảo mật cho hệ thống: Khi yêu cầu người dùng giải quyết thử thách CAPTCHA, hệ thống đảm bảo rằng chỉ người dùng thực sự có thể thực hiện các thao tác quan trọng.
- Tiện lợi và dễ tích hợp: Các dịch vụ như reCAPTCHA của Google cho phép các nhà phát triển tích hợp một cách dễ dàng vào các ứng dụng mà không cần phải xây dựng hệ thống CAPTCHA từ đầu.
## 🤖 Recognition Services
Recognition Service là một dịch vụ được sử dụng để nhận dạng hoặc phân tích thông tin từ dữ liệu đầu vào, thường là các loại dữ liệu không có cấu trúc như hình ảnh, âm thanh, video hoặc văn bản. Các dịch vụ nhận dạng có thể bao gồm nhận dạng hình ảnh (image recognition), nhận dạng giọng nói (speech recognition), nhận dạng văn bản (OCR), nhận dạng hành động (gesture recognition), nhận dạng khuôn mặt (face recognition).
1. Các Loại Recognition Services
- Face Recognition (Nhận Dạng Khuôn Mặt)
- Speech Recognition (Nhận Dạng Giọng Nói)
- Optical Character Recognition (OCR)
- Gesture Recognition (Nhận Dạng Cử Chỉ)
- Text Recognition (Nhận Dạng Văn Bản)
- Emotion Recognition (Nhận Dạng Cảm Xúc)
2. Kiến Trúc của Recognition Service

- Input Layer (Lớp Dữ Liệu Đầu Vào)
- Preprocessing (Xử Lý Sơ Bộ)
- Recognition Model (Mô Hình Nhận Dạng)
- Processing & Decision Making (Xử Lý và Quyết Định)
-  Output Layer (Lớp Kết Quả)
3. Lợi Ích của Recognition Service
- Tự động hóa: Giảm thiểu công việc thủ công trong việc phân loại và phân tích dữ liệu.
- An ninh: Cung cấp các phương thức bảo mật nâng cao như nhận diện khuôn mặt, nhận diện giọng nói.
- Tiện lợi: Cải thiện trải nghiệm người dùng qua việc sử dụng nhận dạng giọng nói và

## 📱 LCDP service 
LCDP là một nền tảng cho phép phát triển ứng dụng phần mềm với rất ít mã nguồn, chủ yếu thông qua các giao diện đồ họa, kéo và thả (drag-and-drop), và các công cụ hỗ trợ khác. Các nền tảng này giúp giảm thiểu sự phụ thuộc vào lập trình viên và cho phép người dùng (bao gồm cả người không chuyên về lập trình) tạo ra các ứng dụng mà không cần phải viết mã quá phức tạp.
1. Cách hoạt động của LCDP:
- Giao diện đồ họa kéo-thả
- Quy trình tự động hóa
- Kết nối dễ dàng với các dịch vụ ngoài
- Khả năng mở rộng và tùy chỉnh
2. Lợi ích của LCDP 
- Tiết kiệm thời gian phát triển: Với LCDP, việc xây dựng ứng dụng trở nên nhanh chóng và dễ dàng hơn rất nhiều, vì không cần phải viết mã từ đầu cho các chức năng cơ bản.
- Giảm chi phí phát triển: Các công ty có thể sử dụng LCDP để tạo ra ứng dụng mà không cần phải có đội ngũ phát triển phần mềm lớn.
- Khả năng tùy biến cao: Mặc dù chủ yếu không cần mã nguồn, nhưng các nền tảng này vẫn cho phép lập trình viên tùy chỉnh các chức năng và logic nếu cần thiết.
- Tính linh hoạt: Dễ dàng thay đổi và mở rộng các tính năng của ứng dụng mà không phải viết lại mã hoàn toàn.
