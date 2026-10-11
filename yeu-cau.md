# YÊU CẦU & ĐẶC TẢ DỰ ÁN STEM: THIẾT KẾ MẠCH ĐIỆN CHO MÔ HÌNH NHÀ THÔNG MINH

> **Bộ môn**: Khoa học tự nhiên 9 (Chủ đề Điện học)  
> **Đơn vị công tác**: Trường THCS Phan Văn Trị  
> **Thời lượng thực hiện**: 02 tiết trên lớp + 01 tuần gia công/thử nghiệm tại nhà

---

## I. TỔNG QUAN VÀ MỤC TIÊU DỰ ÁN

### 1. Bối cảnh & Vấn đề thực tiễn
- Trong thực tế, hệ thống điện gia dụng đòi hỏi các thiết bị phải hoạt động độc lập với đúng điện áp định mức (mạch song song) kèm các thiết bị bảo vệ, hạ áp (mắc nối tiếp).
- Xu hướng nhà hiện đại tích hợp các tiện ích tự động hóa (chiếu sáng thông minh, báo động rò rỉ nước/triều cường, cảnh báo nhiệt độ/chống cháy).
- **Nhiệm vụ của học sinh**: Vận dụng kiến thức vật lý về đoạn mạch nối tiếp, đoạn mạch song song, công suất và giá trị định mức để thiết kế, thi công mô hình ngôi nhà tích hợp ít nhất một chức năng thông minh (cảm biến).

### 2. Tích hợp liên môn
- **KHTN 9**: Đoạn mạch nối tiếp, đoạn mạch song song, định luật Ohm, năng lượng và công suất điện, giá trị định mức của thiết bị.
- **Công nghệ 8 & 6**:
  - CN8: Bài 3 (Bản vẽ kĩ thuật), Bài 10 (Mạch điện điều khiển), Bài 11 (Thực hành lắp mạch điện điều khiển đơn giản).
  - CN6: Bài 3 (Ngôi nhà thông minh).
- **Toán 8**: Chương 4 Thống kê — Thu thập, lập bảng số liệu thử nghiệm (ít nhất 10 lần), tính tỷ lệ thành công và phân tích kết quả.
- **Tin học 8**: Cấu trúc điều khiển/lập trình vi điều khiển (đối với nhóm chọn hướng Arduino).
- **Mỹ thuật 6**: Tạo hình và kết cấu mô hình nhà 3D.

### 3. Mục tiêu cần đạt
- **Kiến thức & Kỹ năng kỹ thuật**:
  - Vẽ đúng sơ đồ nguyên lý mạch điện (thể hiện nguồn, tải, cảm biến, điện trở phân áp/hạ áp).
  - Đi dây an toàn: bọc cách điện/dùng cút nối, không hở lõi dây đồng, dây cố định gọn gàng.
  - Cảm biến hoạt động ổn định, độ nhạy cao, kích hoạt chính xác tải đầu ra (đèn LED, còi, quạt).
- **Năng lực số (NLS)**:
  - NLS 1.2 & 1.3: Tra cứu thông tin linh kiện, chọn lọc hướng dẫn từ video/Internet.
  - NLS 2.1: Lưu trữ ảnh chụp quá trình, nhật ký thử nghiệm trên Google Drive nhóm.
  - NLS 3.1 & 3.2: Lập trình Arduino (hoặc giả lập Wokwi/Tinkercad), thiết kế slide báo cáo.
  - Ứng dụng AI có trách nhiệm: Soạn prompt hỗ trợ giải thích nguyên lý, tạo code mẫu và debug lỗi.
- **Phẩm chất & Năng lực chung**: Tự chủ, hợp tác nhóm, kỷ luật an toàn điện, cẩn thận, trung thực trong ghi nhận số liệu thử nghiệm.

---
## II. LỰA CHỌN PHƯƠNG ÁN CÔNG NGHỆ

Các nhóm học sinh được lựa chọn 1 trong 2 phương án tùy năng lực thực tế:

### Phương án 1: Lập trình vi điều khiển (Arduino Uno R3)
- **Thành phần**: Board Arduino Uno R3, cáp nạp, pin vuông 9V/đế pin, dây cắm testboard (đực-đực, đực-cái), module cảm biến, LED/quạt mini.
- **Yêu cầu kỹ thuật**:
  - Vẽ sơ đồ mạch nguyên lý bằng phần mềm mô phỏng (Tinkercad Circuits hoặc Wokwi).
  - Viết code Arduino (sử dụng cấu trúc `setup()` và `loop()`), có chú thích tiếng Việt rõ ràng.
  - Hiệu chuẩn ngưỡng kích hoạt thông qua công cụ Serial Monitor.
