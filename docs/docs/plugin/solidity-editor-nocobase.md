# Solidity Editor NocoBase Plugin

## 🌟 Giới Thiệu

_**[@dtu-olp-2024/solidity-editor-nocobase](https://www.npmjs.com/package/@dtu-olp-2024/solidity-editor-nocobase)**_ là một **plugin mạnh mẽ** cung cấp môi trường phát triển hợp đồng thông minh **Solidity** với giao diện khách hàng **Etherjs tích hợp**, giúp người dùng dễ dàng soạn thảo, triển khai và tương tác với các hợp đồng Blockchain. Plugin này được thiết kế dành cho các nhà phát triển muốn xây dựng và triển khai các hợp đồng thông minh trên nền tảng Blockchain một cách đơn giản và hiệu quả.

### 🏆 Bối Cảnh
Plugin được phát triển như một phần của cuộc thi **Mã Nguồn Mở 2024** với mục tiêu tạo ra một công cụ tiện ích giúp cộng đồng lập trình viên dễ dàng làm việc với **Solidity** và các hợp đồng Blockchain, đặc biệt là trong môi trường phát triển NocoBase.

## ✨ Tính Năng
Plugin này mang đến nhiều tính năng hữu ích để cải thiện quy trình phát triển hợp đồng thông minh của bạn:

- 📝 **Trình soạn thảo mã Solidity tích hợp với tô màu cú pháp**: Tăng cường trải nghiệm lập trình với cú pháp được tô màu dễ đọc, giúp bạn dễ dàng nhận diện các thành phần của mã.
- 🔗 **Giao diện khách hàng Web3 để tương tác Blockchain**: Kết nối trực tiếp với Blockchain và tương tác với các hợp đồng thông minh thông qua giao diện Web3 tích hợp.
- 🚀 **Triển khai hợp đồng thông minh trực tiếp từ giao diện**: Triển khai hợp đồng trực tiếp từ trình soạn thảo mà không cần phải dùng đến công cụ ngoài.
- 🎨 **Giao diện người dùng thân thiện với chủ đề Tokyo Night**: Tạo ra một không gian làm việc dễ chịu và dễ nhìn, với giao diện tối và dễ đọc, giúp bạn tập trung vào công việc.
- 💡 **Hoàn thiện mã và kiểm tra cú pháp**: Plugin hỗ trợ kiểm tra cú pháp trong quá trình soạn thảo mã, giúp bạn dễ dàng phát hiện lỗi và sửa chữa.
- 🔄 **Tích hợp mượt mà với NocoBase**: Sử dụng dễ dàng với nền tảng NocoBase, đảm bảo tính tương thích và hiệu suất ổn định.

## 🚀 **Cài Đặt**

### 🔧 **Sử dụng yarn:**
```bash 
    yarn add @olp-dtu-2024/solidity-editor-nocobase
```

### 🛠️ **Thêm trực tiếp với plugin manager:**

Từ trên menu, bạn chọn biểu tượng **Plugin manager** để truy cập vào Plugin manager

![Truy cập plugin manager page](image-3.png) 

Tiếp theo, bạn ấn nút **`Add new`** để mở hộp thoại thêm plugin.

![Mở hộp thoại thêm mới plugin](image-4.png)

  ✏️ **Sử dụng tên plugin**: 
  - Nhập tên plugin _**[@dtu-olp-2024/solidity-editor-nocobase](https://www.npmjs.com/package/@dtu-olp-2024/solidity-editor-nocobase)**_ vào ô nhập **`Npm package name`**.

![Điền tên plugin vào Npm package name](image-41.png)

  ✅ **Kích hoạt plugin**:

Sau khi thêm plugin thành công, bạn phải **`enable`** plugin này để sử dụng:

![Kích hoạt plugin](image-42.png)

## 💡 **Hướng dẫn sử dụng**
### 🛠️ **Tạo khối:**

![Tạo khối](image-43.png)

Lần lượt các bước thực hiện như sau: 
  - **Bước 1**: Chọn nút **_`Add Block`_** để mở hộp thoại chọn khối.
  - **Bước 2**: Chọn khối **_`Solidity Editor`_**.



### 🔧 Các thành phần của Solidity Editor 

!Các thành phần](image-45.png)


1️⃣ Nút Kết nối & Triển khai 🔌
- 🔗 Kết nối với ví MetaMask
- 📝 Triển khai hợp đồng thông minh lên blockchain  
- ⚡ Tương tác trực tiếp với mạng Blockchain

2️⃣ Nút Lưu trữ 💾
- 📂 Lưu mã nguồn vào cơ sở dữ liệu
- 📋 Quản lý phiên bản code

3️⃣ Trình Biên dịch 🛠️
- 📊 Chuyển đổi code sang ABI (Application Binary Interface)
- 🔄 Tạo ByteCode để triển khai
- ⚠️ Kiểm tra lỗi và tối ưu hóa

4️⃣ 4. Code Editor 📝
- 🎨 Trình soạn thảo
- ↩️ Hoàn tác/làm lại thao tác

### 🔧 Luồng sử dụng Solidity Editor 

 **1. Phát triển Contract** 📝
- Tạo mới smart contract trong Solidity Editor
- Viết và chỉnh sửa code
- Lưu code vào database

 **2. Biên dịch Contract** 🛠️
- Biên dịch code Solidity
- Tạo ra hai thành phần:
  - **ABI** (Application Binary Interface)
  - **ByteCode**

 **3. Kết nối Ví** 🔌
- Kết nối với ví MetaMask
- Xác thực người dùng
- Chọn mạng blockchain

 **4. Triển khai Contract** 🚀

- Deploy contract lên **Blockchain**
- Xác nhận giao dịch qua **MetaMask**
- Nhận về **Contract Address**

## Kết quả 🎯
- **Smart contract** được triển khai thành công
- **Contract Address** sẵn sàng để tương tác

## 📋 Phụ Thuộc

```
  {
    "@uiw/codemirror-theme-tokyo-night": "latest",
    "@uiw/react-codemirror": "latest",
    "@codemirror/lang-javascript": "latest",
    "web3": "latest",
    "react": "^18.x",
    "@types/react": "^18.x"
  }
```

## 📋 Yêu Cầu Tiên Quyết

Để sử dụng plugin một cách mượt mà và hiệu quả, bạn cần đảm bảo rằng hệ thống của mình đáp ứng các yêu cầu sau:

- 🖥 **Node.js phiên bản 18.x trở lên**: Cập nhật Node.js để sử dụng tính năng mới nhất và cải thiện hiệu suất.

- 🌐 **Phiên bản NocoBase mới nhất**: Đảm bảo bạn đang sử dụng phiên bản NocoBase mới nhất để tận dụng các tính năng và cải tiến.

- 🔑 **Metamask hoặc nhà cung cấp Web3 tương thích**: Cần có Metamask hoặc một nhà cung cấp Web3 khác để giao tiếp với Blockchain.

- 🌍 **Kết nối internet ổn định**: Kết nối internet mạnh mẽ và ổn định là điều kiện tiên quyết để tương tác với Blockchain.

## 👥 Tác Giả

- Lê Minh Tuấn
- Trần Nguyễn Duy Khánh
- Trịnh Minh Son

## 📄 Giấy Phép

Dự án được phân phối dưới giấy phép [GNU General Public License v3.0 ](https://github.com/olp-dtu-2024/DTU-GreenHope/blob/main/LICENCE)

## 🤝 Đóng Góp

Chúng tôi rất hoan nghênh các đóng góp từ cộng đồng! Hãy tham gia và giúp dự án này ngày càng hoàn thiện hơn. Các bước đóng góp của bạn:

- 📝 **Tạo issue** để báo cáo lỗi hoặc yêu cầu tính năng mới
- 🔄 **Gửi pull request** để đề xuất cải tiến hoặc sửa lỗi
- 📂 **Truy cập GitHub Repository** của chúng tôi để biết thêm chi tiết

## 🆘 Hỗ Trợ@olp-dtu-2024/solidity-editor-nocobase

Nếu gặp bất kỳ vấn đề nào khi sử dụng plugin hoặc cần trợ giúp, vui lòng liên hệ với chúng tôi:

- **Mở issue** tại GitHub repository
- **Liên hệ trực tiếp** với nhóm phát triển qua email hoặc các kênh hỗ trợ

## ⚠️ Lưu Ý

Trước khi sử dụng plugin, hãy lưu ý một số điểm quan trọng:

- ✅ **Đảm bảo tương thích** với phiên bản NocoBase hiện tại của bạn
- 🔧 **Kiểm tra kết nối và cấu hình** trước khi bắt đầu sử dụng để tránh các vấn đề phát sinh

### 📝 License
Dự án này được cấp phép theo các điều khoản của giấy phép GPL V3 [GPL V3 License](https://github.com/olp-dtu-2024/DTU-GreenHope/blob/main/LICENSE)

*"Được phát triển với ❤️ bởi Nhóm DTU_DZ1 🌟"*
