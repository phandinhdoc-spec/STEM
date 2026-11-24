#set page(paper: "a4", margin: (top: 18mm, bottom: 18mm, left: 22mm, right: 20mm), numbering: "1", number-align: center)
#set text(font: ("Libertinus Serif",), size: 11.5pt, lang: "vi")
#set par(justify: true, leading: 0.66em, spacing: 0.85em)
#set heading(numbering: "1.1")
#show heading.where(level: 1): set text(size: 14pt, weight: "bold", fill: rgb(31, 56, 100))
#show heading.where(level: 2): set text(size: 12.2pt, weight: "bold", fill: rgb(36, 59, 83))
#show heading.where(level: 3): set text(size: 11.5pt, weight: "bold", fill: rgb(51, 78, 104))
#show heading.where(level: 1): block(above: 1.3em, below: 0.6em)
#show heading.where(level: 2): block(above: 1em, below: 0.45em)

#let can(s) = box(fill: rgb(255, 243, 224), stroke: 0.5pt + rgb(217, 154, 60), inset: (x: 3.5pt, y: 2pt), radius: 2pt, text(size: 8.6pt, fill: rgb(138, 75, 0), weight: "bold")[CẦN SỐ LIỆU: #s])
#let hop(body) = block(fill: rgb(238, 244, 251), stroke: (left: 2.5pt + rgb(54, 78, 120)), inset: 8pt, radius: 2pt, width: 100%, body)
#let tfill = (x, y) => if y == 0 { rgb(231, 238, 247) } else { white }

