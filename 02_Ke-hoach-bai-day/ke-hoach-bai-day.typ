#set page(paper: "a4", margin: (top: 18mm, bottom: 18mm, left: 22mm, right: 20mm), numbering: "1", number-align: center)
#set text(font: ("Libertinus Serif", "Times New Roman"), size: 11.5pt, lang: "vi")
#set par(justify: true, leading: 0.66em, spacing: 0.85em)
#set heading(numbering: "I.1.")
#show heading.where(level: 1): set text(size: 13.5pt, weight: "bold", fill: rgb(31, 56, 100))
#show heading.where(level: 2): set text(size: 12pt, weight: "bold", fill: rgb(36, 59, 83))
#show heading.where(level: 3): set text(size: 11.5pt, weight: "bold", fill: rgb(51, 78, 104))
#show heading.where(level: 1): block(above: 1.3em, below: 0.6em)
#show heading.where(level: 2): block(above: 1em, below: 0.45em)
#show heading.where(level: 3): block(above: 0.85em, below: 0.4em)

#let can(s) = box(fill: rgb(255, 243, 224), stroke: 0.5pt + rgb(217, 154, 60), inset: (x: 3.5pt, y: 2pt), radius: 2pt, text(size: 8.6pt, fill: rgb(138, 75, 0), weight: "bold")[CẦN SỐ LIỆU: #s])
#let hop(body) = block(fill: rgb(238, 244, 251), stroke: (left: 2.5pt + rgb(54, 78, 120)), inset: 8pt, radius: 2pt, width: 100%, body)
#let tfill = (x, y) => if y == 0 { rgb(231, 238, 247) } else { white }

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  align(center)[
    #text(size: 10.5pt)[UBND PHƯỜNG HẠNH THÔNG] \
    #text(size: 11pt, weight: "bold")[TRƯỜNG THCS PHAN VĂN TRỊ] \
    #text(size: 10.5pt)[TỔ KHOA HỌC TỰ NHIÊN – CÔNG NGHỆ]
  ],
  align(center)[
    #text(size: 10.5pt, weight: "bold")[CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM] \
    #text(size: 10.5pt, weight: "bold")[Độc lập - Tự do - Hạnh phúc]
  ]
)

#v(0.8em)
#align(center)[
  #text(size: 16pt, weight: "bold", fill: rgb(31, 56, 100))[KẾ HOẠCH BÀI DẠY CHỦ ĐỀ GIÁO DỤC STEM] \
  #v(0.3em)
  #text(size: 13.5pt, weight: "bold")[“THIẾT KẾ MẠCH ĐIỆN CHO MÔ HÌNH NHÀ THÔNG MINH”] \
  #v(0.25em)
  #text(size: 11pt)[Môn học chủ đạo: Khoa học tự nhiên 9 – Khối 9 | Năm học: #can[năm học hiện tại]]
]

#v(0.5em)
#table(
  columns: (4.3cm, 1fr),
  inset: 5.5pt,
  stroke: 0.5pt + rgb(201, 212, 226),
  fill: tfill,
  [*Thông tin hạng mục*], [*Nội dung chi tiết*],
  [*Giáo viên thực hiện*], [Phan Anh – Tổ Khoa học tự nhiên – Công nghệ],
  [*Môn học tích hợp*], [Khoa học tự nhiên 9 (Chủ đề Điện), Công nghệ 8, Tin học 8, Toán 8, Mĩ thuật],
  [*Lớp / Sĩ số / Số nhóm*], [Khối 9 – Lớp #can[lớp cụ thể, ví dụ 9/3, 9/6] | Quy mô: #can[số nhóm, số học sinh]],
  [*Thời lượng thực hiện*], [02 tiết trên lớp (cách nhau 07 ngày tự học, chế tạo và thử nghiệm tại nhà)],
  [*Lịch giảng dạy*], [Tuần: #can[tuần dạy] | Tiết PPCT: Tiết 27, 35 | Ngày soạn: #can[ngày soạn] \
  Tiết 1: #can[ngày dạy Tiết 1] – 07 ngày làm việc tại nhà – Tiết 2: #can[ngày dạy Tiết 2]],
  [*Không gian thực hiện*], [Phòng học bộ môn KHTN (Tiết 1, Tiết 2) và không gian tự học tại nhà (07 ngày)],
  [*Bộ công cụ đánh giá*], [Rubric nhóm 100 điểm + Bộ 07 biểu mẫu hồ sơ học sinh + Phiếu học tập cá nhân],
)

#hop[
  *Điểm cải tiến trọng tâm trong thiết kế dạy học năm nay:* (1) Công bố Rubric 100 điểm ngay từ đầu Tiết 1 trước khi học sinh bắt tay thiết kế; (2) Chốt ngưỡng hiệu chuẩn cảm biến và quy tắc ghi số liệu thử nghiệm (tối thiểu 10 lần thử, mỗi lần đo lặp 3 lần lấy trung bình) ngay từ Tiết 1, tránh ghi dồn vào ngày cuối; (3) Kiểm tra tiến độ bắt buộc giữa tuần (Ngày 4) qua ảnh chụp mối nối đã bọc cách điện và ảnh Nhật ký AI; (4) Tuyệt đối chỉ dùng nguồn DC $< 9"V"$, nghiêm cấm điện $220"V"$ và loại bỏ hoàn toàn cảm biến khí gas/lửa; (5) Chuẩn hóa thang điểm Phiếu 07 không trùng biên.
]

= TIẾT 1: XÁC ĐỊNH VẤN ĐỀ VÀ LẬP BẢN THIẾT KẾ CHẾ TẠO SẢN PHẨM

== Mục tiêu Tiết 1

=== Về kiến thức
- Nêu được ý nghĩa các giá trị định mức ($U_("đm"), I_("đm"), P_("đm")$) của thiết bị điện.
- Trình bày và vận dụng được nguyên lý đoạn mạch mắc nối tiếp ($I = I_1 = I_2$; $U = U_1 + U_2$) và đoạn mạch mắc song song ($U = U_1 = U_2$; $I = I_1 + I_2$) để giải thích cách mắc song song các nhánh thiết bị điện trong gia đình và tính toán điện trở phụ hạn dòng bảo vệ đèn LED:
$ R = (U_("nguồn") - U_("LED")) / I_("LED") $
- Giải thích được cấu trúc mạch điều khiển dùng mô-đun cảm biến (ánh sáng LDR, nhiệt độ NTC, cảm biến nước/mưa) hoặc vi điều khiển (ESP32 DevKit, Arduino Uno R3, Arduino Nano).

=== Về năng lực
- *Năng lực Khoa học tự nhiên:*
  + _Nhận thức KHTN:_ Nhận biết thông số định mức trên linh kiện (quạt $5"V"$, đèn LED, cảm biến); phân biệt vai trò mạch nối tiếp và mạch song song.
  + _Tìm hiểu tự nhiên:_ Đề xuất phương án đo đạc, xác định ngưỡng hiệu chuẩn cảm biến và thiết lập quy trình thử nghiệm tối thiểu 10 lần (mỗi lần đo lặp 3 lần).
  + _Vận dụng kiến thức, kĩ năng:_ Phác thảo được sơ đồ nguyên lý mạch điện một chiều điện áp thấp ($< 9"V"$) và bản vẽ bố trí thiết bị cho mô hình nhà thông minh đảm bảo an toàn điện.
- *Năng lực chung:*
  + _Tự chủ và tự học:_ Chủ động nghiên cứu bảng kiến thức nền liên môn và lập lịch làm việc 07 ngày theo Sổ tay hướng dẫn (Phiếu 02).
  + _Giao tiếp và hợp tác:_ Thảo luận nhóm, phân công nhiệm vụ rõ ràng gắn với sản phẩm và hạn hoàn thành trên Phiếu giao nhiệm vụ (Phiếu 01).
  + _Giải quyết vấn đề và sáng tạo:_ So sánh ít nhất 02 giải pháp kỹ thuật (Phương án 1: Lập trình vi điều khiển ESP32/Arduino; Phương án 2: Dùng mô-đun cảm biến lắp sẵn môn Công nghệ 8) để lựa chọn giải pháp tối ưu.
