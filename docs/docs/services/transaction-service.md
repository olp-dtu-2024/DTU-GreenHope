# 💱 Transaction service
**`Transaction service` service gửi thông báo giao dịch: Đây là service chịu trách nhiệm thu thập thông tin giao dịch từ hệ thống ngân hàng (có thể từ cơ sở dữ liệu, API, hoặc các hệ thống giao dịch khác) và gửi dữ liệu vào Kafka topic. Dữ liệu có thể là thông tin đơn giản như số tài khoản, số tiền, thời gian giao dịch, hoặc dữ liệu phức tạp hơn tùy vào yêu cầu.**
## Quản lý Giao Dịch trong Hệ Thống Phân Tán
Transaction service giúp điều phối các giao dịch trên nhiều hệ thống, đồng thời đảm bảo các đặc tính ACID (Atomicity, Consistency, Isolation, Durability) của giao dịch. Điều này có thể được thực hiện qua các công nghệ như:
- Two-phase commit (2PC): Một giao thức để đảm bảo tính nhất quán của giao dịch giữa các hệ thống phân tán.
- Distributed Transaction Protocols: Các giao thức phức tạp hơn được sử dụng trong các hệ thống phân tán lớn.

## Các Thành Phần Chính Của Transaction Service
Một dịch vụ giao dịch có thể bao gồm các thành phần sau:

- Transaction Manager: Quản lý quá trình giao dịch, đảm bảo tất cả các bước trong giao dịch được thực hiện chính xác và hoàn tất.
- Transactional Resources: Các tài nguyên như cơ sở dữ liệu, hệ thống file, dịch vụ web mà giao dịch có thể tác động đến.
- Logging/Recovery System: Một hệ thống để ghi lại tất cả các thay đổi trong giao dịch, giúp khôi phục trạng thái của hệ thống nếu có sự cố xảy ra.
## Các Kiểu Giao Dịch
- Giao dịch đơn: Một giao dịch đơn giản, bao gồm các thao tác trên một hệ thống duy nhất.
- Giao dịch liên hệ (Chained transactions): Một loạt các giao dịch phụ thuộc vào nhau, ví dụ, một giao dịch đầu tiên phải thành công để các giao dịch tiếp theo có thể được thực hiện.
- Giao dịch phân tán: Các giao dịch yêu cầu thực hiện trên nhiều hệ thống hoặc dịch vụ khác nhau.
## Sử Dụng trong Microservices
Trong kiến trúc microservices, nơi ứng dụng được chia thành nhiều dịch vụ nhỏ độc lập, mỗi dịch vụ có thể thực hiện giao dịch của riêng mình.  Một số phương pháp để xử lý giao dịch trong microservices bao gồm:

- Event-driven architecture: Thay vì thực hiện một giao dịch toàn cục, hệ thống có thể sử dụng các sự kiện (events) để thông báo về các thay đổi trạng thái giữa các dịch vụ. Mỗi dịch vụ sẽ xử lý sự kiện và thay đổi trạng thái tương ứng.
- SAGA pattern: Một phương pháp để quản lý giao dịch dài trong các hệ thống phân tán, thông qua việc chia nhỏ giao dịch thành nhiều giao dịch con (subtransactions), mỗi giao dịch con sẽ có thể hoàn tất hoặc hủy bỏ tùy vào tình huống.