#align(center)[
  #text(size: 10.5pt)[UBND PHƯỜNG HẠNH THÔNG] \
  #text(size: 11.5pt, weight: "bold")[TRƯỜNG THCS PHAN VĂN TRỊ] \
  #text(size: 10.5pt)[TỔ KHOA HỌC TỰ NHIÊN – CÔNG NGHỆ]
]
#v(1.4em)
#align(center)[
  #text(size: 18pt, weight: "bold", fill: rgb(31, 56, 100))[BÁO CÁO THỰC HIỆN CHỦ ĐỀ GIÁO DỤC STEM] \
  #v(0.35em)
  #text(size: 14pt, weight: "bold")[“THIẾT KẾ MẠCH ĐIỆN CHO MÔ HÌNH NHÀ THÔNG MINH”] \
  #v(0.35em)
  #text(size: 11.5pt)[Môn Khoa học tự nhiên 9 – Khối 9] \
  #text(size: 11.5pt)[Năm học #can[năm học hiện tại]]
]
#v(1.2em)
#table(
  columns: (4.3cm, 1fr),
  inset: 5pt,
  stroke: 0.5pt + rgb(201, 212, 226),
  fill: tfill,
  [*Giáo viên thực hiện*], [Phan Anh],
  [*Tổ chuyên môn*], [KHTN – Công nghệ],
  [*Đối tượng*], [Học sinh khối 9 – lớp #can[lớp cụ thể]],
  [*Quy mô*], [#can[số nhóm, số học sinh]],
  [*Thời gian*], [Tiết 1 #can[ngày] – 07 ngày tự học tại nhà – Tiết 2 #can[ngày]],
  [*Hình thức*], [Dạy học dự án theo quy trình thiết kế kĩ thuật; tích hợp KHTN 9, Công nghệ 8, Tin học 8, Toán 8, Mĩ thuật],
  [*Đơn vị tính điểm*], [Rubric nhóm 100 điểm + phiếu đánh giá cá nhân và đánh giá chéo],
)
#v(0.6em)
#align(center)[#text(size: 9.5pt, style: "italic")[Bản dựng 1 – khung báo cáo. Mọi ô đánh dấu vuông cam phải được điền từ hồ sơ minh chứng gốc, không suy đoán.]]

#pagebreak()
#outline(title: [MỤC LỤC], depth: 2)
#pagebreak()

= Phần mở đầu

== Lí do chọn chủ đề

Chủ đề “Thiết kế mạch điện cho mô hình nhà thông minh” được xây dựng cho học sinh khối 9, lấy bối cảnh nhà ở đô thị làm đối tượng nghiên cứu. Nội dung tích hợp: KHTN 9 phần Điện học (Bài 11 Điện trở – định luật Ohm; Bài 12 đoạn mạch nối tiếp, song song; Bài 13 năng lượng của dòng điện và công suất điện), Công nghệ 8 (tiêu chuẩn bản vẽ, bản vẽ nhà, mạch điện, mô đun cảm biến), Tin học 8 (cấu trúc điều khiển, gỡ lỗi, biểu đồ và trình chiếu), Toán 8 và Mĩ thuật (hoc-sinh.md, dòng 29–42).

Học sinh phải giải quyết một vấn đề thực: tự động hoá chiếu sáng, quạt và cảnh báo ngập cho mô hình nhà, bằng mạch điện một chiều điện áp thấp an toàn.

== Mục tiêu của báo cáo

+ Ghi lại trung thực quá trình thiết kế, tổ chức và đánh giá chủ đề trong năm học hiện tại.
+ Cung cấp số liệu và danh mục minh chứng để đối chiếu, kiểm chứng, phục vụ đánh giá và lưu hồ sơ.
+ Rút kinh nghiệm và đề xuất điều chỉnh cụ thể cho năm học sau.

== Phạm vi và giới hạn

+ Phạm vi: học sinh khối 9; 02 tiết trên lớp, cách nhau 07 ngày tự học tại nhà.
+ Giới hạn kĩ thuật: chỉ dùng nguồn một chiều dưới 9V; tuyệt đối không đấu điện xoay chiều 220V; không chọn cảm biến khí gas, lửa, cháy nổ (bai-du-thi.pdf, tr.9).
+ Giới hạn số liệu: báo cáo chỉ dùng số liệu thu được trong năm học hiện tại. Ô #can[nội dung] chưa điền thì không được thay bằng số ước lượng.

== Cách đọc báo cáo

#hop[
*Quy ước:* nội dung chữ đã hoàn thiện là phần mô tả thiết kế và tổ chức dạy học, có thể đối chiếu trực tiếp với kế hoạch bài dạy và hướng dẫn học sinh. Các ô #can[nội dung] là chỗ trống bắt buộc, phải lấy từ tệp minh chứng tương ứng ghi ở Phụ lục B. Báo cáo không dùng số liệu của năm học trước.
]

= Tổng quan

== Thông tin chung

Chủ đề thuộc môn Khoa học tự nhiên 9, do giáo viên Phan Anh – tổ KHTN – Công nghệ, Trường THCS Phan Văn Trị thực hiện (bai-du-thi.pdf, tr.1). Số lớp, số nhóm và sĩ số tham gia: #can[theo danh sách nhóm trong thư mục dự án].

== Căn cứ xây dựng chủ đề

+ Chương trình Giáo dục phổ thông 2018 – môn Khoa học tự nhiên 9.
+ Kế hoạch bài dạy xây dựng theo cấu trúc Công văn 5512/BGDĐT-GDTrH (ke-hoach-bai-day.pdf).
+ Kế hoạch giáo dục của nhà trường và tổ KHTN – Công nghệ.
+ Văn bản, thể lệ tổ chức hoạt động giáo dục STEM của năm học: #can[số văn bản, ngày ban hành].

== Mục tiêu cần đạt

#table(
  columns: (3.1cm, 1fr),
  inset: 5pt,
  stroke: 0.5pt + rgb(201, 212, 226),
  fill: tfill,
  [*Nhóm mục tiêu*], [*Nội dung*],
  [Kiến thức], [Giá trị định mức của thiết bị điện; đoạn mạch nối tiếp và song song; năng lượng và công suất điện; cấu trúc mạch điều khiển dùng mô đun cảm biến],
  [Năng lực KHTN], [Nhận thức khoa học tự nhiên; tìm hiểu tự nhiên; vận dụng kiến thức, kĩ năng đã học vào mô hình thật],
  [Năng lực chung], [Tự chủ và tự học; giao tiếp và hợp tác; giải quyết vấn đề và sáng tạo],
  [Năng lực số], [NLS 1.1, 1.2, 1.3, 2.4, 3.1, 4.2, 5.2, 5.3, 6.1, 6.2, 6.3 (ke-hoach-bai-day.pdf, tr.4–5)],
  [Phẩm chất], [Trách nhiệm; cẩn thận; kỉ luật an toàn điện; trung thực khi ghi và báo cáo số liệu thử nghiệm],
)