- *Năng lực số và Đạo đức AI:*
  + _NLS 1.1, 1.2, 1.3:_ Tìm kiếm, trích xuất và đánh giá thông tin kỹ thuật cảm biến từ video tình huống và kho học liệu số.
  + _NLS 2.4:_ Tổ chức lưu trữ minh chứng trực tuyến trên Google Drive theo 04 thư mục chuẩn (`01_Thiet_ke`, `02_Che_tao_Mach`, `03_Thu_nghiem`, `04_Bao_cao`).
  + _NLS 3.1, 5.2, 5.3:_ Sử dụng phần mềm vẽ mạch (Tinkercad / Wokwi) và môi trường lập trình Arduino IDE.
  + _NLS 6.1, 6.2, 6.3 (Ứng dụng AI có trách nhiệm):_ Áp dụng công thức viết câu lệnh (prompt) 4 thành phần (Vai trò – Bối cảnh/Dữ liệu – Nhiệm vụ – Ràng buộc/Định dạng); ghi Nhật ký sử dụng AI (Phiếu 05) ngay sau mỗi lần hỏi; bắt buộc kiểm chứng mã và sơ đồ do AI gợi ý trên mạch thật; dùng chung 01 tài khoản nhóm, tuyệt đối không nhập dữ liệu cá nhân học sinh vào AI.

=== Về phẩm chất
- *Trách nhiệm và Kỷ luật an toàn điện:* Tuân thủ tuyệt đối giới hạn nguồn một chiều dưới $9"V"$, nghiêm cấm đấu điện xoay chiều $220"V"$; không chọn cảm biến khí gas, cảm biến lửa hoặc vật tư có nguy cơ cháy nổ; bọc kín cách điện 100% mối nối.
- *Trung thực:* Ghi nhận trung thực mọi lần đo đạc thử nghiệm (cả lần đạt và không đạt), trung thực khi ghi lỗi của AI và phần tự sửa.
- *Chăm chỉ, nhân ái:* Chủ động hoàn thành phần việc cá nhân và hỗ trợ các thành viên trong nhóm.

== Thiết bị dạy học và học liệu Tiết 1

=== Chuẩn bị của Giáo viên
- Máy chiếu, máy tính, điện thoại kết nối phần mềm *Iriun Webcam* với máy tính để chiếu trực tiếp bản vẽ tay A4 của các nhóm lên màn hình lớn; 10 tờ giấy A4 trắng.
- Bảng Nội dung kiến thức nền cần nghiên cứu; Phiếu hướng dẫn nghiên cứu.
- *Bảng Rubric tiêu chí đánh giá nhóm (100 điểm)* và *Bộ 07 biểu mẫu hồ sơ học sinh đồng bộ* (in sẵn phát tại lớp và lưu trên Google Drive):
  + `Phiếu 01`: Phiếu giao nhiệm vụ và phân công nhóm (kèm bảng duyệt 5 giai đoạn).
  + `Phiếu 02`: Sổ tay hướng dẫn 7 ngày và Checklist nộp hồ sơ.
  + `Phiếu 03`: Nhật ký chế tạo và đi dây an toàn.
  + `Phiếu 04`: Phiếu nhật ký thử nghiệm và bảng thống kê ($>= 10$ lần thử, lặp 3 lần đo/lần thử).
  + `Phiếu 05`: Nhật ký sử dụng AI của nhóm.
  + `Phiếu 06`: Hướng dẫn slide báo cáo (7 phần) và báo cáo cải tiến sau phản biện.
  + `Phiếu 07`: Phiếu tự đánh giá cá nhân và đánh giá chéo (thang 100 điểm không trùng biên).
- Đường dẫn Google Drive: *Link 1* (Thư mục học liệu hướng dẫn: video cảm biến, tài liệu Arduino IDE/Tinkercad/Wokwi, hướng dẫn prompt AI, Rubric và 07 biểu mẫu); *Link 2* (Thư mục nộp sản phẩm của các nhóm).
- Bộ thiết bị cấp phát cho các nhóm (chi tiết tại Phụ lục 1): ESP32 DevKit / Arduino Uno R3 / Arduino Nano kèm cáp; cảm biến ánh sáng (LDR), cảm biến nhiệt độ (NTC), cảm biến nước/mưa; quạt $5"V"$, đèn LED kèm đui E10, điện trở hạn dòng; pin vuông $9"V"$ / khay pin AA; breadboard, dây test đực-đực và đực-cái, cút nối dây, băng dính cách điện, dây thít nhựa.

=== Chuẩn bị của Học sinh (mỗi nhóm)
- Sách giáo khoa bộ Chân trời sáng tạo: Khoa học tự nhiên 9, Công nghệ 8, Toán 8, Tin học 8 (03 quyển/đầu sách).
- 01 bộ mô-đun cảm biến môn Công nghệ 8 (đối với nhóm chọn Phương án 2): mô-đun cảm biến ánh sáng, cảm biến nhiệt độ, cảm biến độ ẩm/mực nước.
- Thước kẻ, bút chì, bút màu, tẩy.

== Tiến trình dạy học Tiết 1 (45 phút)

=== Hoạt động 1: Khởi động – Xác định vấn đề thực tiễn và Công bố Rubric (6 phút)
- *a) Mục tiêu:* Học sinh từ tình huống thực tiễn xác định được nhiệm vụ thiết kế mạch điện một chiều an toàn có chức năng thông minh cho mô hình nhà ở; nắm rõ các tiêu chí trong Rubric 100 điểm ngay từ trước khi thiết kế. Tích hợp NLS 1.2.
- *b) Nội dung:* Xem video về Ngôi nhà thông minh, thảo luận trả lời 02 câu hỏi đặt vấn đề và đọc Bảng Rubric đánh giá nhóm.
- *c) Sản phẩm:* Câu trả lời của học sinh về cách mắc song song các nhánh thiết bị điện, các chức năng thông minh an toàn (chiếu sáng tự động, làm mát tự động, cảnh báo ngập nước) và sự nắm bắt các tiêu chí chấm điểm.
- *d) Tổ chức thực hiện:*

#table(
  columns: (1fr, 1fr),
  inset: 6pt,
  stroke: 0.5pt + rgb(201, 212, 226),
  fill: tfill,
  [*Hoạt động của giáo viên*], [*Hoạt động của học sinh*],
  [
    *Bước 1: Chuyển giao nhiệm vụ*
    - GV chia lớp thành các nhóm học tập (theo danh sách lớp #can[số nhóm, sĩ số]).
    - GV chiếu video về Ngôi nhà thông minh (`https://www.youtube.com/watch?v=nkSvqW_YYB8`).
    - GV nêu 02 câu hỏi đặt vấn đề:
      1) Các thiết bị điện trong nhà thường được lắp nối tiếp hay song song với nhau? Vì sao?
      2) Làm thế nào để thiết kế mô hình nhà có mạch điện một chiều an toàn và có các chức năng thông minh?
  ],
  [
    *Bước 1: Tiếp nhận nhiệm vụ*
    - Học sinh ngồi theo nhóm đã chia.
    - Xem video, ghi nhận các chức năng tự động của ngôi nhà và suy nghĩ trả lời câu hỏi.
  ],
  [
    *Bước 2: Thực hiện nhiệm vụ*
    - GV yêu cầu các nhóm thảo luận trong 2 phút, vận dụng kiến thức Đoạn mạch nối tiếp, Đoạn mạch song song (KHTN 9) và mạch điều khiển (Công nghệ 8).
  ],
  [
    *Bước 2: Thực hiện nhiệm vụ*
    - HS thảo luận nhóm trong 2 phút, thống nhất câu trả lời về cách mắc mạch điện và đề xuất chức năng tự động.
  ],
  [
    *Bước 3: Báo cáo, thảo luận*
    - GV mời đại diện 1 nhóm báo cáo kết quả; các nhóm khác lắng nghe, nhận xét, bổ sung hoặc phản biện.
  ],
  [
    *Bước 3: Báo cáo, thảo luận*
    - Đại diện nhóm 1 trình bày; các nhóm khác góp ý, đặt câu hỏi phản biện.
  ],
  [
    *Bước 4: Kết luận, nhận định & Công bố Rubric*
    - GV chốt kiến thức: Thiết bị điện trong nhà mắc song song để hoạt động độc lập ở đúng hiệu điện thế định mức ($U_("đm")$).
    - GV định hướng chức năng thông minh an toàn: dùng cảm biến ánh sáng (bật/tắt đèn), cảm biến nhiệt độ (bật quạt), cảm biến mực nước/mưa (cảnh báo ngập chân sàn).
    - *Nhấn mạnh giới hạn an toàn:* Chỉ dùng nguồn một chiều $< 9"V"$, nghiêm cấm điện $220"V"$; tuyệt đối không dùng cảm biến khí gas hay cảm biến lửa để phòng tránh cháy nổ.
    - *Điểm cải tiến:* GV phát và công bố ngay *Bảng Rubric đánh giá nhóm (100 điểm)* trước khi học sinh bắt tay thiết kế; yêu cầu đọc kỹ tiêu chí An toàn điện (30đ), Thử nghiệm (15đ) và Mạch hoàn thiện (20đ).
  ],
  [
    *Bước 4: Lắng nghe, ghi nhận*
    - HS ghi nhận nhiệm vụ thiết kế mô hình nhà thông minh và các giới hạn an toàn.
    - Tiếp nhận Bảng Rubric 100 điểm, đối chiếu yêu cầu của từng nhóm tiêu chí ngay từ đầu.
  ]
)

