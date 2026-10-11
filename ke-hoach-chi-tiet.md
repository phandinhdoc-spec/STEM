# KẾ HOẠCH CHI TIẾT THEO NGÀY — BÀI DỰ THI STEM (TYPST)

> **Chủ đề**: Thiết kế mạch điện cho mô hình nhà thông minh · KHTN 9
> **Hạn chót nộp**: Thứ Sáu **23/10/2026** — nộp **1 file PDF duy nhất** (`bai-du-thi/bai-du-thi.pdf`); ảnh, video, slide, code của học sinh để trên Google Drive.
> **Cách dùng**: đánh dấu `[x]` khi xong. Lọc việc chưa làm bằng cách tìm `- [ ]`.

## Quy ước và giả định (sửa ở đây nếu sai)

- **Mỗi lớp cách đúng 1 tuần giữa 2 tiết**. Giả định: **Tiết 1 dạy trong tuần 12–16/10**, **Tiết 2 dạy trong tuần 19–23/10**. Thứ cụ thể của 9.3 và 9.6 lấy theo thời khóa biểu, ghi vào mục "Lịch dạy thực tế" trong bài.
- **Giữ nguyên lịch trình năm ngoái** (theo file Word cũ): **Tiết 1** (đầu tuần, sau khi học xong chủ đề Điện) = HĐ1 khởi động 5' → HĐ2 kiến thức nền 5' → HĐ3 chọn phương án 5' → HĐ4 phân công + thiết kế 22' → hướng dẫn về nhà 8'; **ở nhà 01 tuần**; **Tiết 2** (đầu tuần kế tiếp) = khởi động 5' → báo cáo 32' (3 + 2 phút/nhóm) → củng cố 8'. Đã sửa `ke-hoach-bai-day.typ` theo đúng lịch này (khác bản `ke-hoach.md` và bản nháp ban đầu).
- **Cải tiến năm nay**: mỗi hoạt động ghi rõ **mã năng lực số (NLS)** và **ứng dụng AI** của giáo viên, học sinh; có nhật ký AI; có Phụ lục căn cứ pháp lí.
- **Mã NLS chính thức** (Thông tư 02/2025/TT-BGDĐT; mức L8-L9 của Công văn 3456/BGDĐT-GDPT). **Lưu ý: mã trong file Word cũ và `yeu-cau.md` sai so với khung chính thức**, đã sửa:

| Việc | Mã cũ (sai) | Mã chính thức |
| :-- | :-- | :-- |
| Tìm kiếm thông tin (video, bài viết) | 1.2 | **1.1** |
| Đánh giá, chọn lọc thông tin | 1.2 / 1.3 | **1.2** |
| Lưu trữ trên Google Drive | 2.1 | **1.3** |
| Lập trình Arduino | 3.1 | **3.4** |
| Tạo slide, ảnh, video | 3.2 / 4.2 | **3.1** |
| Dùng AI (hiểu, dùng, đánh giá) | không có mã | **6.1, 6.2, 6.3** |

- Tiết 1 = giao nhiệm vụ + thiết kế. Việc **chế tạo diễn ra ở nhà trong tuần giữa**.
- Hướng **Arduino được khuyến khích**; module cảm biến (Công nghệ 8) cho phép nhưng không khuyến khích.
- **Tối thiểu 1 cảm biến** (chức năng tối đa 9/10); **từ 2 cảm biến** trở lên: 10/10.
- Rubric đã sửa **đúng 100 điểm** (có kiểm tra tự động khi biên dịch).

## Trạng thái dự án Typst