- **Cảm biến gợi ý**:
  - Cảm biến ánh sáng (LDR quang trở + cầu phân áp điện trở 10kΩ): Tự động bật đèn khi trời tối.
  - Cảm biến mực nước/độ ẩm: Báo động ngập lụt, triều cường dâng cao.
  - Cảm biến nhiệt độ (LM35/NTC): Kích hoạt quạt làm mát khi vượt ngưỡng nhiệt.
  - *Lưu ý tuyệt đối cấm*: Không dùng cảm biến khí gas/khói kèm nguồn lửa/bình gas thật tại nhà để thử nghiệm.

### Phương án 2: Sử dụng module cảm biến lắp sẵn (Bộ môn Công nghệ 8)
- **Thành phần**: Module cảm biến ánh sáng/nhiệt độ/độ ẩm tích hợp sẵn rơ-le hoặc mạch so sánh (LM393) kèm biến trở vi chỉnh, nguồn pin.
- **Yêu cầu kỹ thuật**:
  - Vẽ sơ đồ bố trí thiết bị và đi dây chi tiết (bằng tay hoặc phần mềm đồ họa).
  - Căn chỉnh núm vặn biến trở tinh chỉnh (potentiometer) để đạt ngưỡng kích hoạt mong muốn.

---

## III. YÊU CẦU ĐỐI VỚI HỒ SƠ VÀ SẢN PHẨM CỦA HỌC SINH

Mỗi nhóm phải hoàn thiện và bàn giao đầy đủ 5 sản phẩm/hồ sơ sau:

1. **Mô hình nhà thật kèm hệ thống mạch điện hoàn chỉnh**:
   - Kết cấu vững chắc, không bung gãy, rơi linh kiện khi bưng bê, di chuyển.
   - Bố trí vị trí cảm biến logic (ví dụ: cảm biến ánh sáng ở mái/cổng ngoài trời, cảm biến ngập nước ở chân sàn nhà, quạt/đèn ở vị trí phòng phù hợp).
   - Tuyệt đối bảo đảm an toàn điện: không nối tắt (ngắn mạch), không hở lõi kim loại, dây dẫn bó gọn gàng bên trong khung mô hình.

2. **Bản vẽ thiết kế & Sơ đồ nguyên lý**:
   - Bản vẽ phối cảnh vị trí gắn thiết bị trong nhà.
   - Sơ đồ mạch điện thể hiện rõ chân cắm (VCC, GND, ngõ vào tín hiệu analog/digital, ngõ ra điều khiển tải).

3. **Nhật ký & Bảng số liệu thống kê thử nghiệm**:
   - Tiến hành thử nghiệm độ nhạy/độ chính xác ít nhất 10 lần trong các điều kiện môi trường khác nhau.
   - Lập bảng thống kê số lần đạt/không đạt, tính tỷ lệ % kích hoạt thành công.
   - Mô tả chi tiết các lần phát sinh lỗi và giải pháp tinh chỉnh (chỉnh biến trở, sửa code, đổi vị trí cảm biến).

4. **Bài thuyết trình & Slide báo cáo** (Thời lượng: tối đa 5 phút/nhóm = 3 phút trình bày + 2 phút phản biện):
   - Cấu trúc gồm 7 phần: Danh sách & phân công nhóm $ightarrow$ Vấn đề kỹ thuật $ightarrow$ Đề xuất & chọn giải pháp $ightarrow$ Nguyên lý hoạt động cảm biến $ightarrow$ Nhật ký chế tạo & minh chứng $ightarrow$ Bài học kinh nghiệm $ightarrow$ Hướng phát triển/nâng cấp.
   - Slide trình bày trang nhã, phông chữ lớn, chèn ảnh/video thực tế quá trình làm.

5. **Phiếu đánh giá thành viên nội bộ**:
   - Mỗi thành viên đánh giá chéo đồng đội theo 4 tiêu chí (Thái độ, Hợp tác, Đề xuất giải pháp & ứng dụng AI/Internet, Kỹ năng phần mềm/công nghệ) theo thang điểm 100.

---

## IV. BẢNG TIÊU CHÍ ĐÁNH GIÁ (RUBRIC 100 ĐIỂM)