=== Hoạt động 2: Nghiên cứu kiến thức nền liên môn (6 phút)
- *a) Mục tiêu:* Học sinh xác định được hệ thống kiến thức nền liên môn (KHTN 9, Công nghệ 8, Tin học 8, Toán 8, Mĩ thuật) cần vận dụng để làm sản phẩm.
- *b) Nội dung:* Nhóm trưởng phân công các thành viên nghiên cứu từng mảng kiến thức nền từ SGK và bảng hướng dẫn.
- *c) Sản phẩm:* Bản xác định các kiến thức trọng tâm cần nghiên cứu của từng nhóm.
- *d) Tổ chức thực hiện:*

#table(
  columns: (1fr, 1fr),
  inset: 6pt,
  stroke: 0.5pt + rgb(201, 212, 226),
  fill: tfill,
  [*Hoạt động của giáo viên*], [*Hoạt động của học sinh*],
  [
    *Bước 1: Chuyển giao nhiệm vụ*
    - GV yêu cầu các nhóm chuẩn bị SGK KHTN 9, Công nghệ 8, Toán 8, Tin học 8.
    - GV phát *Bảng Nội dung kiến thức nền cần nghiên cứu* và gợi ý nhóm trưởng phân công mỗi cặp 2 bạn phụ trách rà soát một mảng kiến thức nền.
  ],
  [
    *Bước 1: Tiếp nhận nhiệm vụ*
    - Nhóm trưởng nhận bảng kiến thức nền và phân công các cặp thành viên tra cứu SGK.
  ],
  [
    *Bước 2: Thực hiện nhiệm vụ*
    - GV quan sát, hướng dẫn học sinh xác định các công thức và nguyên lý cốt lõi trong SGK.
  ],
  [
    *Bước 2: Thực hiện nhiệm vụ*
    - HS xem mục lục và nội dung các bài học trong SGK, đánh dấu kiến thức cần dùng.
  ],
  [
    *Bước 3: Báo cáo, thảo luận*
    - GV mời đại diện nhóm 1 báo cáo tóm tắt các kiến thức nền cần nghiên cứu; các nhóm khác bổ sung.
  ],
  [
    *Bước 3: Báo cáo, thảo luận*
    - Đại diện nhóm 1 báo cáo tóm tắt; các nhóm khác bổ sung.
  ],
  [
    *Bước 4: Kết luận, nhận định*
    - GV chốt 05 nội dung trọng tâm cần nghiên cứu:
      1) Cách mắc mạch nối tiếp, mạch song song; cách tính điện trở tương đương và điện trở hạn dòng bảo vệ LED.
      2) Nguyên lý hoạt động của cảm biến ánh sáng (LDR), cảm biến nhiệt độ (NTC), cảm biến nước/mưa và cách đấu dây với mạch xử lý.
      3) Các lệnh lập trình cơ bản trên Arduino IDE (`setup()`, `loop()`, `if...else`).
      4) Cách thu thập dữ liệu, lập bảng thống kê, tính tỉ lệ đạt (%), giá trị trung bình và vẽ biểu đồ cột.
      5) Thiết kế mô hình nhà 3D đảm bảo kết cấu và thẩm mỹ.
  ],
  [
    *Bước 4: Ghi nhận*
    - HS ghi chú các mảng kiến thức nền trọng tâm để vận dụng trong 07 ngày làm sản phẩm.
  ]
)

=== Hoạt động 3: Lựa chọn phương án tạo chức năng thông minh (5 phút)
- *a) Mục tiêu:* Học sinh so sánh ưu, nhược điểm giữa phương án lập trình vi điều khiển và phương án dùng mô-đun cảm biến dựng sẵn để lựa chọn giải pháp phù hợp với nhóm.
- *b) Nội dung:* Thảo luận nhóm, lập bảng so sánh nhanh và chốt phương án kỹ thuật.
- *c) Sản phẩm:* Lựa chọn phương án của từng nhóm (Phương án 1 hoặc Phương án 2) kèm lý do và danh mục thiết bị nhận bàn giao.
- *d) Tổ chức thực hiện:*

#table(
  columns: (1fr, 1fr),
  inset: 6pt,
  stroke: 0.5pt + rgb(201, 212, 226),
  fill: tfill,
  [*Hoạt động của giáo viên*], [*Hoạt động của học sinh*],
  [
    *Bước 1: Chuyển giao nhiệm vụ*
    - GV giới thiệu danh sách thiết bị và thông báo 02 phương án:
      + *Phương án 1 (Khuyến khích):* Lập trình vi điều khiển (ESP32 DevKit / Arduino Uno R3 / Arduino Nano) kết hợp cảm biến, đọc thông số hiệu chuẩn qua Serial Monitor.
      + *Phương án 2:* Sử dụng bộ mô-đun cảm biến dựng sẵn ở môn Công nghệ 8, chỉnh ngưỡng bằng biến trở.
    - GV nhấn mạnh: Nhóm cần chọn tối thiểu 01 cảm biến; theo Rubric, nhóm chỉ có 01 cảm biến hoạt động đạt tối đa 9/10 điểm, từ 02 cảm biến trở lên hoạt động tốt mới đạt 10/10 điểm.
  ],
  [
    *Bước 1: Tiếp nhận nhiệm vụ*
    - HS lắng nghe yêu cầu và quy định tính điểm của từng phương án.
  ],
  [
    *Bước 2: Thực hiện nhiệm vụ*
    - GV yêu cầu các nhóm thảo luận trong 2 phút để so sánh ưu, nhược điểm và lựa chọn phương án.
  ],
  [
    *Bước 2: Thực hiện nhiệm vụ*
    - HS thảo luận nhóm, so sánh ưu – nhược điểm của 2 phương án và chốt lựa chọn của nhóm.
  ],
  [
    *Bước 3: Báo cáo, thảo luận*
    - GV yêu cầu đại diện từng nhóm giơ tay báo cáo phương án lựa chọn, nêu rõ lý do và nhận bộ thiết bị.
  ],
  [
    *Bước 3: Báo cáo, thảo luận*
    - Đại diện từng nhóm báo cáo phương án đã chọn và lên nhận thiết bị.
  ],
  [
    *Bước 4: Kết luận, nhận định*
    - GV nhắc lại và ghi nhận lựa chọn của từng nhóm vào hồ sơ theo dõi lớp.
  ],
  [
    *Bước 4: Xác nhận*
    - Nhóm học sinh xác nhận lựa chọn và kiểm tra thiết bị được giao.
  ]
)

=== Hoạt động 4: Phân công nhiệm vụ và Lập bản thiết kế mạch điện, mô hình nhà (20 phút)
- *a) Mục tiêu:*
  + Phân công nhiệm vụ rõ ràng cho từng thành viên trên `Phiếu 01`.
  + Vận dụng kiến thức nền để phác thảo bản thiết kế căn nhà, sơ đồ nguyên lý mạch điện và xác định vị trí lắp đặt cảm biến, thiết bị điện hợp lý.
  + Phát triển năng lực giải quyết vấn đề, sáng tạo và năng lực số (NLS 2.4 – lưu trữ trên Google Drive).
- *b) Nội dung:* Phân công nhiệm vụ nhóm (5 phút) và vẽ phác thảo bản thiết kế mô hình nhà kèm sơ đồ mạch điện trên giấy A4 (15 phút).
- *c) Sản phẩm:* `Phiếu 01 (Phiếu giao nhiệm vụ và phân công nhóm)` đã điền thông tin và *Bản vẽ phác thảo trên giấy A4*.
- *d) Tổ chức thực hiện:*