- [x] Dựng khung `bai-du-thi/` với **1 file chính** `bai-du-thi.typ` + `ke-hoach-bai-day.typ` (được `#include` vào bài).
- [x] Dùng `@local/mypackage:0.1.0` (bảng màu navy/blue/cyan, `cover`, `note`, `tag`, giáo án 5512 `hdtnhn`).
- [x] Các chỗ trống là biến `#let ... = none`, chia theo nhóm A–F ở đầu file; chưa có dữ liệu thì PDF hiện khung cam "CHƯA CÓ ...".
- [x] Mã QR cho từng giai đoạn minh chứng (gói `@preview/tiaoma`, cần Internet lần biên dịch đầu).
- [x] Rubric 100 điểm (10 + 5 + 10 + 55 + 10 + 10), có tiêu chí số cảm biến.
- [x] Viết xong bản nháp KHBD 5512 (2 tiết + giữa 2 tiết).
- [x] Biên dịch thử thành công (hiện 23 trang).
- [x] Tra cứu và đưa vào bài: Thông tư 02/2025/TT-BGDĐT, CV 3456/BGDĐT-GDPT, CV 2250/BGDĐT-GDPT, KH 1459/KH-SGDĐT và CV 2132/SGDĐT-GDPT (TP.HCM).
- [x] Mục IV mới "Năng lực số và ứng dụng AI" (bảng mã, GV/HS dùng AI, quy tắc, công thức prompt, nhật ký AI mẫu); Phụ lục B (phiếu cá nhân gắn mã NLS), Phụ lục C (căn cứ pháp lí).
- [ ] Đối chiếu lại **chỉ báo L8-L9** trong bảng với bản gốc phụ lục CV 3456 trên cổng Bộ GDĐT/Công báo (tôi lấy từ bản trích đăng trong công văn hướng dẫn của Sở GDĐT Quảng Ngãi; cột chỉ báo của vài mã được tóm lược).
- [ ] Mở và đọc tài liệu "Hướng dẫn sử dụng AI trong dạy và học" (ai.vnies.edu.vn) để chỉnh quy tắc dùng AI cho khớp.
- [ ] Kiểm tra thêm CV 8334/BGDĐT-GDPT (18/12/2025, thí điểm giáo dục AI): tôi chỉ thấy qua báo chí, **chưa đưa vào bài** vì chưa đọc bản gốc.
- [ ] Rà lại nội dung KHBD và các đoạn viết sẵn cho đúng ý thầy (nhất là hoạt động, thời lượng).
- [ ] Quyết định có thêm phiếu học tập số 1, số 2, phiếu đánh giá chéo làm phụ lục trong PDF không (hiện chỉ lưu trên Drive).

Lệnh: `cd bai-du-thi && typst watch bai-du-thi.typ` (xem trực tiếp); `typst compile bai-du-thi.typ` (xuất PDF).

---

## Cần lưu minh chứng gì, ở giai đoạn nào (mỗi mục = một thư mục Drive)

### Giai đoạn 0 — TRƯỚC TIẾT 1 (giáo viên chuẩn bị) · thư mục `00-Truoc-Tiet1`
- [ ] Kế hoạch bài dạy (PDF) và rubric 100 điểm
- [ ] Phiếu học tập số 1, số 2; phiếu đánh giá chéo; bài trắc nghiệm củng cố
- [ ] Ảnh/video **sản phẩm mẫu** của GV (mạch chạy thật, bảng thử nghiệm mẫu)
- [ ] Ảnh chụp thông báo giao nhiệm vụ + quy định an toàn gửi học sinh
- [ ] Danh sách nhóm và phương án dự kiến
- [ ] Xác nhận cho phép chụp ảnh/quay video học sinh
- [ ] **Hướng dẫn sử dụng AI** + link công cụ (Gemini, Copilot, ChatGPT…) + **bảng prompt gợi ý theo cảm biến** (GV có thể soạn bằng AI, **phải kiểm chứng lại**; ảnh minh chứng GV dùng AI soạn học liệu: NLS GV)
- [ ] Hướng dẫn Arduino IDE, Tinkercad, Wokwi (video tiếng Việt); mẫu bảng thống kê thử nghiệm

### Giai đoạn 1 — TRONG TIẾT 1 · thư mục `01-Tiet1/<lop>/<nhom>`
- [ ] Ảnh toàn cảnh lớp ở mỗi hoạt động (HĐ1, HĐ2, HĐ3), ≥ 6 ảnh
- [ ] Ảnh các nhóm thảo luận, GV cố vấn từng nhóm
- [ ] **Phiếu học tập số 1** đã điền của mọi nhóm (ảnh/scan): phác thảo, so sánh giải pháp, phân công, lịch tuần
- [ ] Bảng tổng hợp: nhóm – phương án – số cảm biến dự kiến
- [ ] Video 30–60 giây: thảo luận nhóm, GV nhắc an toàn
- [ ] Ảnh bảng/slide chiếu rubric trước lớp
- [ ] Ảnh GV chiếu bản vẽ qua Irun Webcam; ảnh phần **Hướng dẫn về nhà** (mở Drive, AI, quy tắc dùng AI) — NLS 1.3, 6.1, 6.2, 4.2
- [ ] Ảnh nhóm xem video và trả lời câu hỏi đặt vấn đề (NLS 1.1)