== Đối tượng, thời gian, địa điểm

Học sinh khối 9 #can[lớp]; thời gian Tiết 1 #can[ngày, tuần]; thời gian Tiết 2 #can[ngày, tuần]; địa điểm: phòng học bộ môn và nhà học sinh trong 07 ngày tự học.

= Cơ sở lí luận và thực tiễn

== Giáo dục STEM và quy trình thiết kế kĩ thuật

Chủ đề vận hành theo năm bước: (1) xác định vấn đề; (2) đề xuất và lựa chọn giải pháp; (3) thiết kế bản vẽ và sơ đồ mạch; (4) chế tạo, thử nghiệm, tinh chỉnh; (5) báo cáo và đánh giá. Thứ tự này cũng là thứ tự các nhóm tiêu chí trong rubric, nhờ đó mỗi bước đều có sản phẩm và minh chứng riêng.

== Năng lực số và ứng dụng AI

Học sinh dùng AI theo công thức prompt bốn thành phần (vai trò – bối cảnh – nhiệm vụ – ràng buộc), ghi lại đầy đủ vào nhật ký AI và buộc phải kiểm chứng mã, sơ đồ do AI gợi ý trên mạch thật trước khi dùng (hoc-sinh.md, dòng 95–120). Đây là điểm cải tiến của năm nay so với hình thức dạy học không có nhật ký AI.

== Điều kiện thực tiễn

Thiết bị của nhà trường và bộ ảnh linh kiện cho phép triển khai đồng thời hai phương án: lập trình vi điều khiển (khuyến khích) và dùng mô đun cảm biến lắp sẵn (chấp nhận, không khuyến khích). Hạn chế: chỉ 02 tiết trên lớp, nên phần chế tạo và thử nghiệm dồn vào 07 ngày tự học, đòi hỏi nhật ký và checklist nộp hồ sơ chặt. Mức độ chênh lệch kĩ năng lập trình giữa các nhóm: #can[kết quả khảo sát đầu vào nếu có].

= Thiết kế và tổ chức dạy học

== Thiết bị, vật tư

#table(
  columns: (0.9cm, 4.6cm, 1fr),
  inset: 5pt,
  align: (center, left, left),
  stroke: 0.5pt + rgb(201, 212, 226),
  fill: tfill,
  [*STT*], [*Thiết bị*], [*Vai trò trong mô hình*],
  [1], [ESP32 DevKit kèm cáp micro-USB], [Bộ điều khiển trung tâm, có Wi-Fi, nhiều chân vào ra],
  [2], [Arduino Uno R3], [Phương án thay thế khi nhóm không dùng ESP32],
  [3], [Arduino Nano], [Phương án gọn cho mô hình nhỏ],
  [4], [Cảm biến nhiệt độ], [Bật quạt khi nhiệt độ vượt ngưỡng],
  [5], [Cảm biến ánh sáng], [Bật đèn khi trời tối],
  [6], [Cảm biến nước hoặc cảm biến mưa], [Cảnh báo ngập chân sàn],
  [7], [Quạt 5V], [Tải động cơ, minh hoạ điều khiển thiết bị],
  [8], [LED xanh và đui đèn E10], [Tải chiếu sáng],
  [9], [Pin 9V hoặc khay pin AA], [Nguồn một chiều điện áp thấp],
  [10], [Dây test, dây điện, breadboard], [Đấu nối, trình diễn mạch],
  [11], [Băng dính cách điện, dây thít, keo nến], [Bọc mối nối, cố định dây an toàn],
)

Số lượng từng thiết bị theo bảng cấp phát: #can[theo bảng thiết bị kèm hình ảnh].

== Tiến trình dạy học