#table(
  columns: (1fr, 1fr),
  inset: 6pt,
  stroke: 0.5pt + rgb(201, 212, 226),
  fill: tfill,
  [*Hoạt động của giáo viên*], [*Hoạt động của học sinh*],
  [
    *Nội dung 1: Phân công nhiệm vụ (5 phút)*
    - *Chuyển giao:* GV công bố nhóm trưởng, thư ký từng nhóm; phát `Phiếu 01` và thông báo các nhóm có 07 ngày liên tục làm mô hình, thử nghiệm tại nhà và báo cáo vào tiết học tuần sau.
    - *Thực hiện:* GV quan sát các nhóm thảo luận phân công trong 3 phút; gợi ý điều chỉnh nếu phân công chưa cân đối.
    - *Báo cáo & Kết luận:* GV kiểm tra nhanh bảng phân công khi các nhóm trình diện; yêu cầu nhóm trưởng giữ lại `Phiếu 01`, bàn bạc chốt giờ hoàn thành chi tiết sau tiết học và chụp ảnh tải lên thư mục `01_Thiet_ke` trên Google Drive trước 20:00 Ngày 1.
  ],
  [
    *Thực hiện Nội dung 1:*
    - HS thảo luận nhóm trong 3 phút, phân công nhiệm vụ cụ thể gắn với từng sản phẩm phải nộp trên `Phiếu 01`.
    - Đại diện từng nhóm trình diện bảng phân công trước GV.
    - Nhóm trưởng và thư ký lưu giữ phiếu để cập nhật và chụp gửi lên Drive nhóm.
  ],
  [
    *Nội dung 2: Lập bản thiết kế (15 phút)*
    - *Chuyển giao:* GV phát giấy A4 trắng cho từng nhóm; yêu cầu thảo luận, vẽ phác thảo căn nhà, sơ đồ mạch điện và ghi chú rõ vị trí gắn cảm biến, quạt $5"V"$, đèn LED, nguồn pin ($< 9"V"$), đường đi dây điện. Nhắc lại: tuyệt đối không chọn cảm biến gas/lửa.
    - *Thực hiện:* GV quan sát, hỗ trợ các nhóm gặp khó khăn trong 10 phút vẽ bài.
    - *Báo cáo, thảo luận:* GV dùng điện thoại kết nối *Iriun Webcam* với máy tính để chiếu trực tiếp bản vẽ A4 của các nhóm lên màn hình tivi; điều khiển các nhóm trình bày và góp ý.
    - *Kết luận, nhận định:* GV nhận xét, rút kinh nghiệm và chốt phương án thiết kế. Dặn dò kỹ:
      + Xem kỹ giá trị định mức ($U, I$) của cảm biến và tải để cấp nguồn DC $< 9"V"$ phù hợp.
      + Nếu cần hạ điện áp đặt vào đèn LED thì bắt buộc phải mắc nối tiếp điện trở hạn dòng phù hợp.
      + Hoàn thiện bản vẽ và sơ đồ mô phỏng Tinkercad/Wokwi để nộp duyệt Giai đoạn 1 trước 20:00 Ngày 2.
  ],
  [
    *Thực hiện Nội dung 2:*
    - Dựa vào kích thước và nguyên lý hoạt động của từng cảm biến (LDR cần đón sáng tự nhiên, NTC ở không gian phòng, cảm biến nước ở sát sàn) để xác định vị trí lắp đặt và vẽ sơ đồ mạch lên giấy A4.
    - Đại diện nhóm nộp bản vẽ A4 lên trình chiếu và thuyết minh ý tưởng.
    - Các nhóm khác theo dõi trên tivi, nhận xét về vị trí đặt cảm biến và đường đi dây.
    - Ghi nhận các dặn dò kỹ thuật của GV để hoàn thiện bản vẽ chính thức tại nhà.
  ]
)

=== Hoạt động 5: Chốt ngưỡng hiệu chuẩn, quy tắc ghi số liệu, Nhật ký AI và Giao nhiệm vụ 07 ngày tại nhà (8 phút)
- *a) Mục tiêu:*
  + Chốt ngưỡng hiệu chuẩn và quy tắc ghi bảng thống kê thử nghiệm (`Phiếu 04`) ngay từ Tiết 1, khắc phục triệt để tình trạng học sinh ghi bảng thống kê dồn vào ngày cuối.
  + Thiết lập cơ chế kiểm tra tiến độ giữa tuần (Ngày 4) qua ảnh chụp mối nối đã bọc cách điện (`Phiếu 03`) và ảnh màn hình Nhật ký AI (`Phiếu 05`).
  + Hướng dẫn đầy đủ quy trình nộp hồ sơ theo `Phiếu 02, 06, 07`.
- *b) Nội dung:* GV phát bộ biểu mẫu, công bố link Google Drive và hướng dẫn chi tiết lịch trình 07 ngày tự học.
- *c) Sản phẩm:* Các nhóm nhận đủ 07 biểu mẫu, nắm rõ các mốc duyệt 5 giai đoạn và quy chuẩn báo cáo Tiết 2.
- *d) Tổ chức thực hiện:*
  1. *Phát hồ sơ và công bố học liệu số:* GV phát `Phiếu hướng dẫn nghiên cứu` và trọn bộ `Phiếu 02` đến `Phiếu 07`; gửi *Link 1* (Thư mục chứa tài liệu hướng dẫn: video & tài liệu cảm biến, hướng dẫn phần mềm Arduino IDE/Tinkercad/Wokwi, hướng dẫn sử dụng AI, tiêu chí đánh giá nhóm) và *Link 2* (Thư mục nộp sản phẩm) qua Zalo/Email lớp.
  2. *Chốt ngưỡng hiệu chuẩn và cách ghi số liệu thử nghiệm (`Phiếu 04`) ngay từ Tiết 1:*
     - Mỗi cảm biến phải thử nghiệm thực tế *tối thiểu 10 lần*; mỗi lần thử phải *đo lặp 3 lần rồi lấy giá trị trung bình*.
     - Ghi rõ ngưỡng đặt kèm đơn vị, dụng cụ đo, người đo; ghi trung thực cả những lần *Đạt* và *Không đạt* kèm nguyên nhân và cách điều chỉnh (tuyệt đối không xóa hoặc sửa số liệu cho đẹp).
     - Cuối bảng phải tính tỉ lệ đạt (%), sai số lớn nhất và vẽ *01 biểu đồ cột* thể hiện tỉ lệ đạt.
  3. *Quy định kiểm tra tiến độ giữa tuần và Nhật ký AI (`Phiếu 03` & `Phiếu 05`):*
     - Học sinh dùng AI theo đúng công thức prompt 4 thành phần, ghi vào `Phiếu 05` ngay sau mỗi lần hỏi và bắt buộc kiểm chứng trên mạch thật, chỉ ra ít nhất 01 lỗi của AI và cách nhóm đã sửa.
     - *Mốc kiểm tra giữa tuần (Trước 20:00 Ngày 4 – Thứ Năm):* Các nhóm bắt buộc gửi ảnh chụp cận cảnh các mối nối đã bọc băng dính cách điện, dây bó gọn (`Phiếu 03`) và ảnh chụp `Nhật ký AI (Phiếu 05)` để giáo viên duyệt trước khi cấp nguồn chạy thử toàn diện.
  4. *Chuẩn bị cho Tiết 2 báo cáo sản phẩm (`Phiếu 06` & `Phiếu 07`):*
     - Hạn chốt Slide 7 phần (nộp cả `.pptx` và `.pdf`) và video chạy thử: *21:00 Ngày 6 (Thứ Bảy)* (nộp trước buổi báo cáo ít nhất 01 buổi).
     - Hạn cứng nộp toàn bộ hồ sơ trên Drive và `Phiếu 07`: *20:00 Ngày 7 (Chủ Nhật)*.
     - Quy định báo cáo tại Tiết 2: Kê 01 bàn trưng bày ở giữa bục giảng; mỗi nhóm có tối đa *05 phút* (03 phút thuyết trình + trình diễn mô hình; 02 phút nhận xét và phản biện).

#pagebreak()
= TIẾT 2: BÁO CÁO SẢN PHẨM, KIỂM NGHIỆM VÀ ĐÁNH GIÁ

== Mục tiêu Tiết 2

=== Về kiến thức
- Củng cố, hệ thống hóa kiến thức về đoạn mạch nối tiếp, đoạn mạch song song, vai trò điện trở hạn dòng bảo vệ LED, nguyên lý biến thiên điện trở của các cảm biến (LDR, NTC, cảm biến nước) và phương pháp đo đạc, thống kê thực nghiệm.

=== Về năng lực
- *Năng lực Khoa học tự nhiên:* Vận hành thành công mô hình mạch điện nhà thông minh trước lớp; giải thích được nguyên lý hoạt động, bảng thống kê $>= 10$ lần thử, sai số và cách khắc phục lỗi mạch; vận dụng kiến thức hoàn thành chính xác Phiếu học tập cá nhân.
- *Năng lực chung:*
  + _Tự chủ và tự học:_ Tự đánh giá khách quan kết quả làm việc của bản thân và đánh giá chéo thành viên (`Phiếu 07`); lập kế hoạch cải tiến sản phẩm sau phản biện (`Phiếu 06`).
  + _Giao tiếp và hợp tác:_ Thuyết trình rõ ràng, tự tin trong 3 phút; tích cực nhận xét, đặt câu hỏi và trả lời phản biện kỹ thuật trong 2 phút.