### Giai đoạn 2 — GIỮA HAI TIẾT (1 tuần) · thư mục `02-Giua-hai-tiet/<lop>/<nhom>`
Học sinh (nhóm trưởng tải lên):
- [ ] Ảnh quá trình làm khung, đi dây, lắp mạch (≥ 5 ảnh/nhóm, có ngày giờ)
- [ ] Sơ đồ mô phỏng Tinkercad/Wokwi (ảnh và link) + bản vẽ vị trí thiết bị
- [ ] File code Arduino `.ino` có chú thích tiếng Việt; ảnh Serial Monitor khi hiệu chuẩn
- [ ] Nhật ký và bảng thống kê thử nghiệm **≥ 10 lần**; mô tả lỗi và cách sửa
- [ ] Video thử nghiệm các điều kiện khác nhau
- [ ] **Nhật ký AI** của nhóm (prompt – kết quả – cách kiểm chứng – điều chỉnh) — NLS 6.1, 6.2
- [ ] Ảnh **so sánh kết quả hai công cụ AI** (hoặc AI với video/sách), ghi rõ chỗ AI sai — NLS 6.3
- [ ] Ảnh cây thư mục Drive của nhóm; danh sách nguồn video/bài viết đã dùng — NLS 1.3, 1.1, 1.2

Giáo viên:
- [ ] Ảnh chụp tin nhắn hỗ trợ trên nhóm lớp
- [ ] Bảng theo dõi tiến độ từng nhóm (giữa tuần và cuối tuần)
- [ ] Nhắc nộp minh chứng trước Tiết 2 (ảnh chụp lời nhắc)

### Giai đoạn 3 — TRONG TIẾT 2 · thư mục `03-Tiet2/<lop>/<nhom>`
- [ ] Ảnh toàn cảnh khu trưng bày; ảnh mô hình từng nhóm (thấy rõ mạch và mối nối)
- [ ] Video mô hình chạy thử trước lớp (mỗi nhóm một clip)
- [ ] Ảnh nhóm báo cáo và phản biện; **slide của nhóm** (PDF/PPTX)
- [ ] Phiếu chấm rubric của GV (ảnh/scan) từng nhóm
- [ ] Phiếu đánh giá chéo thành viên (4 tiêu chí, thang 100)
- [ ] Bài trắc nghiệm củng cố và kết quả
- [ ] Ảnh slide có phần **"Cách dùng AI và cách kiểm chứng"** — NLS 3.1, 6.3

### Giai đoạn 4 — SAU TIẾT 2 · thư mục `04-Sau-Tiet2`
- [ ] Bảng điểm tổng hợp hai lớp (Sheet/Excel)
- [ ] Thống kê: số nhóm 1 cảm biến / ≥ 2 cảm biến; Arduino / module; tỉ lệ thử nghiệm thành công
- [ ] Nhận xét của GV cho từng nhóm
- [ ] Khảo sát cảm nhận học sinh (Google Form) + ảnh kết quả
- [ ] Ảnh lưu niệm, sản phẩm tiêu biểu, ghi chú rút kinh nghiệm
- [ ] **Bảng tổng hợp mức đạt NLS** (mã 1.1 → 6.3) hai lớp, lấy từ phiếu cá nhân + slide + nhật ký AI
- [ ] Báo cáo cải tiến của từng nhóm (NLS 5.2, 5.3)
- [ ] Số liệu AI: số nhóm có nhật ký AI đầy đủ; số nhóm phát hiện AI sai và đã sửa
- [ ] Điền link rút gọn + ảnh tiêu biểu vào biến trong `bai-du-thi.typ` (nhóm D, C, E)

---

## KẾ HOẠCH THEO NGÀY

### CN 11/10 — Dựng khung (hôm nay)
- [x] Dựng cấu trúc Typst, biên dịch ra PDF
- [x] Soạn bản nháp KHBD và rubric 100
- [x] Đọc lại toàn bộ PDF, ghi lại chỗ cần sửa
- [x] Tạo cây thư mục Drive theo 5 giai đoạn ở trên và lấy link
- [x] Rút gọn link 5 thư mục + thư mục gốc; điền vào nhóm D trong `bai-du-thi.typ`