#table(
  columns: (2.6cm, 2.3cm, 1fr, 3.1cm),
  inset: 5pt,
  stroke: 0.5pt + rgb(201, 212, 226),
  fill: tfill,
  [*Giai đoạn*], [*Thời lượng*], [*Nội dung chính*], [*Sản phẩm*],
  [Tiết 1], [Trên lớp], [Chia sẻ mục tiêu; xác định vấn đề; đề xuất và chọn giải pháp; vẽ sơ đồ mạch, bản vẽ vị trí thiết bị; phân công nhiệm vụ; hướng dẫn an toàn điện và cách ghi nhật ký AI], [Bản vẽ thiết kế, sơ đồ mạch, phiếu giao nhiệm vụ],
  [Giữa hai tiết], [07 ngày], [Chế tạo mô hình; đi dây và bọc cách điện; viết mã, nạp chương trình; hiệu chuẩn ngưỡng; thử nghiệm tối thiểu 10 lần và ghi bảng thống kê; hoàn thiện slide bảy phần], [Mô hình chạy được, nhật ký chế tạo, bảng thống kê, nhật ký AI, slide],
  [Tiết 2], [Trên lớp], [Mỗi nhóm báo cáo 03 phút và phản biện 02 phút; chấm theo rubric; nhóm rút kinh nghiệm; thành viên tự đánh giá và đánh giá chéo], [Điểm rubric, phiếu tự đánh giá, báo cáo cải tiến],
)

Thời lượng thực tế từng hoạt động của Tiết 1 và Tiết 2: #can[theo kế hoạch bài dạy đã duyệt].

== Quy tắc an toàn điện

+ Chỉ sử dụng nguồn một chiều điện áp thấp dưới 9V; nghiêm cấm đấu trực tiếp điện xoay chiều 220V vào mô hình.
+ Không chọn cảm biến khí gas, cảm biến lửa hoặc thiết bị có nguy cơ cháy nổ.
+ Mọi mối nối phải xoắn hoặc hàn chắc, sau đó bọc kín bằng băng dính cách điện; không để lõi dây hở.
+ Dây đi sát mép khung, bó gọn bằng dây thít, tránh chèn lên chi tiết chuyển động của quạt.
+ Kiểm tra mạch bằng mắt và đồng hồ đo trước khi cấp nguồn; ngắt nguồn ngay khi có mùi khét hoặc nóng bất thường.

== Quy tắc đạo đức khi sử dụng AI

+ Mỗi nhóm dùng chung một tài khoản của nhóm; không nhập họ tên thật, ngày sinh, địa chỉ, số điện thoại của học sinh.
+ Ghi nhật ký AI đầy đủ: câu lệnh đã hỏi, tóm tắt kết quả, phần đã dùng, phần đã sửa.
+ Mọi đoạn mã và sơ đồ do AI gợi ý phải được kiểm chứng trên mạch thật; nếu AI sai, ghi lại và nêu cách phát hiện.
+ Không nộp sản phẩm sao chép nguyên văn từ AI mà không hiểu và không kiểm thử.

== Bộ công cụ đánh giá

#table(
  columns: (1cm, 6.2cm, 1fr),
  inset: 5pt,
  align: (center, left, left),
  stroke: 0.5pt + rgb(201, 212, 226),
  fill: tfill,
  [*Mã*], [*Phiếu*], [*Mục đích và minh chứng*],
  [01], [Phiếu giao nhiệm vụ và phân công nhóm], [Xác định nhiệm vụ từng thành viên, thời hạn, mức độ hoàn thành],
  [02], [Sổ tay 07 ngày và checklist nộp hồ sơ], [Theo dõi tiến độ và tự kiểm tra đủ hồ sơ trước khi nộp],
  [03], [Nhật ký chế tạo và đi dây an toàn], [Minh chứng quy trình, ảnh mối nối đã bọc cách điện],
  [04], [Phiếu nhật ký thử nghiệm và bảng thống kê], [Số lần thử, số lần đúng, ngưỡng hiệu chuẩn, nhận xét],
  [05], [Nhật ký sử dụng AI], [Câu lệnh, kết quả, phần sửa, bài học],
  [06], [Hướng dẫn slide báo cáo và báo cáo cải tiến], [Cấu trúc bảy phần của slide và nội dung cải tiến sau báo cáo],
  [07], [Phiếu tự đánh giá cá nhân và đánh giá chéo], [Điểm cá nhân và mức độ đóng góp của từng thành viên],
)