- *Năng lực số:*
  + _NLS 4.2:_ Tạo và trình chiếu bài báo cáo slide 7 phần, hình ảnh minh chứng mối nối và video chạy thử.
  + _NLS 1.2, 1.3, 3.1, 6.2:_ Minh chứng quá trình tìm kiếm thông tin cảm biến, lập trình điều khiển và kiểm chứng, sửa lỗi từ kết quả của AI (`Phiếu 05`).

=== Về phẩm chất
- Trung thực khi báo cáo số liệu thử nghiệm và đánh giá đồng đẳng; có trách nhiệm và tinh thần cầu thị tiếp thu góp ý để hoàn thiện sản phẩm.

== Thiết bị dạy học và học liệu Tiết 2
- *Giáo viên:* Máy chiếu, máy tính, đồng hồ bấm giờ; bàn trưng bày sản phẩm; dụng cụ kiểm thử trực tiếp (đèn pin, cốc nước/khăn ẩm, nguồn nhiệt ấm an toàn); Phiếu chấm điểm nhóm theo Rubric 100 điểm (06 bản); Bảng tổng hợp phiếu đánh giá cá nhân (`Phiếu 07`); Bản in *Phiếu học tập cá nhân*.
- *Học sinh:* Mô hình nhà thông minh hoàn thiện (nguồn DC $< 9"V"$, mối nối bọc cách điện); File thuyết trình 7 phần (`.pptx` và `.pdf`), video chạy thử và bộ 07 hồ sơ đã nộp trên Google Drive.

== Tiến trình dạy học Tiết 2 (45 phút)

=== Hoạt động 1: Khởi động – Kiểm tra sự sẵn sàng và Rà soát an toàn điện (5 phút)
- *a) Mục tiêu:* Kiểm tra sự chuẩn bị sản phẩm vật lý, hồ sơ minh chứng và rà soát an toàn điện ($< 9"V"$) của các nhóm trước khi báo cáo.
- *b) Nội dung:* Các nhóm báo cáo tình trạng hoàn thành sản phẩm theo Checklist (`Phiếu 02`) và nhận phiếu chấm điểm nhóm.
- *c) Sản phẩm:* Mô hình nhà thông minh sẵn sàng vận hành; các nhóm nhận phiếu chấm Rubric.
- *d) Tổ chức thực hiện:* GV yêu cầu các nhóm trưởng báo cáo nhanh sự chuẩn bị sản phẩm và kiểm tra trực quan nguồn điện ($< 9"V"$), mối nối bọc cách điện; phát phiếu tiêu chí chấm điểm nhóm cho các nhóm theo dõi.

=== Hoạt động 2: Báo cáo sản phẩm, Kiểm nghiệm thực tế và Phản biện (32 phút)
- *a) Mục tiêu:* Học sinh trình bày được sản phẩm, quá trình chế tạo – thử nghiệm và thể hiện được các năng lực số (NLS 4.2, NLS 1.2, NLS 1.3, NLS 3.1, NLS 6.2); đánh giá sản phẩm theo Rubric 100 điểm.
- *b) Nội dung:* Đại diện từng nhóm thuyết trình theo cấu trúc 7 phần (3 phút), vận hành thử nghiệm cảm biến trực tiếp trên bàn bục giảng và tham gia phản biện (2 phút).
- *c) Sản phẩm:* Phần thuyết trình, kết quả vận hành trực tiếp của mô hình, câu trả lời phản biện, bảng điểm Rubric và nội dung ghi nhận vào Báo cáo cải tiến (`Phiếu 06`).
- *d) Tổ chức thực hiện:*

#table(
  columns: (1fr, 1fr),
  inset: 6pt,
  stroke: 0.5pt + rgb(201, 212, 226),
  fill: tfill,
  [*Hoạt động của giáo viên*], [*Hoạt động của học sinh*],
  [
    *Bước 1: Chuyển giao nhiệm vụ*
    - GV lần lượt mời đại diện từng nhóm mang mô hình nhà lên bàn trưng bày ở bục giảng và thuyết trình về quá trình làm sản phẩm.
    - Nhắc lại quy định thời gian: thuyết trình và trình diễn mô hình 03 phút, nhận xét và phản biện 02 phút, tổng thời gian cho 01 nhóm không quá 05 phút.
  ],
  [
    *Bước 1: Tiếp nhận nhiệm vụ*
    - Nhóm được gọi mang mô hình lên bàn trung tâm, kết nối nguồn DC $< 9"V"$ và mở slide báo cáo 7 phần.
  ],
  [
    *Bước 2: Thực hiện nhiệm vụ & Bước 3: Báo cáo, thảo luận*
    - GV điều khiển hoạt động báo cáo, kiểm thử trực tiếp cảm biến trên mô hình và điều phối phần góp ý, phản biện của học sinh.
    - GV đặt câu hỏi kiểm tra chiều sâu kiến thức về giá trị định mức, số liệu bảng thống kê 10 lần thử (`Phiếu 04`) và cách nhóm phát hiện, sửa lỗi của AI (`Phiếu 05`).
  ],
  [
    *Bước 2 & Bước 3: Thuyết trình, vận hành và phản biện*
    - Đại diện nhóm trình bày mô hình và thuyết trình đủ 7 phần: (1) Thành viên & phân công; (2) Vấn đề cần giải quyết; (3) So sánh & chọn giải pháp; (4) Bản vẽ, sơ đồ mạch & nguyên lý cảm biến; (5) Quá trình chế tạo, bảng thống kê $>= 10$ lần thử & Nhật ký AI; (6) Bài học lý thuyết & kinh nghiệm xử lý lỗi; (7) Định hướng phát triển.
    - HS các nhóm khác theo dõi, chấm điểm vào phiếu Rubric, góp ý và đặt câu hỏi phản biện.
    - Nhóm báo cáo trả lời phản biện và ghi chép góp ý.
  ],
  [
    *Bước 4: Kết luận, nhận định*
    - GV nhận xét, góp ý kỹ thuật và công bố điểm Rubric của từng nhóm (#can[điểm Rubric từng nhóm sau khi chấm]).
    - GV yêu cầu các nhóm thảo luận về nội dung góp ý của các nhóm bạn và của GV để hoàn thiện *Báo cáo cải tiến sau phản biện* (mục 3 của `Phiếu 06`), nộp lại cho GV vào tuần sau.
  ],
  [
    *Bước 4: Rút kinh nghiệm*
    - Các nhóm lắng nghe nhận xét, tổng hợp các hạn chế, nguyên nhân và đề xuất phương án cải tiến cụ thể vào `Phiếu 06` để nộp vào tuần sau.
  ]
)

=== Hoạt động 3: Luyện tập – Củng cố kiến thức (8 phút)
- *a) Mục tiêu:* Kiểm tra, đánh giá mức độ nắm vững kiến thức điện học và cảm biến của từng cá nhân học sinh sau khi làm sản phẩm.
- *b) Nội dung:* Học sinh làm bài tập trắc nghiệm độc lập trên *Phiếu học tập cá nhân* (Câu 1 đến Câu 7).
- *c) Sản phẩm:* Đáp án hoàn thành trên Phiếu học tập của từng học sinh.
- *d) Tổ chức thực hiện:*

#table(
  columns: (1fr, 1fr),
  inset: 6pt,
  stroke: 0.5pt + rgb(201, 212, 226),
  fill: tfill,
  [*Hoạt động của giáo viên*], [*Hoạt động của học sinh*],
  [
    *Bước 1: Chuyển giao nhiệm vụ*
    - GV phát *Phiếu học tập* (Phụ lục 5), yêu cầu học sinh hoạt động cá nhân trong 5 phút để hoàn thành các câu hỏi.
    - Lưu ý: Mô hình của nhóm có chức năng thông minh dùng cảm biến nào thì chọn câu `4a`, `4b`, `4c` tương ứng (khuyến khích làm cả 3 câu).
  ],
  [
    *Bước 1: Tiếp nhận nhiệm vụ*
    - Học sinh nhận Phiếu học tập và đọc kỹ yêu cầu.
  ],
  [
    *Bước 2: Thực hiện nhiệm vụ*
    - GV quan sát, đảm bảo học sinh làm bài nghiêm túc, trung thực.
  ],
  [
    *Bước 2: Thực hiện nhiệm vụ*
    - Học sinh làm bài cá nhân, khoanh tròn đáp án câu 1–6 và điền Đ/S ở câu 7.
  ],
  [
    *Bước 3: Báo cáo, thảo luận*
    - GV gọi một số học sinh trình bày đáp án và giải thích ngắn gọn.
  ],
  [
    *Bước 3: Báo cáo, thảo luận*
    - Học sinh trình bày đáp án; các học sinh khác nhận xét khi được yêu cầu.
  ],
  [
    *Bước 4: Kết luận, nhận định*
    - GV nhận xét và công bố đáp án chuẩn:
      *1 – C; 2 – B; 3 – B; 4a – C; 4b – A; 4c – D; 5 – C; 6 – C; 7a – Đ; 7b – Đ; 7c – S; 7d – S.*
    - GV thu lại Phiếu học tập để lưu hồ sơ minh chứng.
  ],
  [
    *Bước 4: Đối chiếu và nộp bài*
    - Học sinh đối chiếu đáp án, sửa lỗi sai và nộp lại Phiếu học tập cho GV.
  ]
)