### T2 12/10 — Chuẩn bị Tiết 1
- [ ] Soạn **Phiếu học tập số 1** (phác thảo, bảng so sánh giải pháp, phân công, lịch 7 ngày) và **Phiếu số 2** (rubric dễ đọc cho học sinh)
- [ ] Soạn phiếu đánh giá chéo và bài trắc nghiệm củng cố (đoạn mạch, năng lượng)
- [ ] Làm **sản phẩm mẫu**: mạch 1–2 cảm biến, thử 10 lần, chụp ảnh/video → Drive `00`
- [ ] Soạn slide mở đầu Tiết 1 (video nhà thông minh, rubric, an toàn)
- [ ] Soạn **bảng prompt gợi ý** (ánh sáng, nhiệt độ, nước, thêm 1–2 cảm biến mở rộng) theo công thức 4 thành phần; thử từng prompt trên 2 công cụ AI, ghi lại chỗ sai
- [ ] Soạn file **Hướng dẫn sử dụng AI** (5 quy tắc) + mẫu **nhật ký AI**; đưa vào thư mục Drive Link 1
- [ ] Lưu thông báo giao nhiệm vụ gửi học sinh (chụp màn hình)
- [ ] Điền ảnh chuẩn bị vào biến `anh-chuan-bi-1`, `anh-chuan-bi-2`