== Rubric đánh giá nhóm

Tổng điểm nhóm là 100, chia theo đúng trình tự quy trình thiết kế kĩ thuật. Hai mốc đã xác định rõ: nhóm tiêu chí “Bản vẽ thiết kế và sơ đồ mạch” tối đa 10 điểm; nhóm tiêu chí “Chức năng thông minh” tối đa 10 điểm, trong đó nhóm chỉ có 01 cảm biến hoạt động đạt tối đa 9 điểm, từ 02 cảm biến trở lên mới đạt điểm tối đa (hoc-sinh.md, dòng 197–209).

Trọng số đầy đủ của các nhóm tiêu chí còn lại và mô tả bốn mức Xuất sắc – Khá – Đạt – Chưa đạt: #can[chép đúng từ rubric đã duyệt, không tự đặt lại].

= Kết quả và phân tích số liệu

== Quy mô và mức độ hoàn thành hồ sơ

#table(
  columns: (1.8cm, 1.8cm, 2cm, 3.2cm, 3.2cm),
  inset: 5pt,
  align: (center, center, center, center, center),
  stroke: 0.5pt + rgb(201, 212, 226),
  fill: tfill,
  [*Lớp*], [*Số nhóm*], [*Số học sinh*], [*Nhóm nộp đủ 07 hồ sơ*], [*Nhóm có mô hình chạy ổn định*],
  [ #can[ ] ], [ #can[ ] ], [ #can[ ] ], [ #can[ ] ], [ #can[ ] ],
)

== Kết quả thử nghiệm cảm biến

Mỗi nhóm phải thực hiện tối thiểu 10 lần thử cho mỗi cảm biến và ghi đầy đủ vào phiếu 04. Bảng dưới đây tổng hợp từ bảng thống kê của từng nhóm.