#pagebreak()
= PHỤ LỤC HỒ SƠ DẠY HỌC VÀ CÔNG CỤ ĐÁNH GIÁ

== Phụ lục 1. Nội dung kiến thức nền và Danh mục thiết bị dạy học

=== Bảng Nội dung kiến thức nền cần nghiên cứu (Bộ SGK Chân trời sáng tạo)
#table(
  columns: (3.6cm, 4.8cm, 1fr),
  inset: 5pt,
  stroke: 0.5pt + rgb(201, 212, 226),
  fill: tfill,
  [*Môn học & Lớp*], [*Bài học trong SGK*], [*Nội dung cần nghiên cứu và vận dụng*],
  [Khoa học tự nhiên 6], [Chủ đề Các phép đo], [Đo chiều dài (kích thước mô hình, dây dẫn), đo nhiệt độ (đối chiếu hiệu chuẩn cảm biến nhiệt).],
  [Khoa học tự nhiên 9], [Chủ đề 3: Điện (Bài 8 đến Bài 13)], [Giá trị định mức ($U, I, P$); định luật Ohm; đoạn mạch nối tiếp (tính điện trở hạn dòng bảo vệ LED), đoạn mạch song song (mắc các nhánh tải độc lập).],
  [Công nghệ 6], [Bài 3 – Ngôi nhà thông minh], [Đặc điểm, tiện ích tự động hóa và tiết kiệm năng lượng của ngôi nhà thông minh.],
  [Công nghệ 8], [Bài 3 (Bản vẽ kĩ thuật), Bài 10 & 11 (Mạch điện điều khiển)], [Vẽ bản vẽ mặt bằng nhà; cấu trúc mạch điều khiển và cách lắp mô-đun cảm biến ánh sáng, nhiệt độ, độ ẩm/nước.],
  [Tin học 8], [Chủ đề 5 – Giải quyết vấn đề với máy tính], [Cấu trúc rẽ nhánh, vòng lặp trong lập trình Arduino IDE (`setup()`, `loop()`); gỡ lỗi chương trình; làm slide trình chiếu.],
  [Toán 8], [Chương 4 – Một số yếu tố thống kê (Bài 1, Bài 3)], [Thu thập, phân loại dữ liệu thử nghiệm ($>= 10$ lần), tính trung bình cộng, tỉ lệ đạt (%) và vẽ biểu đồ cột.],
  [Mĩ thuật 6], [Chủ đề Vật liệu hữu ích – Bài 3: Mô hình nhà 3D], [Tạo kết cấu mô hình nhà 3D chắc chắn, bố cục thẩm mỹ, đi dây gọn gàng.],
)

=== Danh mục thiết bị – dụng cụ cấp phát (An toàn điện: Nguồn DC $< 9"V"$, không dùng cảm biến gas/lửa)
#table(
  columns: (0.9cm, 5.2cm, 2.2cm, 1fr),
  inset: 5pt,
  align: (center, left, center, left),
  stroke: 0.5pt + rgb(201, 212, 226),
  fill: tfill,
  [*STT*], [*Tên thiết bị, vật tư*], [*Số lượng*], [*Vai trò và Ghi chú an toàn*],
  [1], [ESP32 DevKit / Arduino Uno R3 / Arduino Nano], [6 bộ], [Bộ điều khiển trung tâm cho các nhóm chọn Phương án 1],
  [2], [Cáp truyền dữ liệu cho vi điều khiển], [6 sợi], [Nạp code và đọc dữ liệu hiệu chuẩn trên Serial Monitor],
  [3], [Pin vuông $9"V"$ kèm đế, giắc nguồn (hoặc khay pin AA)], [6 bộ], [Nguồn một chiều điện áp thấp ($< 9"V"$); cấm dùng điện $220"V"$],
  [4], [Cút nối dây 2-2 (12 cái) và Cút nối dây 2-6 (2 cái)], [14 cái], [Hỗ trợ nối dây an toàn, chống hở mạch (dự phòng)],
  [5], [Đui đèn E10 và Đèn LED trái chanh (2 màu khác nhau)], [2 bộ/nhóm], [Tải chiếu sáng; bắt buộc mắc nối tiếp điện trở hạn dòng],
  [6], [Quạt mini DC $5"V"$], [1 cái/nhóm], [Tải động cơ làm mát khi nhiệt độ vượt ngưỡng],
  [7], [Bó dây test $20"cm"$ (6 bó đực-đực, 6 bó đực-cái), Breadboard], [12 bó], [Kết nối mạch thử nghiệm trên testboard và vào mô hình],
  [8], [Cảm biến ánh sáng (Quang trở LDR)], [1 cái/nhóm], [Tự động bật đèn khi trời tối],
  [9], [Cảm biến nhiệt độ (Nhiệt trở NTC)], [1 cái/nhóm], [Tự động bật quạt khi trời nóng],
  [10], [Cảm biến nước / Cảm biến mưa], [1 cái/nhóm], [Cảnh báo ngập nước tại chân sàn (Thay thế hoàn toàn cảm biến gas/lửa)],
  [11], [Băng dính cách điện, dây thít nhựa, keo nến], [1 bộ/nhóm], [Bọc kín 100% mối nối, cố định dây sát mép khung tránh cánh quạt],
)

== Phụ lục 2. Hệ thống 07 biểu mẫu hồ sơ học sinh và Lịch duyệt 5 giai đoạn

#table(
  columns: (1.5cm, 5.2cm, 2.7cm, 1fr),
  inset: 5pt,
  align: (center, left, center, left),
  stroke: 0.5pt + rgb(201, 212, 226),
  fill: tfill,
  [*Mã*], [*Tên biểu mẫu*], [*Thư mục Drive*], [*Yêu cầu cốt lõi và Mốc thời gian giáo viên duyệt*],
  [Phiếu 01], [Phiếu giao nhiệm vụ và phân công nhóm], [`01_Thiet_ke`], [Phân công nhiệm vụ gắn với 10 sản phẩm bắt buộc; cam kết an toàn ($< 9"V"$, không dùng cảm biến gas/lửa); bảng theo dõi GV duyệt 5 giai đoạn. Chốt 20:00 Ngày 1.],
  [Phiếu 02], [Sổ tay hướng dẫn 7 ngày và Checklist nộp hồ sơ], [`04_Bao_cao`], [Lịch chi tiết Ngày 1 đến Ngày 7; quy tắc đặt tên tệp (`Lop_Nhom_NoiDung_Ngay`); bảng kiểm 10 hạng mục hồ sơ. Nộp toàn bộ trước 20:00 Ngày 7.],
  [Phiếu 03], [Nhật ký chế tạo và đi dây an toàn], [`02_Che_tao_Mach`], [Theo dõi lắp mạch trên testboard (Ngày 3), đo $U, I$ 3 lần đầu; checklist bọc cách điện mọi mối nối kèm tên tệp ảnh. *Kiểm tra giữa tuần: Trước 20:00 Ngày 4.*],
  [Phiếu 04], [Phiếu nhật ký thử nghiệm và bảng thống kê], [`03_Thu_nghiem`], [Thử nghiệm tối thiểu 10 lần/cảm biến (mỗi lần đo lặp 3 lần lấy trung bình); ghi ngưỡng đặt kèm đơn vị, cả lần Đạt và Không đạt, nguyên nhân, điều chỉnh; vẽ biểu đồ cột tỉ lệ đạt. *Duyệt trước 20:00 Ngày 5.*],
  [Phiếu 05], [Nhật ký sử dụng AI của nhóm], [`03_Thu_nghiem`], [Dùng chung 1 tài khoản nhóm, không nhập thông tin cá nhân; viết prompt đủ 4 thành phần; kiểm chứng trên mạch thật, ghi ít nhất 1 lỗi của AI và cách sửa. *Kiểm tra giữa tuần Ngày 4 & chốt Ngày 7.*],
  [Phiếu 06], [Hướng dẫn slide báo cáo và Báo cáo cải tiến], [`04_Bao_cao`], [Khung Slide 7 phần (chữ $>= 20"pt"$, nộp cả `.pptx` và `.pdf` trước 21:00 Ngày 6); mẫu Báo cáo cải tiến sau phản biện dài 1 trang A4 (nộp sau Tiết 2).],
  [Phiếu 07], [Phiếu tự đánh giá cá nhân và đánh giá chéo], [`04_Bao_cao`], [4 tiêu chí (TC1–TC4, mỗi tiêu chí 25đ, tổng 100đ). *Xếp loại không trùng biên:* Tốt ($80$ đến $100$đ); Khá ($65$ đến dưới $80$đ); Trung bình ($50$ đến dưới $65$đ); Yếu (dưới $50$đ). Bắt buộc ghi việc cụ thể và ít nhất 1 khuyết điểm.],
)