### T3 13/10 – T6 16/10 — DẠY TIẾT 1 (theo thời khóa biểu 9.3 và 9.6)
Làm cho **mỗi lớp**, vào đúng ngày dạy:
- [ ] **Trước giờ**: in phiếu, kiểm tra máy chụp, mở thư mục Drive `01`
- [ ] **Trong giờ**: chụp ≥ 6 ảnh (HĐ1–HĐ4 và hướng dẫn về nhà); quay clip thảo luận và nhắc an toàn
- [ ] **Hướng dẫn về nhà (8')**: mở Drive, chỉ cách đặt tên file/thư mục (NLS 1.3), dùng chung một tài khoản nhóm, **không nhập thông tin cá nhân vào AI** (NLS 4.2, 6.2)
- [ ] **Cuối giờ**: thu Phiếu số 1; chốt danh sách nhóm – phương án – số cảm biến; dặn nhóm trưởng nộp minh chứng
- [ ] **Tối cùng ngày**: tải ảnh/phiếu lên Drive `01/<lop>/`; ghi 3–5 dòng rút kinh nghiệm
- [ ] Ghi ngày dạy thật vào mục "Lịch dạy thực tế" trong `bai-du-thi.typ` (4 ô ngày)
- [ ] Điền `so-hs-93/96`, `so-nhom-93/96`, ảnh `anh-t1-1..3`

### T7 17/10 và CN 18/10 — Giữa hai tiết (theo dõi) và hoàn thiện bài
- [ ] Theo dõi tiến độ các nhóm, trả lời thắc mắc, lưu ảnh tin nhắn hỗ trợ (`anh-giua-3`)
- [ ] Xem **nhật ký AI** của vài nhóm giữa tuần; nhắn góp ý (nhóm chỉ copy code không kiểm chứng; nhóm quên ghi nguồn)
- [ ] Chụp ảnh 1–2 nhóm có nhật ký AI tốt, có ghi chỗ AI sai (xin phép nhóm) → `anh-nhat-ky-ai`, `anh-so-sanh-ai`
- [ ] Lập bảng theo dõi tiến độ nhóm (giữa tuần)
- [ ] Hoàn thiện phần việc không phụ thuộc kết quả của học sinh: rà soát mục I–V, chính tả, bảng
- [ ] Chuẩn bị Tiết 2: phiếu chấm rubric, phiếu đánh giá chéo, đồng hồ bấm giờ, bàn trưng bày, ổ điện/pin dự phòng
- [ ] Nhắc các nhóm nộp minh chứng lên Drive `02` (trước giờ báo cáo)

### T2 19/10 – T5 22/10 — DẠY TIẾT 2 (theo thời khóa biểu)
Làm cho **mỗi lớp**, vào đúng ngày dạy:
- [ ] **Trước giờ**: kiểm tra Drive `02` các nhóm đã nộp đủ chưa; nhắc nhóm thiếu
- [ ] **Trong giờ**: chụp toàn cảnh trưng bày, từng mô hình, nhóm báo cáo, phản biện; quay clip chạy thử; chấm rubric ngay tại lớp (chụp phiếu)
- [ ] Ghi nhanh vào bảng quan sát NLS: nhóm nào trình bày cách dùng AI và cách kiểm chứng tốt (NLS 6.3), nhóm nào có Arduino (3.4)
- [ ] Nhắc **hoạt động 10 (sau Tiết 2)**: các nhóm rút kinh nghiệm, cải tiến, nộp lại trong tuần sau
- [ ] **Cuối giờ**: thu phiếu đánh giá chéo, bài trắc nghiệm; công bố điểm
- [ ] **Tối cùng ngày**: tải lên Drive `03/<lop>/`; nhập điểm vào Sheet; chọn 2–3 ảnh tiêu biểu vào `assets/`
- [ ] Điền biến ảnh `anh-t2-1..3`, `anh-san-pham-1..2`, `anh-so-do-mach`, `anh-code`, `anh-bang-thu-nghiem`, `anh-slide-hs`

### T6 23/10 — HẠN CHÓT: dạy lớp cuối (nếu có) và chốt hồ sơ
- [ ] Dạy Tiết 2 của lớp còn lại (nếu rơi vào hôm nay) và lưu minh chứng như trên
- [ ] Tải bảng điểm, thống kê, khảo sát lên Drive `04`
- [ ] Tổng hợp **mức đạt NLS** hai lớp (phiếu cá nhân + slide + nhật ký AI) → điền `nls-dat-tb`, `so-nhom-dung-ai`, `so-nhom-phat-hien-loi-ai`
- [ ] Điền nhóm E (kết quả) và nhóm F (nhận xét, điều chỉnh, hướng phát triển) — **chỉ ghi điều có thật**
- [ ] Điền link rút gọn mọi thư mục (nhóm D) để mã QR hiện đủ
- [ ] Biên dịch: **không còn khung cam "CHƯA CÓ"** trong PDF (kiểm tra từng trang)
- [ ] Đối chiếu rubric đủ 100, KHBD khớp lịch dạy thật
- [ ] Mở thử các link/QR trên điện thoại (đã đặt quyền xem)
- [ ] Sao lưu `bai-du-thi/` lên Drive; nộp **`bai-du-thi.pdf`**

---

## Danh sách "việc phải làm" ngắn gọn (để kiểm tra nhanh)

| Mốc | Việc chính | Xong |
| :-- | :-- | :-: |
| 11/10 | Khung Typst, rubric 100, thư mục Drive | [ ] |
| 12/10 | Phiếu 1–2, sản phẩm mẫu, slide Tiết 1, thông báo giao nhiệm vụ | [ ] |
| 13–16/10 | Dạy Tiết 1 hai lớp + lưu minh chứng giai đoạn 0–1 | [ ] |
| 17–18/10 | Theo dõi giữa tuần + minh chứng giai đoạn 2 + chuẩn bị Tiết 2 | [ ] |
| 19–22/10 | Dạy Tiết 2 hai lớp + minh chứng giai đoạn 3 | [ ] |
| 23/10 | Giai đoạn 4, điền hết placeholder, xuất và nộp PDF | [ ] |

## Rủi ro

| Rủi ro | Cách giảm |
| :-- | :-- |
| Lớp cuối dạy Tiết 2 đúng 23/10, sát hạn | Điền sẵn mọi phần khác trước; chỉ còn điểm và ảnh lớp cuối |
| Học sinh nộp minh chứng muộn | Nhắc 2 lần (giữa tuần, 1 ngày trước Tiết 2); quy định linh hoạt nhưng trước giờ báo cáo |
| Mất kết nối khi biên dịch lần đầu (cần tải `tiaoma`) | Biên dịch sớm một lần khi có mạng; gói được lưu cache |
| Link Drive chưa mở quyền xem | Kiểm tra bằng tài khoản khác/điện thoại trước khi nộp |
| Thời khóa biểu thật khác giả định | Chỉ cần sửa 4 ô ngày; kế hoạch dùng "Tiết 1 / Tiết 2" tương đối |