#table(
  columns: (1.6cm, 2.6cm, 2.4cm, 1.6cm, 1.6cm, 1.7cm, 1fr),
  inset: 5pt,
  align: (center, left, center, center, center, center, left),
  stroke: 0.5pt + rgb(201, 212, 226),
  fill: tfill,
  [*Nhóm*], [*Cảm biến*], [*Ngưỡng hiệu chuẩn*], [*Số lần thử*], [*Số lần đúng*], [*Tỉ lệ đúng*], [*Nhận xét, tinh chỉnh*],
  [Nhóm 1], [#can[ ]], [#can[ ]], [#can[ ]], [#can[ ]], [#can[ ]], [#can[ ]],
  [Nhóm 2], [#can[ ]], [#can[ ]], [#can[ ]], [#can[ ]], [#can[ ]], [#can[ ]],
  [Nhóm 3], [#can[ ]], [#can[ ]], [#can[ ]], [#can[ ]], [#can[ ]], [#can[ ]],
  [Nhóm 4], [#can[ ]], [#can[ ]], [#can[ ]], [#can[ ]], [#can[ ]], [#can[ ]],
  [Nhóm 5], [#can[ ]], [#can[ ]], [#can[ ]], [#can[ ]], [#can[ ]], [#can[ ]],
)

Tỉ lệ đúng phải tính bằng công thức lấy số lần đúng chia số lần thử, làm tròn một chữ số thập phân; không ghi theo cảm nhận.

== Kết quả đánh giá theo rubric

#table(
  columns: (1.8cm, 1fr, 1.8cm, 3.4cm),
  inset: 5pt,
  align: (center, left, center, left),
  stroke: 0.5pt + rgb(201, 212, 226),
  fill: tfill,
  [*Nhóm*], [*Điểm từng nhóm tiêu chí*], [*Tổng điểm*], [*Xếp loại, ghi chú*],
  [Nhóm 1], [#can[theo 9_6.xlsx]], [#can[ ]], [#can[ ]],
  [Nhóm 2], [#can[ ]], [#can[ ]], [#can[ ]],
  [Nhóm 3], [#can[ ]], [#can[ ]], [#can[ ]],
  [Nhóm 4], [#can[ ]], [#can[ ]], [#can[ ]],
  [Nhóm 5], [#can[ ]], [#can[ ]], [#can[ ]],
)

Điểm trung bình toàn khối và điểm trung bình từng nhóm tiêu chí phải tính lại bằng công thức từ bảng điểm gốc, không chép từ trí nhớ: #can[điền sau khi có bảng điểm].

== Tự đánh giá cá nhân và đánh giá chéo

Phiếu 07 ghi nhận mức độ hoàn thành nhiệm vụ và mức đóng góp của từng thành viên. Thang điểm cá nhân gồm các tiêu chí TC1 đến TC4; TC3 và TC4 mỗi tiêu chí 25 điểm (hoc-sinh.pdf, tr.10). Trọng số của TC1, TC2 và ngưỡng xếp loại: #can[theo phiếu 07 đã phát].

Kết quả tổng hợp: số phiếu thu được #can[số phiếu trên tổng số học sinh]; số trường hợp chênh lệch giữa tự đánh giá và đánh giá chéo #can[số liệu].

== Nhật ký sử dụng AI

#table(
  columns: (1.8cm, 3.2cm, 3.2cm, 1fr),
  inset: 5pt,
  align: (center, center, center, left),
  stroke: 0.5pt + rgb(201, 212, 226),
  fill: tfill,
  [*Nhóm*], [*Số lượt hỏi AI*], [*Số lỗi AI phát hiện và đã sửa*], [*Minh chứng kèm theo*],
  [Nhóm 1], [#can[ ]], [#can[ ]], [#can[ ]],
  [Nhóm 2], [#can[ ]], [#can[ ]], [#can[ ]],
  [Nhóm 3], [#can[ ]], [#can[ ]], [#can[ ]],
  [Nhóm 4], [#can[ ]], [#can[ ]], [#can[ ]],
  [Nhóm 5], [#can[ ]], [#can[ ]], [#can[ ]],
)

== Phân tích và nhận xét

Ba nội dung bắt buộc phải viết kèm số liệu, không viết chung chung:

+ Mức độ đạt mục tiêu: tỉ lệ nhóm hoàn thành mô hình và tỉ lệ nhóm đạt từ mức Đạt trở lên #can[số liệu].
+ Quan hệ giữa số lần thử và độ ổn định: so sánh tỉ lệ đúng của nhóm thử ít nhất với nhóm thử nhiều nhất #can[số liệu].
+ Tiêu chí yếu nhất toàn khối và nguyên nhân rút ra từ nhật ký, phiếu tự đánh giá #can[tiêu chí và số liệu].

= Đánh giá, bài học kinh nghiệm, đề xuất

== Ưu điểm

Sản phẩm gắn với đời sống, học sinh phải dùng kiến thức điện học để chọn nguồn, tính dòng và giải thích nguyên lí. Hồ sơ minh chứng tách rời từng khâu nên có thể kiểm chứng chéo. Việc buộc ghi nhật ký AI và kiểm chứng lại mã đã hạn chế tình trạng sao chép máy móc.

== Hạn chế

#can[điền từ quan sát và số liệu thực tế: nhóm chưa hoàn thành, lỗi kĩ thuật lặp lại, thời gian].

== Bài học kinh nghiệm

+ Chốt ngưỡng hiệu chuẩn và cách ghi số liệu ngay từ Tiết 1, tránh nhóm ghi bảng thống kê vào ngày cuối.
+ Kiểm tra giữa tuần qua ảnh mối nối đã bọc cách điện và ảnh màn hình nhật ký AI.
+ Rubric phải được công bố trước khi học sinh bắt tay thiết kế.

== Đề xuất cho năm học sau

#can[chỉ nêu đề xuất sau khi có số liệu phân tích, tránh đề xuất trùng với ưu điểm đã đạt].

= Kết luận

Chủ đề đã được triển khai đúng quy trình thiết kế kĩ thuật, có sản phẩm, có thử nghiệm và có hồ sơ minh chứng tương ứng từng tiêu chí. Kết quả định lượng: #can[số nhóm, tỉ lệ hoàn thành, điểm trung bình] – chỉ điền sau khi đối chiếu bảng điểm gốc và bảng thống kê thử nghiệm.

= Tài liệu tham khảo

+ Bộ Giáo dục và Đào tạo, Chương trình Giáo dục phổ thông 2018 – môn Khoa học tự nhiên.
+ Công văn 5512/BGDĐT-GDTrH về xây dựng kế hoạch bài dạy.
+ Kế hoạch bài dạy chủ đề “Thiết kế mạch điện cho mô hình nhà thông minh” (ke-hoach-bai-day.pdf).
+ Tài liệu hướng dẫn học sinh của chủ đề (hoc-sinh.md; hoc-sinh.pdf).
+ Văn bản, thể lệ tổ chức hoạt động giáo dục STEM của năm học: #can[số kí hiệu, ngày].

#pagebreak()
= Phụ lục

== Phụ lục A. Danh mục minh chứng

#table(
  columns: (1cm, 5.4cm, 1fr),
  inset: 5pt,
  align: (center, left, left),
  stroke: 0.5pt + rgb(201, 212, 226),
  fill: tfill,
  [*Mã*], [*Loại minh chứng*], [*Đường dẫn hoặc ghi chú*],
  [A1], [Bản vẽ thiết kế, sơ đồ mạch của từng nhóm], [#can[đường dẫn trong thư mục nhóm]],
  [A2], [Nhật ký chế tạo và ảnh mối nối đã bọc cách điện], [#can[đường dẫn]],
  [A3], [Bảng thống kê thử nghiệm tối thiểu 10 lần mỗi cảm biến], [#can[đường dẫn]],
  [A4], [Nhật ký sử dụng AI của từng nhóm], [#can[đường dẫn]],
  [A5], [Slide báo cáo bảy phần, video chạy thử], [#can[đường dẫn]],
  [A6], [Phiếu tự đánh giá cá nhân và đánh giá chéo], [#can[đường dẫn]],
  [A7], [Bảng điểm rubric tổng hợp], [#can[đường dẫn tệp bảng điểm]],
)

== Phụ lục B. Bảng kiểm số liệu

#table(
  columns: (1cm, 5cm, 4.2cm, 1fr),
  inset: 5pt,
  align: (center, left, left, center),
  stroke: 0.5pt + rgb(201, 212, 226),
  fill: tfill,
  [*STT*], [*Số liệu cần điền*], [*Lấy từ*], [*Trạng thái*],
  [1], [Năm học, lớp, sĩ số], [Kế hoạch giáo dục nhà trường], [Trống],
  [2], [Số nhóm thực hiện], [Danh sách nhóm trong thư mục dự án], [Trống],
  [3], [Ngày dạy Tiết 1 và Tiết 2], [Kế hoạch bài dạy đã duyệt], [Trống],
  [4], [Số nhóm nộp đủ 07 hồ sơ], [Phiếu 02 của từng nhóm], [Trống],
  [5], [Số lần thử, số lần đúng từng cảm biến], [Phiếu 04 và bảng thống kê nhóm], [Trống],
  [6], [Điểm rubric từng nhóm], [Tệp bảng điểm tổng hợp], [Trống],
  [7], [Điểm TC1 đến TC4 của từng học sinh], [Phiếu 07 của từng học sinh], [Trống],
  [8], [Số lượt hỏi AI, số lỗi AI đã sửa], [Phiếu 05 của từng nhóm], [Trống],
  [9], [Điểm trung bình, tỉ lệ đạt từ mức Đạt], [Tính lại từ bảng điểm gốc], [Trống],
  [10], [Link Drive minh chứng của lớp], [Thư mục minh chứng đã chia sẻ], [Trống],
  [11], [Số văn bản, thể lệ của năm học], [Văn bản chỉ đạo], [Trống],
)

#hop[
*Nguyên tắc:* mọi ô trong bảng kiểm chỉ được đánh dấu hoàn thành khi số liệu đã đối chiếu với tệp gốc và tính lại bằng công thức. Báo cáo chưa đủ điều kiện nộp khi còn ô ở trạng thái Trống.
]