#pagebreak()
== Phụ lục 3. Bảng Rubric tiêu chí đánh giá nhóm (Thang điểm 100)

=== Bảng tổng hợp trọng số Rubric (Công bố cho học sinh từ Tiết 1)
#table(
  columns: (4.8cm, 1fr, 1.8cm, 1.6cm),
  inset: 5pt,
  align: (left, left, center, center),
  stroke: 0.5pt + rgb(201, 212, 226),
  fill: tfill,
  [*Nhóm tiêu chí & Hạng mục*], [*Mô tả chi tiết yêu cầu cần đạt*], [*Điểm tối đa*], [*Điểm chấm*],
  [*Nhóm 1. Xác định vấn đề, đề xuất giải pháp*], [*Tổng nhóm 1*], [*10*], [ ],
  [1.1. Xác định vấn đề kỹ thuật], [Trình bày rõ vấn đề thực tiễn cần giải quyết, bối cảnh và yêu cầu kỹ thuật.], [5], [ ],
  [1.2. Đề xuất giải pháp], [Đưa ra từ 2 giải pháp trở lên, có bảng so sánh ưu – nhược điểm để rút ra lựa chọn cuối cùng.], [5], [ ],
  [*Nhóm 2. Mô hình căn nhà*], [*Tổng nhóm 2*], [*5*], [ ],
  [2.1. Kết cấu cơ bản], [Mô hình có kết cấu ổn định, chắc chắn, không bị sập đổ hay tách rời khi di chuyển.], [3], [ ],
  [2.2. Hình thức], [Thiết kế đẹp mắt, sạch sẽ, bố cục hợp lý.], [2], [ ],
  [*Nhóm 3. Bản vẽ thiết kế – Sơ đồ mạch*], [*Tổng nhóm 3*], [*10*], [ ],
  [3.1. Sơ đồ mạch (Nhóm lập trình hoặc Nhóm mô-đun dựng sẵn)], [- Nhóm lập trình: Dùng phần mềm (Tinkercad, Wokwi,...) vẽ sơ đồ nguyên lý – sơ đồ mạch kèm giá trị định mức $U, I, R$. \
  - Nhóm mô-đun: Dùng phần mềm hoặc vẽ tay chi tiết vị trí cảm biến, mạch xử lý tín hiệu, dây nguồn và giá trị định mức.], [10], [ ],
  [*Nhóm 4. Chế tạo – Thử nghiệm*], [*Tổng nhóm 4*], [*55*], [ ],
  [4.1. An toàn điện (30 điểm: 6 mục $times$ 5 điểm)], [Chỉ dùng nguồn DC $< 9"V"$. Đạt 6 mục: (1) Kết nối đúng kỹ thuật (5đ); (2) Mối nối chắc chắn (5đ); (3) Bọc kín cách điện/cút nối chống hở mạch (5đ); (4) Không hở lõi dây (5đ); (5) Cố định dây gọn gàng (5đ); (6) Sắp xếp thẳng hàng, hợp lý, tránh cánh quạt (5đ).], [30], [ ],
  [4.2a. Thử nghiệm và thống kê], [Thử nghiệm ít nhất 10 lần/cảm biến (lặp 3 lần đo/lần thử), lập bảng thống kê và biểu đồ cột (`Phiếu 04`), rút ra nhận xét về hiệu quả mô hình.], [10], [ ],
  [4.2b. Tinh chỉnh và kiểm chứng AI], [Mô tả chi tiết quá trình tinh chỉnh mạch/ngưỡng và minh chứng kiểm chứng, sửa lỗi từ gợi ý của AI (`Phiếu 04` & `Phiếu 05`).], [5], [ ],
  [4.3a. Vị trí cảm biến], [Vị trí lắp đặt các cảm biến hợp lý, tối ưu cho việc thu nhận tín hiệu.], [10], [ ],
  [4.3b. Hoạt động của cảm biến], [Cảm biến hoạt động chính xác, độ trễ thấp (Chỉ có 01 cảm biến hoạt động đạt tối đa 9đ; từ 02 cảm biến trở lên đạt tối đa 10đ).], [10], [ ],
  [*Nhóm 5. Báo cáo thuyết trình và Slide*], [*Tổng nhóm 5*], [*20*], [ ],
  [5.1a. Nội dung thuyết trình], [Cấu trúc logic, đầy đủ 7 nội dung bắt buộc theo `Phiếu 06` (phân công; vấn đề; giải pháp; nguyên lý & sơ đồ; quá trình làm & bảng thử nghiệm + Nhật ký AI; bài học lý thuyết/kinh nghiệm; định hướng phát triển).], [10], [ ],
  [5.1b. Kỹ năng thuyết trình], [Thuyết trình tự tin, giao tiếp tốt, đúng thời gian (3 phút trình bày + 2 phút phản biện).], [5], [ ],
  [5.2. Thiết kế Slide], [Slide đẹp mắt, màu sắc – phông chữ – cỡ chữ ($>= 20"pt"$) phù hợp; hình ảnh, biểu đồ, video rõ nét.], [5], [ ],
  [*TỔNG CỘNG*], [ ], [*100*], [ ],
)