| Nhóm tiêu chí | Nội dung chi tiết | Điểm tối đa | Yêu cầu đạt mức Tối đa (Xuất sắc) |
| :--- | :--- | :---: | :--- |
| **1. Xác định vấn đề & Đề xuất giải pháp** | - Xác định vấn đề kỹ thuật<br>- Đề xuất giải pháp | **10** (5đ + 5đ) | Nêu rõ bối cảnh kỹ thuật, đưa ra $\ge 2$ giải pháp, có bảng so sánh ưu/nhược điểm thuyết phục và lập luận chọn phương án tối ưu. |
| **2. Kết cấu mô hình nhà** | - Độ bền kết cấu<br>- Thẩm mỹ hình thức | **5** (3đ + 2đ) | Khung nhà chắc chắn, không rung lắc/bung tách khi di chuyển; bố cục thẩm mỹ, sạch đẹp. |
| **3. Bản vẽ thiết kế & Sơ đồ mạch** | - Nhóm Arduino: Sơ đồ mô phỏng Tinkercad/Wokwi<br>- Nhóm Module: Bản vẽ vị trí & nguyên lý | **10** | Bản vẽ chuẩn kỹ thuật, thể hiện rõ nguồn, tải, chân cắm vi mạch/cảm biến; ký hiệu rõ ràng, dễ hiểu. |
| **4. Chế tạo & Thử nghiệm** | - **An toàn điện (30đ)**:<br>  + Đấu đúng kỹ thuật (5đ)<br>  + Mối nối chắc chắn (5đ)<br>  + Chống hở mạch/bọc cách điện (5đ)<br>  + Không hở lõi đồng (5đ)<br>  + Cố định dây chắc chắn (5đ)<br>  + Đi dây ngăn nắp, thẳng hàng (5đ)<br>- **Thử nghiệm (15đ)**:<br>  + Thử nghiệm $\ge 10$ lần + bảng thống kê (10đ)<br>  + Nhật ký tinh chỉnh, sửa lỗi (5đ)<br>- **Mạch hoàn thiện (20đ)**:<br>  + Vị trí cảm biến tối ưu (10đ)<br>  + Cảm biến nhạy, độ trễ thấp (10đ) | **65** | Đạt chuẩn an toàn điện tối đa không có sai sót; số liệu thử nghiệm trung thực có phân tích; cảm biến hoạt động nhạy bén và ổn định. |
| **5. Báo cáo & Thuyết trình** | - Nội dung báo cáo (10đ)<br>- Kỹ năng trình bày & phản biện (5đ)<br>- Thiết kế Slide trực quan (5đ) | **20** | Đầy đủ 7 nội dung logic; tự tin, tương tác tốt, trả lời phản biện xuất sắc; slide rõ ràng, hình ảnh thực tế sắc nét. |
| **Tổng cộng** | | **110 / Chuẩn hóa 100** | |

---

## V. KẾ HOẠCH TỔ CHỨC DẠY HỌC & MỐC THỜI GIAN

```
[Tiết 1: Tại lớp (45p)]
  ├── Khởi động & Đặt vấn đề (5p)
  ├── Nghiên cứu kiến thức nền (5p)
  ├── Chọn phương án công nghệ: Lập trình vs Module (5p)
  └── Phân công nhóm & Phác thảo thiết kế A4 (22p)
         │
         ▼
[01 tuần làm việc ngoài lớp]
  ├── Thu thập vật liệu, làm khung nhà
  ├── Đi dây, lập trình Arduino / cân chỉnh module cảm biến
  ├── Thử nghiệm 10 lần, ghi nhận số liệu thống kê
  ├── Quay video, chụp ảnh lưu trữ Google Drive
  └── Chuẩn bị slide & kịch bản thuyết trình
         │
         ▼
[Tiết 2: Tại lớp (45p)]
  ├── Trưng bày mô hình & báo cáo sản phẩm (32p: 4 nhóm x 5p)
  ├── Đánh giá chéo, giáo viên nhận xét & chấm điểm rubric (5p)
  └── Bài tập trắc nghiệm củng cố kiến thức đoạn mạch & năng lượng (8p)
```

---

## VI. HƯỚNG DẪN AN TOÀN & QUY ĐỊNH BẮT BUỘC
1. **Quy tắc nguồn điện**: Tuyệt đối sử dụng nguồn điện an toàn một chiều (DC) điện áp thấp (dưới 9V: pin vuông 9V, khay pin AA/AAA 4.5V - 6V, hoặc cổng USB 5V). Nghiêm cấm tuyệt đối đấu nối hoặc sử dụng nguồn điện xoay chiều 220V dân dụng trong mô hình của học sinh.
2. **Quy tắc an toàn vật lý & nhiệt**: Tuyệt đối không thử nghiệm với ngọn lửa thật, khí gas nén, hay các chất dễ cháy nổ.
3. **Quy tắc mối nối**: Mọi điểm phân nhánh hoặc nối dây đều phải dùng cút nối chuyên dụng (cút nối 2-2, 2-6) hoặc hàn chì và bọc co nhiệt / quấn băng keo cách điện kín 100%.
4. **Quy tắc lưu trữ minh chứng**: Nhóm trưởng chịu trách nhiệm upload toàn bộ video thử nghiệm, ảnh chụp các bước chế tạo lên Google Drive trước tiết báo cáo ít nhất 01 buổi học.