=== Mô tả chi tiết 04 mức độ đánh giá (Xuất sắc – Khá – Đạt – Chưa đạt)
#table(
  columns: (3.2cm, 1fr, 1fr, 1fr, 1fr),
  inset: 4.5pt,
  stroke: 0.5pt + rgb(201, 212, 226),
  fill: tfill,
  [*Tiêu chí*], [*Xuất sắc*], [*Khá*], [*Đạt*], [*Chưa đạt*],
  [1.1. Xác định vấn đề (5đ)], [Rõ ràng, đúng bản chất kỹ thuật, có bối cảnh và lý do (5đ).], [Xác định được vấn đề nhưng chưa sâu hoặc thiếu chi tiết (4đ).], [Nêu mơ hồ, thiếu tính kỹ thuật (2–3đ).], [Không nêu đúng vấn đề (0–1đ).],
  [1.2. Đề xuất giải pháp (5đ)], [Đề xuất $>= 2$ giải pháp, có bảng so sánh ưu – nhược điểm rõ ràng (5đ).], [Có $>= 2$ giải pháp nhưng so sánh chưa đầy đủ (4đ).], [Chỉ nêu 1 giải pháp hoặc nêu 2 nhưng không phân tích (2–3đ).], [Không đề xuất giải pháp phù hợp (0–1đ).],
  [2.1. Kết cấu nhà (3đ)], [Rất chắc chắn, không bung/tách khi di chuyển (3đ).], [Tương đối chắc, đôi khi rung lắc (2đ).], [Đứng vững nhưng yếu (1đ).], [Dễ sập/tách (0đ).],
  [2.2. Hình thức (2đ)], [Đẹp, sạch, bố cục hợp lý (2đ).], [Khá đẹp (1,5đ).], [Bình thường (1đ).], [Cẩu thả (0đ).],
  [3. Bản vẽ – Sơ đồ mạch (10đ)], [Đúng kỹ thuật, đủ chi tiết vị trí cảm biến, dây nguồn, mạch xử lý, định mức (9–10đ).], [Đầy đủ nhưng một vài vị trí/thông số chưa rõ (7–8đ).], [Có sơ đồ nhưng thiếu chi tiết/khó đọc (4–6đ).], [Không đúng hoặc không có sơ đồ (0–3đ).],
  [4.1. An toàn điện (30đ: 6 mục $times$ 5đ)], [Mỗi mục 5đ: Dây nối đúng; mối nối chắc; 100% bọc cách điện; không hở lõi; cố định gọn; thẳng hàng.], [Mỗi mục 4đ: 1 lỗi nhỏ; hơi lỏng 1 điểm; 1–2 mối thiếu bọc; hở 1 điểm nhỏ; khá gọn; khá hợp lý.], [Mỗi mục 2–3đ: $>= 2$ lỗi; lỏng/hở nhiều điểm; dây lỏng lẻo, lộn xộn vừa.], [Mỗi mục 0–1đ: Sai nghiêm trọng; mối nối hở nguy hiểm; không cố định, dây rối.],
  [4.2a. Thử nghiệm (10đ)], [Thử $>= 10$ lần (lặp 3 lần đo), bảng thống kê & biểu đồ rõ, nhận xét sâu (9–10đ).], [Thử $>= 10$ lần, có bảng thống kê nhưng chưa phân tích sâu (7–8đ).], [Chưa đủ 10 lần hoặc bảng ghi thiếu cột (4–6đ).], [Không có thử nghiệm (0–3đ).],
  [4.2b. Tinh chỉnh & Nhật ký AI (5đ)], [Mô tả chi tiết lỗi – cách sửa – kết quả sau chỉnh và lỗi AI đã kiểm chứng (5đ).], [Có mô tả tinh chỉnh và nhật ký AI nhưng chưa đầy đủ (3–4đ).], [Nêu chung chung (1–2đ).], [Không có tinh chỉnh & nhật ký AI (0đ).],
  [4.3a. Vị trí cảm biến (10đ)], [Hợp lý, tối ưu cho hoạt động thu tín hiệu (8–10đ).], [Khá hợp lý (6–7đ).], [Tạm chấp nhận (3–5đ).], [Không hợp lý (0–2đ).],
  [4.3b. Hoạt động cảm biến (10đ)], [Chính xác, độ trễ thấp ($>= 2$ cảm biến tối đa 10đ; 1 cảm biến tối đa 9đ) (8–10đ).], [Hoạt động tốt, hơi trễ (6–7đ).], [Hoạt động nhưng thiếu ổn định (3–5đ).], [Không hoạt động (0–2đ).],
  [5.1a. Nội dung thuyết trình (10đ)], [Đầy đủ 7 nội dung bắt buộc, logic, mạch lạc (9–10đ).], [Thiếu 1–2 nội dung hoặc trình bày chưa sâu (7–8đ).], [Thiếu 3–4 nội dung (4–6đ).], [Thiếu hầu hết nội dung (0–3đ).],
  [5.1b. Kỹ năng thuyết trình (5đ)], [Tự tin, tương tác tốt, giọng rõ ràng, đúng giờ 3'+2' (5đ).], [Ít run, giọng hơi nhỏ (3–4đ).], [Thuyết trình phụ thuộc đọc giấy, thiếu tự tin (1–2đ).], [Không trình bày được (0đ).],
  [5.2. Thiết kế Slide (5đ)], [Slide đẹp, màu – font – bố cục hợp lý, hình/video rõ nét (5đ).], [Đẹp nhưng thiếu đồng nhất nhẹ (3–4đ).], [Đơn giản, thiếu hình ảnh minh chứng (1–2đ).], [Không dùng hoặc quá kém (0đ).],
)

#pagebreak()
== Phụ lục 4. Phiếu học tập cá nhân (Dùng trong Hoạt động Luyện tập Tiết 2)

*Họ và tên học sinh:* ........................................................................ *Lớp:* ................. *Nhóm:* .................

*Hướng dẫn:* Hãy khoanh tròn vào một trong các chữ A, B, C, D để chọn đáp án đúng của các câu từ câu 1 đến câu 6 (Ở câu 4, mô hình của nhóm có chức năng thông minh nào thì chọn câu 4a, 4b, 4c tương ứng; khuyến khích làm cả 3 câu). Ở câu 7, đọc kỹ nội dung ở cột phát biểu và ghi nhận xét Đúng (Đ) hay Sai (S) vào cột tương ứng.

*Câu 1:* Trong đoạn mạch mắc nối tiếp, đại lượng nào sau đây là như nhau tại mọi vị trí?
#grid(columns: (1fr, 1fr), row-gutter: 0.5em,
  [A. Hiệu điện thế.], [B. Điện trở.],
  [C. Cường độ dòng điện.], [D. Công suất tiêu thụ.]
)

*Câu 2:* Trong một số trường hợp, đèn LED cần mắc nối tiếp thêm điện trở bảo vệ vì:
#grid(columns: (1fr, 1fr), row-gutter: 0.5em,
  [A. Để tăng độ sáng.], [B. Để giảm điện áp xuống giá trị định mức của LED.],
  [C. Để tiết kiệm điện.], [D. Để LED sáng nhiều màu.]
)

*Câu 3:* Đoạn mạch nào dưới đây có điện áp trên các nhánh thiết bị bằng nhau?
#grid(columns: (1fr, 1fr), row-gutter: 0.5em,
  [A. Mạch nối tiếp.], [B. Mạch song song.],
  [C. Mạch chỉ có một nhánh.], [D. Mạch hở.]
)

*Câu 4a (Cảm biến ánh sáng):* Khi trong mô hình nhà thông minh, cảm biến ánh sáng bật đèn khi trời tối, hiện tượng điện nào xảy ra?
- A. Ánh sáng càng mạnh thì điện trở của LDR càng tăng.
- B. Ánh sáng càng yếu thì điện trở của LDR càng giảm.
- C. Điện trở của LDR thay đổi theo cường độ ánh sáng: cường độ sáng tăng lên thì điện trở giảm, cường độ sáng yếu đi thì điện trở tăng.
- D. LDR tự phát sáng khi có ánh sáng chiếu vào.

*Câu 4b (Cảm biến nhiệt độ):* Cảm biến nhiệt độ NTC hoạt động dựa trên nguyên tắc nào?
- A. Nhiệt độ tăng thì điện trở của NTC giảm.
- B. Nhiệt độ giảm thì điện trở của NTC giảm.
- C. Nhiệt độ không thay đổi thì điện trở của NTC thay đổi.
- D. Nhiệt độ thay đổi thì điện trở NTC không thay đổi.

*Câu 4c (Cảm biến nước/mưa):* Cảm biến nước hoặc cảm biến độ ẩm hoạt động dựa trên nguyên tắc nào?
- A. Khi có nước thì điện trở của cảm biến tăng, dòng điện chạy qua cảm biến giảm đi.
- B. Khi khô ráo thì điện trở của cảm biến tăng, dòng điện chạy qua cảm biến tăng lên.
- C. Điện trở của cảm biến không đổi kể cả có nước hay không có nước.
- D. Khi có nước điện trở của cảm biến giảm, dòng điện chạy qua cảm biến tăng.

*Câu 5:* Thiết bị nào sau đây bắt buộc phải đấu đúng cực âm (–), dương (+) để tránh hỏng hoặc không hoạt động?
#grid(columns: (1fr, 1fr), row-gutter: 0.5em,
  [A. Bóng đèn sợi đốt.], [B. Công tắc cơ khí.],
  [C. Các linh kiện điện tử như cảm biến, LED, quạt DC.], [D. Dây điện nối mạch.]
)

*Câu 6:* Để mạch hoạt động ổn định và an toàn, nhóm cần:
#grid(columns: (1fr, 1fr), row-gutter: 0.5em,
  [A. Dùng dây điện thật dài.], [B. Không cần vỏ bọc cách điện.],
  [C. Kiểm tra nguồn điện ($< 9"V"$) và mạch nguội trước khi cấp điện.], [D. Tăng điện áp vượt định mức để thiết bị chạy mạnh hơn.]
)

*Câu 7:* Các phát biểu dưới đây đúng hay sai?
#table(
  columns: (1fr, 3cm),
  inset: 5.5pt,
  align: (left, center),
  stroke: 0.5pt + rgb(201, 212, 226),
  fill: tfill,
  [*Phát biểu*], [*Nhận xét Đ/S*],
  [a) Trong mạch điện song song, nếu một thiết bị hỏng (hở mạch) thì các thiết bị ở nhánh khác vẫn hoạt động.], [ ],
  [b) Dây điện hở lõi có thể gây đoản mạch, làm hư hỏng các linh kiện điện tử.], [ ],
  [c) Khi làm mô hình nhà, chỉ cần mạch hoạt động là đủ, không cần kiểm tra tính an toàn khi đấu nối dây.], [ ],
  [d) Điện trở bảo vệ cần mắc song song với bóng đèn LED trước khi lắp vào nguồn $9"V"$.], [ ],
)

#hop[
  *Đáp án chuẩn dành cho Giáo viên:* 1 – C; 2 – B; 3 – B; 4a – C; 4b – A; 4c – D; 5 – C; 6 – C; 7a – Đ; 7b – Đ; 7c – S; 7d – S.
]
