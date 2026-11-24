// =============================================================================
// BÀI DỰ THI STEM - THIẾT KẾ MẠCH ĐIỆN CHO MÔ HÌNH NHÀ THÔNG MINH (KHTN 9)
// Biên dịch:  typst compile bai-du-thi.typ        (hoặc: typst watch bai-du-thi.typ)
// Chỉ NỘP 1 file PDF duy nhất. Ảnh/video/slide của học sinh để trên Google Drive.
//
// CÁCH DÙNG: mọi chỗ trống là biến `#let ... = none` ở PHẦN 0.
//   - Có dữ liệu → thay `none` bằng nội dung / đường dẫn ảnh / link Drive.
//   - Chưa có → PDF hiện khung cam "CHƯA CÓ ..." để nhìn là biết còn thiếu.
// Bố cục bài (bám sát cấu trúc hồ sơ chuẩn):
//   PHẦN I. Tổng quan · PHẦN II. Chuẩn bị của giáo viên · PHẦN III. Kế hoạch dạy học
//   (nhúng ke-hoach-bai-day.typ) · PHẦN IV. Hướng dẫn học sinh · PHỤ LỤC 1-5
// Mục lục file: 0. BIẾN & PLACEHOLDER · 1. HÀM TRỢ GIÚP · 2. DỮ LIỆU RUBRIC · 3. NỘI DUNG BÀI
// =============================================================================
#import "@local/mypackage:0.1.0": *
#import "@preview/tiaoma:0.3.0": qrcode
#import "ke-hoach-bai-day.typ": khbd-info, nls-khung

// =============================================================================
// 0. BIẾN & PLACEHOLDER
// =============================================================================

// ---- A. THÔNG TIN GIÁO VIÊN / TRƯỜNG --------------------------------------
#let ten-gv = khbd-info.gv
#let truong = khbd-info.truong
#let nam-hoc = "2026 - 2027"
#let ngay-nop = "23/10/2026"
#let ten-de-tai = khbd-info.ten-bai

// ---- B. TƯ LIỆU HỌC SINH (đường dẫn trong assets/, ví dụ "assets/nhom1-mohinh.jpg") ----
#let so-hs-93 = none            // sĩ số lớp 9.3
#let so-hs-96 = none            // sĩ số lớp 9.6
#let so-nhom-93 = none          // số nhóm lớp 9.3
#let so-nhom-96 = none          // số nhóm lớp 9.6
#let anh-san-pham-1 = none      // sản phẩm tiêu biểu 1 (ảnh mô hình hoàn chỉnh)
#let anh-san-pham-2 = none      // sản phẩm tiêu biểu 2
#let anh-so-do-mach = none      // sơ đồ mạch tiêu biểu (Tinkercad/Wokwi)
#let anh-code = none            // ảnh code Arduino tiêu biểu
#let anh-bang-thu-nghiem = none // ảnh bảng thống kê ≥ 10 lần thử của một nhóm
#let anh-slide-hs = none        // ảnh một trang slide báo cáo của học sinh
#let anh-nhat-ky-ai = none      // ảnh nhật ký AI của một nhóm (prompt - kết quả - kiểm chứng - điều chỉnh)
#let anh-so-sanh-ai = none      // ảnh so sánh kết quả của hai công cụ AI (hoặc AI với tài liệu)
#let anh-drive-nhom = none      // ảnh cây thư mục Drive của một nhóm (NLS 1.3)
#let anh-tinkercad = none       // ảnh sơ đồ mô phỏng Tinkercad/Wokwi (NLS 3.4)

// ---- C. ẢNH TIẾT DẠY (GV chụp) ------------------------------------------------
#let anh-chuan-bi-1 = none      // sản phẩm mẫu của GV / phiếu giao nhiệm vụ
#let anh-chuan-bi-2 = none
#let anh-t1-1 = none            // Tiết 1: toàn cảnh lớp (HĐ1)
#let anh-t1-2 = none            // Tiết 1: nhóm thảo luận, so sánh giải pháp (HĐ2)
#let anh-t1-3 = none            // Tiết 1: nhóm phác thảo thiết kế (HĐ3)
#let anh-giua-1 = none          // Giữa 2 tiết: ảnh quá trình làm (khung nhà, đi dây)
#let anh-giua-2 = none          // Giữa 2 tiết: ảnh thử nghiệm / hiệu chuẩn
#let anh-giua-3 = none          // Giữa 2 tiết: ảnh GV hỗ trợ nhóm (tin nhắn lớp...)
#let anh-t2-1 = none            // Tiết 2: toàn cảnh trưng bày
#let anh-t2-2 = none            // Tiết 2: nhóm báo cáo
#let anh-t2-3 = none            // Tiết 2: phản biện / chấm rubric
#let anh-sau-1 = none           // Sau tiết 2: bảng điểm tổng hợp
#let anh-sau-2 = none           // Sau tiết 2: khảo sát cảm nhận học sinh

// ---- D. LINK GOOGLE DRIVE (rút gọn, ví dụ bit.ly/...) ---------------------------
#let link-drive-goc = "https://drive.google.com/drive/folders/1fNanT-uaCxVtXuZktyXAvwPZlcg4T8C5"
#let link-chuan-bi = "https://drive.google.com/drive/folders/1jixF_4oR70zaANNC7JtmCCon-HH5pUhp"
#let link-tiet1 = "https://drive.google.com/drive/folders/1CZlD1NKuBR7StCYzlbIlZon6zCQEICjC"
#let link-giua = "https://drive.google.com/drive/folders/19Rmt5zc8nq7EmahMK9FKf4MRxMX3E0nR"
#let link-tiet2 = "https://drive.google.com/drive/folders/1_2e5nYbp3XYZD0obNHa9_1RLU6dhC2Tt"
#let link-sau = "https://drive.google.com/drive/folders/1JOePgPFWoyRNVKOXtSuPE4H4IEmmg3Rw"

// ---- E. KẾT QUẢ (số liệu sau Tiết 2) ------------------------------------------
#let diem-tb-93 = none          // điểm trung bình các nhóm lớp 9.3 (/100)
#let diem-tb-96 = none          // điểm trung bình các nhóm lớp 9.6 (/100)
#let so-nhom-1-cam-bien = none  // số nhóm có đúng 1 cảm biến
#let so-nhom-2-cam-bien = none  // số nhóm có từ 2 cảm biến trở lên
#let so-nhom-arduino = none     // số nhóm chọn Arduino
#let so-nhom-module = none      // số nhóm chọn module cảm biến
#let ti-le-thanh-cong = none    // tỉ lệ % kích hoạt thành công trung bình trong thử nghiệm
#let so-nhom-an-toan-dat = none // số nhóm đạt tối đa tiêu chí an toàn điện
#let ket-qua-khao-sat = none    // ví dụ: "92% học sinh thích học theo dự án" (Google Form)
#let so-nhom-dung-ai = none     // số nhóm có nhật ký AI đầy đủ
#let so-nhom-phat-hien-loi-ai = none // số nhóm phát hiện AI trả lời sai/không chạy được và đã sửa
#let nls-dat-tb = none          // tỉ lệ học sinh đạt yêu cầu NLS mức L8-L9 (từ phiếu và slide)

// ---- F. NHẬN XÉT / PHẢN TƯ CỦA GIÁO VIÊN ---------------------------------------
#let uu-diem = none             // ưu điểm của bài dạy
#let han-che = none             // hạn chế và nguyên nhân
#let dieu-chinh = none          // điều chỉnh sau lớp đầu tiên (chỉ ghi điều có thật)
#let huong-phat-trien = none    // hướng phát triển / nhân rộng

// =============================================================================
// 1. HÀM TRỢ GIÚP
// =============================================================================

// Khung cam báo "chưa có" — hiện trong PDF để không bỏ sót.
#let thieu(ten) = box(
  fill: pal.orange-mist, stroke: (paint: pal.orange, dash: "dashed", thickness: 0.7pt),
  inset: (x: 5pt, y: 2pt), radius: 3pt,
  text(size: 0.85em, fill: pal.orange)[CHƯA CÓ: #ten],
)
#let co(v, ten) = if v == none { thieu(ten) } else { v }

// Hình có chú thích; nếu chưa có ảnh thì hiện khung giữ chỗ.
#let hinh(v, ten, cap, w: 100%, h: 4.2cm) = figure(
  if v == none {
    rect(width: w, height: h, fill: pal.mist, stroke: (paint: pal.border, dash: "dashed"), radius: 4pt)[
      #align(center + horizon, text(fill: pal.blue, size: 0.9em)[CHƯA CÓ ẢNH: #ten])
    ]
  } else { image(v, width: w) },
  caption: cap,
  kind: image,
)

// Lưới ảnh: items = ((biến, "tên", "chú thích"), ...)
#let luoi-anh(items, cols: 3) = grid(
  columns: range(cols).map(_ => 1fr), column-gutter: 8pt, row-gutter: 6pt,
  ..items.map(it => hinh(it.at(0), it.at(1), it.at(2), h: 3.4cm)),
)

// Mã QR + link; nếu chưa có link thì hiện khung giữ chỗ.
#let qr(link, ten, size: 2.3cm) = if link == none {
  box(width: size, height: size, fill: pal.orange-mist, stroke: (paint: pal.orange, dash: "dashed"), radius: 3pt)[
    #align(center + horizon, text(size: 0.7em, fill: pal.orange)[CHƯA CÓ LINK #linebreak() #ten])
  ]
} else { qrcode(link, width: size) }

// Bảng chuẩn: tiêu đề navy nhạt, đường kẻ nhẹ.
#let bang(cols, head, ..rows, aligns: auto) = table(
  columns: cols, inset: 5pt, stroke: 0.5pt + pal.border,
  align: if aligns == auto { left + horizon } else { aligns },
  fill: (_, y) => if y == 0 { pal.navy.lighten(88%) } else if calc.even(y) { pal.mist } else { white },
  table.header(..head.map(h => text(weight: "bold", fill: pal.navy, h))),
  ..rows.pos(),
)

// Ô checklist chữ (không phụ thuộc font ký hiệu).
#let muc(body) = block(above: 3pt, below: 3pt, grid(
  columns: (auto, 1fr), column-gutter: 5pt,
  box(width: 8pt, height: 8pt, stroke: 0.8pt + pal.blue, radius: 1pt, baseline: 1pt), body,
))

// Thẻ một giai đoạn minh chứng: tiêu đề, mô tả, danh sách lưu, QR, ảnh.
#let the-minh-chung(so, ten, mo-ta, danh-sach, link, anh) = block(breakable: false, below: 12pt)[
  #grid(
    columns: (1fr, auto), column-gutter: 10pt,
    [
      #tag([GIAI ĐOẠN #so], fill: pal.blue) #h(6pt) #text(weight: "bold", fill: pal.navy, ten)
      #v(2pt)
      #text(style: "italic", mo-ta)
      #v(3pt)
      #for d in danh-sach { muc(d) }
    ],
    align(center)[#qr(link, ten) #v(2pt) #text(size: 0.75em, fill: pal.blue)[Quét mã mở Drive]],
  )
  #v(4pt)
  #luoi-anh(anh)
  #line(length: 100%, stroke: 0.6pt + pal.border)
]

// =============================================================================
// 2. DỮ LIỆU RUBRIC (tổng bắt buộc = 100, nếu sai file sẽ báo lỗi khi biên dịch)
// Mỗi nhóm: (tên nhóm, ((tiêu chí, điểm, yêu cầu mức tối đa), ...))
// =============================================================================
#let rubric = (
  ("1. Xác định vấn đề và đề xuất giải pháp", (
    ("Xác định vấn đề kĩ thuật", 5, "Nêu rõ bối cảnh, yêu cầu kĩ thuật của ngôi nhà thông minh."),
    ("Đề xuất giải pháp", 5, "Từ 2 giải pháp trở lên, có bảng so sánh ưu - nhược điểm và lập luận chọn phương án."),
  )),
  ("2. Kết cấu mô hình nhà", (
    ("Độ bền kết cấu", 3, "Khung chắc, không rung lắc hay bung tách khi di chuyển."),
    ("Thẩm mĩ hình thức", 2, "Bố cục hợp lí, sạch đẹp."),
  )),
  ("3. Bản vẽ thiết kế và sơ đồ mạch", (
    ("Sơ đồ mạch và bản vẽ vị trí thiết bị", 10, "Sơ đồ mô phỏng Tinkercad/Wokwi (hoặc bản vẽ nguyên lí với nhóm module); thể hiện nguồn, tải, chân cắm; ký hiệu rõ ràng."),
  )),
  ("4. Chế tạo và thử nghiệm", (
    ("An toàn điện: đấu đúng kĩ thuật", 5, "Không nối tắt, đúng cực, đúng điện áp định mức."),
    ("An toàn điện: mối nối và cố định dây", 5, "Mối nối chắc, dây cố định không bung."),
    ("An toàn điện: bọc cách điện, chống hở mạch", 5, "Dùng cút nối/co nhiệt/băng keo cách điện kín."),
    ("An toàn điện: không hở lõi đồng", 5, "Không còn lõi kim loại trần."),
    ("An toàn điện: đi dây ngăn nắp", 5, "Dây bó gọn, thẳng hàng trong khung."),
    ("Thử nghiệm ít nhất 10 lần và bảng thống kê", 10, "Số liệu trung thực, có tỉ lệ thành công và phân tích."),
    ("Nhật ký tinh chỉnh, sửa lỗi", 5, "Mô tả lỗi và giải pháp (chỉnh ngưỡng, sửa code, đổi vị trí cảm biến)."),
    ("Vị trí cảm biến hợp lí", 5, "Đặt đúng chỗ so với chức năng của khu vực trong nhà."),
    ("Cảm biến nhạy, độ trễ thấp", 10, "Kích hoạt chính xác, ổn định tải đầu ra."),
  )),
  ("5. Chức năng thông minh (số cảm biến)", (
    ("Số cảm biến hoạt động đúng", 10, "Tối thiểu 1 cảm biến (tối đa 9 điểm). Từ 2 cảm biến trở lên hoạt động đúng: 10 điểm."),
  )),
  ("6. Báo cáo và thuyết trình", (
    ("Nội dung báo cáo (đủ 7 phần)", 5, "Danh sách nhóm, vấn đề, giải pháp, nguyên lí, nhật ký, bài học, hướng phát triển."),
    ("Kĩ năng trình bày và phản biện", 3, "Tự tin, đúng thời gian 3 + 2 phút, trả lời phản biện tốt."),
    ("Thiết kế slide", 2, "Rõ ràng, chữ lớn, ảnh/video thực tế."),
  )),
)
#let tong-diem = rubric.map(g => g.at(1).map(m => m.at(1)).sum()).sum()
#assert(tong-diem == 100, message: "Rubric phải đủ 100 điểm, hiện là " + str(tong-diem))

// =============================================================================
// 3. NỘI DUNG BÀI
// =============================================================================
#show: home-doc.with(
  running-title: [STEM · KHTN 9 · NHÀ THÔNG MINH],
  teacher: [GV: #ten-gv],
  margin: (x: 20mm, top: 18mm, bottom: 16mm),
  leading: 0.62em,
  spacing: 6pt,
)
#set table(stroke: 0.5pt + pal.border)
#set figure(gap: 5pt)
#show figure.caption: set text(size: 0.85em, fill: pal.blue)

// ---- BÌA ---------------------------------------------------------------------
#grid(columns: (1fr, 1fr), column-gutter: 8pt,
  align(center, text(weight: "bold", size: 0.9em)[UBND PHƯỜNG HẠNH THÔNG \ TRƯỜNG THCS PHAN VĂN TRỊ]),
  align(center, text(weight: "bold", size: 0.9em)[CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM \ Độc lập - Tự do - Hạnh phúc]),
)
#v(4pt)
#cover(
  title: [THIẾT KẾ MẠCH ĐIỆN CHO MÔ HÌNH NHÀ THÔNG MINH],
  subject: [DẠY HỌC TÍCH HỢP - STEM · KHOA HỌC TỰ NHIÊN 9],
  subtitle: [Điện học · Tích hợp Công nghệ, Toán, Tin học, Mỹ thuật],
  topics: ([THIẾT KẾ], [CHẾ TẠO], [THỬ NGHIỆM], [BÁO CÁO]),
  series: [Bộ sách Kết nối tri thức với cuộc sống],
)
#v(10pt)
#bang((auto, 1fr), ([Hạng mục], [Thông tin]),
  [*Giáo viên*], [#ten-gv],
  [*Đơn vị*], [Trường #truong · Tổ #khbd-info.to],
  [*Đối tượng*], [Học sinh lớp #khbd-info.lop],
  [*Thời lượng*], [#khbd-info.thoi-luong],
  [*Năm học*], [#nam-hoc],
  [*Ngày nộp*], [#ngay-nop],
)
#v(6pt)
#note([HỒ SƠ DRIVE —], grid(columns: (1fr, auto), column-gutter: 10pt, [Ảnh, video, slide, code và nhật ký của học sinh lưu trên Google Drive; mỗi giai đoạn minh chứng ở Phụ lục 1 có mã QR riêng. Mã bên cạnh mở thư mục gốc.], qr(link-drive-goc, "Thư mục gốc", size: 2cm)), color: pal.cyan)

#pagebreak()
#outline(title: [MỤC LỤC], depth: 2)
#pagebreak()

// =============================================================================
// PHẦN I. TỔNG QUAN
// =============================================================================
= PHẦN I. TỔNG QUAN
== 1. Thông tin giáo viên
#bang((auto, 1fr), ([Hạng mục], [Thông tin]),
  [*Họ và tên*], [PHAN ANH],
  [*Sinh năm / Giới tính*], [1986 / Nam],
  [*Bộ môn đăng ký dự thi*], [Khoa học tự nhiên],
  [*Thâm niên công tác*], [11 năm],
  [*Đơn vị*], [Trường THCS Phan Văn Trị],
  [*Số điện thoại*], [0989446219],
)

== 2. Tên và tóm lược nội dung chủ đề
#bang((auto, 1fr), ([Hạng mục], [Nội dung]),
  [*Tên chủ đề*], [“Thiết kế mạch điện cho mô hình nhà thông minh”],
  [*Tóm tắt*], [Sau khi học xong Chủ đề 3: Điện, học sinh vận dụng kiến thức về mạch nối tiếp, mạch song song, giá trị định mức, kết hợp kiến thức Toán, Công nghệ, Tin học, Mỹ thuật để thiết kế, chế tạo và thử nghiệm đường điện có cảm biến cho mô hình nhà. Học sinh đóng vai kĩ sư: đặt vấn đề, so sánh giải pháp, thiết kế - chế tạo - thử nghiệm - báo cáo.],
  [*Mức độ*], [Dự án đơn giản],
  [*Thời lượng*], [02 tiết trên lớp và 01 tuần thực hiện ngoài lớp],
  [*Không gian*], [Lớp học, ngoài lớp học],
)

*Vị trí các kiến thức tích hợp:*
#bang((auto, 1fr), ([Môn], [Nội dung]),
  [*KHTN 6*], [Chủ đề Các phép đo (đo chiều dài, nhiệt độ).],
  [*KHTN 9*], [Bài 9 Đoạn mạch nối tiếp; Bài 10 Đoạn mạch song song; Bài 11 Năng lượng điện, công suất điện.],
  [*Toán 8*], [Chương 4 Một số yếu tố thống kê: Bài 1 Thu thập và phân loại dữ liệu, Bài 3 Phân tích dữ liệu.],
  [*Công nghệ 8*], [Bài 3 Bản vẽ kĩ thuật; Bài 10 Mạch điện điều khiển; Bài 11 Thực hành lắp mạch điện điều khiển đơn giản.],
  [*Công nghệ 6*], [Bài 3 Ngôi nhà thông minh.],
  [*Tin học 8*], [Chủ đề 5 (cấu trúc điều khiển, lập trình vi điều khiển Arduino).],
  [*Mỹ thuật 6*], [Chủ đề Vật liệu hữu ích, Bài 3 Mô hình ngôi nhà 3D.],
)

== 3. Mục tiêu cần đạt
#bang((auto, 1fr), ([Nhóm], [Nội dung]),
  [*Kiến thức*], [Biết các giá trị định mức của thiết bị điện; nêu được nguyên lí của mạch nối tiếp, mạch song song; vận dụng định luật Ohm, công suất để tính toán và thiết kế mạch.],
  [*Năng lực chung*], [*Tự chủ và tự học:* chủ động, tích cực thực hiện nhiệm vụ, tư duy độc lập. *Giao tiếp và hợp tác:* thực hành theo nhóm, thảo luận, trao đổi và chia sẻ ý tưởng. *Giải quyết vấn đề và sáng tạo:* đề xuất vấn đề, nêu giả thuyết, lập kế hoạch, sáng tạo nhiều cách giải quyết tình huống về đoạn mạch nối tiếp, song song.],
  [*Năng lực KHTN*], [Lắp được mạch điện; nêu được giá trị định mức của thiết bị điện, dùng giá trị định mức để chọn thiết bị phù hợp, an toàn và tiết kiệm; thiết kế sơ đồ nguyên lí, đo đạc và hiệu chuẩn mạch cảm biến.],
  [*Năng lực số*], [Mức L8-L9 theo Thông tư 02/2025/TT-BGDĐT: NLS 1.1, 1.2 (tìm kiếm, đánh giá thông tin về cảm biến); 1.3 (lưu trữ, tổ chức minh chứng); 2.4 (hợp tác); 3.1, 3.4 (tạo nội dung số, lập trình Arduino); 4.2 (bảo vệ dữ liệu cá nhân); 5.1, 5.2, 5.3 (giải quyết vấn đề); 6.1, 6.2, 6.3 (ứng dụng AI). Địa chỉ tích hợp và minh chứng: Phụ lục 2.],
  [*Phẩm chất*], [Tham gia tích cực hoạt động nhóm; cẩn thận, trung thực, kỉ luật an toàn điện; hứng thú khám phá khoa học tự nhiên.],
)

// =============================================================================
// PHẦN II. CHUẨN BỊ CỦA GIÁO VIÊN
// =============================================================================
= PHẦN II. CHUẨN BỊ CỦA GIÁO VIÊN
== 1. Nguyên vật liệu, thiết bị cần sử dụng
- Máy chiếu, máy tính; điện thoại kết nối Irun Webcam với máy tính (chiếu bản vẽ của nhóm); 10 tờ giấy A4 trắng.
- Phiếu hướng dẫn nghiên cứu; phiếu nhận xét, đánh giá; phiếu học tập.
- *Link Google Drive 1:* video, bài viết hướng dẫn học sinh; file tiêu chí; hướng dẫn nộp sản phẩm; đường dẫn tới các công cụ AI và prompt gợi ý.
- *Link Google Drive 2:* thư mục trống để các nhóm nộp sản phẩm.

*Chuẩn bị cho các nhóm chọn lập trình (Phương án 1):* mỗi nhóm chọn *một trong ba vi điều khiển* dưới đây (6 bộ: mỗi loại 2 bộ), cùng phần linh kiện chung.
#let ha(f) = image("assets/" + f, height: 1.7cm)
#bang((auto, 1.5fr, auto, auto, 1.5fr), ([STT], [Tên thiết bị], [Hình ảnh], [Số lượng], [Ghi chú]),
  [1a], [Arduino Uno R3 (kèm cáp USB-B)], [#ha("uno.png")], [2], [Bo chuẩn, nhiều tài liệu nhất; mức logic 5V.],
  [1b], [Arduino Nano (chip CH340, kèm cáp mini-USB)], [#ha("nano.png")], [2], [Nhỏ gọn, lắp vừa khung nhà; giá rẻ hơn Uno nhiều; cùng mức logic 5V, dùng chung code với Uno.],
  [1c], [ESP32 DevKit (kèm cáp micro-USB)], [#ha("esp32.png")], [2], [Mạnh hơn, có Wi-Fi/Bluetooth (mở rộng điều khiển qua điện thoại); giá rẻ; mức logic 3.3V, đọc cảm biến analog ở chân ADC1 (GPIO 32-39).],
  [2], [Cáp truyền dữ liệu (đúng loại cổng của bo)], [#ha("cap-usb.png")], [6], [Dùng nạp code và cấp nguồn 5V từ máy tính.],
  [3], [Pin vuông 9V, đế pin, cáp cấp nguồn], [#ha("pin-9v.png")], [6], [Cấp nguồn khi chạy độc lập (Uno, Nano).],
  [4], [Cút nối dây 2 - 2], [#ha("cut-2-2.png")], [12], [Dự phòng; nối dây an toàn, không hở lõi.],
  [5], [Cút nối dây 2 - 6], [#ha("cut-2-6.png")], [2], [Dự phòng; chia nguồn/GND chung.],
  [6], [Đui đèn E10], [#ha("dui-e10.png")], [2], [],
  [7], [Đèn LED “trái chanh”], [#ha("led-chanh.png")], [2], [2 màu khác nhau.],
  [8], [Quạt 5V], [#ha("quat-5v.png")], [1], [Đầu ra cho cảm biến nhiệt độ.],
  [9], [Dây test 20 cm], [#ha("day-test.png")], [12], [6 bó đực - đực, 6 bó đực - cái.],
  [10], [Cảm biến nước], [#ha("cb-nuoc.png")], [1], [Báo ngập, triều cường.],
  [11], [Cảm biến ánh sáng (LDR)], [#ha("cb-anh.png")], [1], [Tự bật đèn khi trời tối.],
  [12], [Cảm biến nhiệt độ], [#ha("cb-nhiet.png")], [1], [Bật quạt khi vượt ngưỡng.],
)
_Không dùng cảm biến khí gas khi thử nghiệm ở nhà._ Học sinh tự chuẩn bị breadboard và điện trở (10 kΩ, điện trở bảo vệ LED) theo thiết kế của nhóm.

#pagebreak(weak: true)
*Gợi ý chọn vi điều khiển:*
#bang((auto, 1fr, 1fr, 1fr), ([], [Arduino Uno R3], [Arduino Nano], [ESP32 DevKit]),
  [*Kích thước*], [Lớn, cần chỗ trong khung nhà.], [Rất nhỏ, gắn breadboard.], [Nhỏ, gắn breadboard.],
  [*Mức logic / ADC*], [5V; ADC 10 bit (0-1023).], [5V; ADC 10 bit (0-1023).], [3.3V; ADC 12 bit (0-4095), dùng chân ADC1.],
  [*Giá*], [Cao nhất trong ba loại.], [Rẻ hơn Uno nhiều.], [Rẻ, nhiều tính năng nhất.],
  [*Phù hợp*], [Nhóm mới học, cần tài liệu mẫu.], [Nhóm cần gọn, tiết kiệm.], [Nhóm muốn thêm Wi-Fi, điều khiển từ xa (2 cảm biến trở lên).],
  [*Lưu ý*], [Ngưỡng code theo thang 0-1023.], [Ngưỡng code theo thang 0-1023.], [Ngưỡng code theo thang 0-4095; không cấp 5V vào chân tín hiệu.],
)

*Chuẩn bị cho các nhóm chọn module của môn Công nghệ 8 (Phương án 2):* module cảm biến độ ẩm, nhiệt độ, ánh sáng (có rơ-le hoặc LM393, biến trở vi chỉnh), pin.

*So sánh hai phương án công nghệ:*
#bang((auto, 1fr, 1fr), ([], [Phương án 1: Lập trình (Arduino Uno R3, Arduino Nano hoặc ESP32)], [Phương án 2: Module cảm biến lắp sẵn]),
  [*Định hướng*], [*Khuyến khích* — học sinh đã có nền tảng lập trình từ STEM lớp 6, 7, 8.], [Được chấp nhận (kiến thức Công nghệ 8) nhưng *không khuyến khích*.],
  [*Yêu cầu*], [Sơ đồ trên Tinkercad/Wokwi (Wokwi có cả Uno, Nano, ESP32); code có `setup()`/`loop()`, chú thích tiếng Việt; hiệu chuẩn ngưỡng bằng Serial Monitor.], [Bản vẽ vị trí và sơ đồ đi dây; chỉnh biến trở vi chỉnh đạt ngưỡng mong muốn.],
)

#note([QUY ĐỊNH SỐ CẢM BIẾN —], [Mỗi nhóm chọn *tối thiểu 1 cảm biến* điều khiển một thiết bị đầu ra (đèn LED, quạt mini, còi): điểm chức năng tối đa *9/10*. Từ *2 cảm biến* trở lên hoạt động đúng: *10/10*.], color: pal.orange)

== 2. Danh sách kiến thức nền cần nghiên cứu
GV liệt kê kiến thức nền ra tờ A5, chuẩn bị 10 bản (học sinh dùng bộ sách Chân trời sáng tạo).
#bang((auto, 1fr), ([Môn], [Nội dung cần nghiên cứu]),
  [*KHTN 6*], [Chủ đề Các phép đo (đo chiều dài, nhiệt độ).],
  [*KHTN 9*], [Chủ đề 3 (từ Bài 8 đến hết Bài 11).],
  [*Công nghệ 6*], [Bài 3 Ngôi nhà thông minh.],
  [*Công nghệ 8*], [Bài 3 Bản vẽ kĩ thuật; Bài 10 Mạch điện điều khiển; Bài 11 Thực hành lắp đặt mạch điện điều khiển đơn giản.],
  [*Tin học 8*], [Chủ đề 5.],
  [*Toán 8*], [Chương 4 Một số yếu tố thống kê: Bài 1 Thu thập và phân loại dữ liệu; Bài 3 Phân tích dữ liệu.],
  [*Mỹ thuật 6*], [Chủ đề Vật liệu hữu ích, Bài 3 Mô hình nhà 3D.],
)

== 3. Phiếu hướng dẫn phân công nhiệm vụ (dành cho nhóm trưởng)
#bang((auto, 1.6fr, 1fr, 1.2fr), ([STT], [Họ và tên], [Nhiệm vụ (số)], [Thời hạn hoàn thành]),
  [1], [], [], [], [2], [], [], [], [3], [], [], [], [4], [], [], [],
  [5], [], [], [], [6], [], [], [], [7], [], [], [], [8], [], [], [],
)
*Danh sách gợi ý các nhiệm vụ:* (1) Mua thiết bị, dụng cụ. (2) Lắp ráp mô hình nhà. (3) Tra cứu AI, video, bài viết để chuẩn bị lập trình hoặc hiệu chỉnh độ nhạy, độ chính xác của cảm biến. (4) Thử nghiệm độ chính xác của cảm biến, tinh chỉnh; hoặc viết code và nạp lên vi xử lí. (5) Chụp hình, quay video, gửi lên Google Drive. (6) Tạo file thuyết trình, kịch bản thuyết trình. (7) Thuyết trình.

== 4. Bảng thống kê thử nghiệm và rút kinh nghiệm
#bang((auto, 1fr, auto, 1fr), ([Lần thử], [Thành công], [Lần thử], [Thành công]),
  [Lần 1], [], [Lần 6], [],
  [Lần 2], [], [Lần 7], [],
  [Lần 3], [], [Lần 8], [],
  [Lần 4], [], [Lần 9], [],
  [Lần 5], [], [Lần 10], [],
)
Số lần thành công: ……… Tỉ lệ: ………% · Nhận xét: …………………………………………………………

*Mẫu rút kinh nghiệm của nhóm:* Nhóm ………… Lớp ………… · Rút kinh nghiệm và hướng khắc phục nhược điểm: ……………… · Định hướng phát triển sản phẩm: ………………

== 5. Thông tin tư liệu và nội dung cần nghiên cứu
*Thông tin tư liệu (đưa vào Drive Link 1):* video giới thiệu ngôi nhà thông minh; video về cách dùng và lập trình cảm biến nước, ánh sáng, nhiệt độ với Arduino; bài viết có sơ đồ đấu dây và code mẫu; video hướng dẫn cài Arduino IDE, Wokwi/Tinkercad và lập trình Arduino.

*Vấn đề cần giải quyết:* (1) Căn nhà luôn có các thiết bị điện: chúng được đấu dây như thế nào? (2) Ngôi nhà thông minh có chức năng đặc biệt (tự bật đèn cổng khi trời tối, cảnh báo cháy…): các loại cảm biến có thể ứng dụng để thực hiện chức năng nào?

*Nội dung cần nghiên cứu:* giá trị định mức của các cảm biến thông dụng để kết luận cách đấu dây, cách cấp nguồn, cách dùng điện trở; các loại cảm biến để thiết lập chức năng cho ngôi nhà thông minh. Cảm biến gợi ý: ánh sáng LDR + điện trở 10 kΩ (tự bật đèn khi trời tối); mực nước/độ ẩm (báo ngập, triều cường); nhiệt độ LM35/NTC (bật quạt khi vượt ngưỡng); chuyển động PIR, siêu âm (mở rộng lên 2 cảm biến).

#note([AN TOÀN BẮT BUỘC —], [
  *(1)* Chỉ dùng nguồn DC dưới 9V (pin 9V, khay pin AA/AAA, cổng USB 5V); cấm tuyệt đối điện xoay chiều 220V. *(2)* Không chọn cảm biến khí gas, lửa, cháy nổ vì rất nguy hiểm khi thử nghiệm. *(3)* Mọi điểm nối dùng cút nối hoặc hàn và bọc co nhiệt/băng keo cách điện kín. *(4)* Nhóm trưởng tải minh chứng lên Drive trước giờ báo cáo.
], color: pal.orange)

== 6. Kịch bản đề xuất (5 bước của hoạt động STEM)
#bang((auto, 1.3fr, 1.7fr, auto), ([Bước], [Hoạt động], [Nội dung], [Không gian]),
  [*1. Xác định vấn đề*], [HĐ1 Đặt vấn đề (khởi động)], [GV nêu vấn đề cách lắp mạch và chức năng nhà thông minh; HS xác định vấn đề cần giải quyết.], [Tiết 1],
  [*2. Nghiên cứu kiến thức nền*], [HĐ2 Nghiên cứu kiến thức nền], [GV liệt kê kiến thức liên quan; HS xác định trọng tâm và nghiên cứu.], [Tiết 1],
  [*3. Thiết kế giải pháp*], [HĐ3 Lựa chọn phương án; HĐ4 Phân công, lập bản thiết kế], [Chọn nhà cơ bản hay nhà thông minh, lập trình hay module; phân công nhiệm vụ; vẽ mạch và vị trí thiết bị.], [Tiết 1],
  [*4. Chế tạo - thử nghiệm*], [HĐ5 Lên kế hoạch; HĐ6 Hoàn thiện thiết kế; HĐ7 Làm mô hình, lắp, thử nghiệm, chỉnh sửa], [Làm khung nhà (chưa cố định mái); vẽ mạch Tinkercad/Wokwi, đấu dây, viết code (tra cứu, dùng AI) hoặc lắp và hiệu chỉnh module; thử nghiệm ≥ 10 lần, thống kê (Toán 8); lắp mạch vào nhà, cố định dây, kiểm tra an toàn điện; làm file thuyết trình.], [Ngoài lớp (01 tuần)],
  [*5. Chia sẻ - cải tiến*], [HĐ8 Báo cáo; HĐ9 Luyện tập củng cố; HĐ10 Rút kinh nghiệm, cải tiến], [Các nhóm thuyết trình, phản biện; làm phiếu học tập; khắc phục tồn tại, cải tiến sản phẩm.], [Tiết 2 và sau Tiết 2],
)

== 7. Công cụ AI và bảng prompt gợi ý
GV cung cấp các công cụ AI hỗ trợ tìm kiếm thông tin: Gemini, Copilot, Monica, ChatGPT (dùng miễn phí với chức năng cơ bản). Toàn bộ link AI và bảng prompt gợi ý ghi trong một file Word, để trong thư mục Google Drive gửi học sinh.
#bang((auto, 1fr), ([Cảm biến], [Prompt gợi ý (trả lời bằng tiếng Việt đơn giản, dành cho học sinh THCS)]),
  [*Ánh sáng*], [Hướng dẫn lập trình [Arduino Uno R3 / Arduino Nano / ESP32] với cảm biến ánh sáng LDR (ghi rõ bo đang dùng để AI đổi tên chân và thang ADC), gồm: danh sách linh kiện (Arduino, LDR, điện trở 10 kΩ, dây nối, LED); sơ đồ đấu dây (LDR + điện trở tạo cầu phân áp vào chân A0; LED vào chân 13); nguyên lí LDR; mã hoàn chỉnh bật/tắt LED theo độ sáng, có comment tiếng Việt; giải thích từng phần; hiệu chuẩn ngưỡng bằng Serial Monitor; mẹo sửa lỗi khi giá trị sai.],
  [*Nhiệt độ*], [Hướng dẫn lập trình [Uno / Nano / ESP32] với cảm biến nhiệt độ LM35, gồm: danh sách linh kiện (thêm điện trở nếu dùng NTC); sơ đồ đấu dây (cảm biến vào A0, nguồn 5V, GND); nguyên lí đo nhiệt độ; mã hoàn chỉnh đọc nhiệt độ hiển thị qua Serial Monitor; giải thích từng phần; hiệu chuẩn và kiểm tra giá trị thực tế; mẹo sửa lỗi khi giá trị không ổn định.],
  [*Nước*], [Hướng dẫn lập trình [Uno / Nano / ESP32] với cảm biến phát hiện nước, gồm: danh sách linh kiện (Water Sensor, LED hoặc còi); sơ đồ đấu dây (AO vào A0, VCC vào 5V, GND); nguyên lí (độ dẫn điện thay đổi khi có nước); mã hoàn chỉnh bật/tắt LED hoặc còi khi phát hiện nước; đặt ngưỡng bằng Serial Monitor; mẹo sửa lỗi khi giá trị luôn bằng 0, luôn bằng 1023 hoặc mất tín hiệu.],
  [*Khí gas*], [Chỉ dùng để *tham khảo lí thuyết*, *không thử nghiệm ở nhà* (cảm biến MQ-2, nguy hiểm khi thử với khí gas thật).],
)

#note([AI TRONG DẠY VÀ HỌC —], [
  *GV dùng AI để* soạn và chỉnh bảng prompt theo từng cảm biến, tạo câu hỏi củng cố, phương án phân hóa; luôn đọc lại và kiểm chứng trước khi dùng; không đưa thông tin cá nhân của học sinh vào AI. *HS dùng AI để* hiểu nguyên lí cảm biến, sinh và sửa code mẫu; *bắt buộc* ghi nhật ký AI và kiểm chứng bằng thử nghiệm thật hoặc tài liệu. Cách dùng chi tiết ở Phần IV.
], color: pal.blue)

== 8. Thời gian thực hiện chủ đề
#bang((auto, 1fr, 1fr), ([Giai đoạn], [Thời gian], [Nội dung chính]),
  [*Tiết 1* (45 phút)], [Đầu tuần 8, sau khi học xong Chủ đề Điện.], [HĐ1 khởi động 5'; HĐ2 kiến thức nền 5'; HĐ3 chọn phương án 5'; HĐ4 phân công và thiết kế 22'; hướng dẫn về nhà 8'.],
  [*Ngoài lớp*], [01 tuần.], [Làm khung nhà, đi dây, lập trình, hiệu chuẩn, thử nghiệm ≥ 10 lần, quay video, làm slide.],
  [*Tiết 2* (45 phút)], [Đầu tuần 9.], [Khởi động 5'; báo cáo - phản biện 32' (3 + 2 phút/nhóm); luyện tập củng cố 8'.],
  [*Sau Tiết 2*], [Tuần kế tiếp.], [Nhóm rút kinh nghiệm, cải tiến, nộp lại; GV tổng hợp điểm, khảo sát cảm nhận.],
)
*Lịch dạy thực tế:*
#bang((auto, 1fr, 1fr, 1fr), ([Lớp], [Ngày Tiết 1], [Ngày Tiết 2], [Sĩ số / số nhóm]),
  [*9.3*], [#co(none, "ngày Tiết 1 lớp 9.3")], [#co(none, "ngày Tiết 2 lớp 9.3")], [#co(so-hs-93, "sĩ số 9.3") / #co(so-nhom-93, "số nhóm 9.3")],
  [*9.6*], [#co(none, "ngày Tiết 1 lớp 9.6")], [#co(none, "ngày Tiết 2 lớp 9.6")], [#co(so-hs-96, "sĩ số 9.6") / #co(so-nhom-96, "số nhóm 9.6")],
)

== 9. Phương án đánh giá kết quả của học sinh
Đánh giá chia hai phần: *đánh giá cá nhân* (thành viên trong nhóm chấm chéo bằng Phiếu đánh giá cá nhân) và *đánh giá sản phẩm của nhóm* (GV chấm theo Bảng tiêu chí 100 điểm). Điểm của học sinh là trung bình cộng của hai phần, quy về thang 10.

*9.1. Phiếu đánh giá cá nhân (nhóm tự đánh giá, thang 100).* Mỗi học sinh chấm các bạn còn lại trong nhóm; tiêu chí 3 và 4 gắn với năng lực số.
#bang((auto, 1.4fr, auto, 1fr), ([TC], [Tiêu chí], [Điểm tối đa], [Mã NLS liên quan]),
  [1], [Thái độ sẵn sàng tiếp nhận và thực hiện nhiệm vụ], [25], [—],
  [2], [Chủ động, tích cực phối hợp với thành viên khác], [25], [2.4],
  [3], [Tìm tòi giải pháp, đề xuất cách làm tốt hơn, sử dụng AI/Internet để hỗ trợ nhiệm vụ], [25], [1.1, 1.2, 5.2, 6.1, 6.2, 6.3],
  [4], [Sử dụng tốt các phần mềm: AI, Google Drive, làm thuyết trình, lập trình], [25], [1.3, 3.1, 3.4, 5.3],
)
#bang((auto, 1.6fr, 0.5fr, 0.5fr, 0.5fr, 0.5fr, 0.7fr, 1fr), ([STT], [Họ tên thành viên được đánh giá], [TC1], [TC2], [TC3], [TC4], [Tổng], [Ghi chú]),
  [1], [], [], [], [], [], [], [], [2], [], [], [], [], [], [], [], [3], [], [], [], [], [], [], [],
)
Xếp loại: Tốt (80 đến 100 điểm); Khá (65 đến dưới 80); Trung bình (50 đến dưới 65); Yếu (dưới 50).

*9.2. Bảng tiêu chí đánh giá kết quả của nhóm (100 điểm).*
#table(
  columns: (auto, 1.2fr, auto, 2fr), inset: 5pt, stroke: 0.5pt + pal.border,
  align: (left + horizon, left + horizon, center + horizon, left + horizon),
  table.header(..([Nhóm tiêu chí], [Tiêu chí], [Điểm], [Yêu cầu mức tối đa]).map(h => table.cell(fill: pal.navy, text(weight: "bold", fill: white, h)))),
  ..rubric.map(g => {
    let rows = g.at(1)
    rows.enumerate().map(((i, m)) => (
      if i == 0 { (table.cell(rowspan: rows.len(), fill: pal.mist, text(weight: "bold", fill: pal.navy, g.at(0))),) } else { () }
    ) + (m.at(0), table.cell(align: center + horizon, [*#m.at(1)*]), m.at(2))).flatten()
  }).flatten(),
  table.cell(colspan: 2, fill: pal.gold.lighten(70%), align: right, [*TỔNG CỘNG*]),
  table.cell(fill: pal.gold.lighten(70%), align: center, [*#tong-diem*]),
  table.cell(fill: pal.gold.lighten(70%), []),
)

== 10. Phiếu học tập luyện tập và củng cố kiến thức
_Khoanh tròn một chữ A, B, C, D ở câu 1 đến câu 6; ở câu 7 ghi Đ hoặc S. Mô hình có chức năng thông minh nào thì làm câu 4a, 4b hoặc 4c tương ứng._

*Câu 1.* Trong đoạn mạch mắc nối tiếp, đại lượng nào sau đây là như nhau tại mọi vị trí? A. Hiệu điện thế. B. Điện trở. C. Cường độ dòng điện. D. Công suất tiêu thụ.

*Câu 2.* Đèn LED cần mắc thêm điện trở bảo vệ vì: A. Để tăng độ sáng. B. Để giảm điện áp xuống giá trị định mức của LED. C. Để tiết kiệm điện. D. Để LED sáng nhiều màu.

*Câu 3.* Đoạn mạch nào có điện áp trên các thiết bị bằng nhau? A. Mạch nối tiếp. B. Mạch song song. C. Mạch hỗn hợp. D. Mạch kín bất kì.

*Câu 4a.* Cảm biến ánh sáng bật đèn khi trời tối, hiện tượng điện nào xảy ra? A. Ánh sáng càng mạnh thì điện trở LDR càng tăng. B. Ánh sáng càng yếu thì điện trở LDR càng giảm. C. Điện trở LDR thay đổi theo cường độ sáng: sáng tăng thì điện trở giảm, sáng yếu thì điện trở tăng. D. LDR phát sáng khi có ánh sáng chiếu vào.

*Câu 4b.* Cảm biến nhiệt độ NTC hoạt động theo nguyên tắc nào? A. Nhiệt độ tăng thì điện trở NTC giảm. B. Nhiệt độ giảm thì điện trở NTC giảm. C. Nhiệt độ không đổi thì điện trở NTC thay đổi. D. Nhiệt độ thay đổi thì điện trở NTC không đổi.

*Câu 4c.* Cảm biến nước hoặc độ ẩm đất hoạt động theo nguyên tắc nào? A. Có nước thì điện trở tăng, dòng điện giảm. B. Khô ráo thì điện trở tăng, dòng điện tăng. C. Điện trở không đổi dù có nước hay không. D. Có nước thì điện trở giảm, dòng điện tăng.

*Câu 5.* Thiết bị nào bắt buộc phải đấu đúng cực để tránh hỏng hoặc không hoạt động? A. Bóng đèn sợi đốt. B. Công tắc. C. Các linh kiện điện tử như cảm biến, LED, quạt DC. D. Dây điện nối mạch.

*Câu 6.* Để mạch hoạt động ổn định và an toàn, nhóm cần: A. Dùng dây điện thật dài. B. Không cần vỏ cách điện. C. Kiểm tra nguồn điện trước khi cấp điện. D. Tăng điện áp để thiết bị chạy mạnh hơn.

*Câu 7.* Các phát biểu sau đúng hay sai?
#bang((3fr, auto), ([Phát biểu], [Đ/S]),
  [a) Trong mạch điện song song, nếu một thiết bị hỏng thì các thiết bị khác vẫn hoạt động.], [],
  [b) Dây điện hở có thể gây đoản mạch, làm hư hỏng các linh kiện.], [],
  [c) Khi làm mô hình nhà, chỉ cần mạch hoạt động là đủ, không cần kiểm tra tính an toàn khi đấu nối dây.], [],
  [d) Cảm biến nhiệt độ cần nối song song với một điện trở phù hợp trước khi lắp vào mạch điện.], [],
)
*Đáp án:* 1-C; 2-B; 3-B; 4a-C; 4b-A; 4c-D; 5-C; 6-C; 7a-Đ; 7b-Đ; 7c-S; 7d-S.

// =============================================================================
// PHẦN III. KẾ HOẠCH DẠY HỌC
// =============================================================================
#pagebreak()
#include "ke-hoach-bai-day.typ"

// =============================================================================
// PHẦN IV. HƯỚNG DẪN HỌC SINH
// =============================================================================
= PHẦN IV. HƯỚNG DẪN HỌC SINH
== 1. Ôn lại kiến thức nền
- *KHTN 9:* mạch nối tiếp, mạch song song, định luật Ohm, giá trị định mức.
- *Công nghệ 8:* nguyên lí của một số loại cảm biến (Bài 10, trang 71-74).
- *Tin học 8 (CTST):* Chủ đề 5 (trang 79-95); xem lại Bài 8B, 9B, 10B, 11B về xử lí hình ảnh.
- *Toán 8 (CTST):* Chương 4 (trang 90-116).

== 2. Nội dung cần báo cáo (3 phút trình bày + 2 phút phản biện)
+ Bảng phân công nhiệm vụ của nhóm.
+ Nêu vấn đề cần giải quyết (ví dụ cần thêm chức năng bật đèn tự động cho căn nhà).
+ Đề xuất giải pháp: nêu 2 phương án (lập trình, module lắp sẵn), ưu - nhược điểm từng phương án; chốt phương án và lí do chọn (phù hợp mục tiêu, chi phí, an toàn điện…); bản vẽ thiết kế. Nhiều module có cùng chức năng, nhóm không bắt buộc dùng module GV giới thiệu.
+ Nguyên lí hoạt động của cảm biến.
+ Quá trình làm sản phẩm: số lần thử nghiệm, số lần thành công/không thành công, điền Bảng thống kê và nhận xét; ảnh, video minh chứng. Nếu không thể chụp ảnh (ví dụ kiểm nghiệm tại trường), chọn giờ ra chơi và báo GV tới quan sát trực tiếp.
+ Bài học lí thuyết và kinh nghiệm; nêu khó khăn, thuận lợi.
+ Hướng phát triển sản phẩm (khắc phục tồn tại hoặc thêm chức năng mới) sau khi được các nhóm và GV góp ý.

== 3. Hướng dẫn thử nghiệm từng loại cảm biến
#bang((auto, 1fr), ([Cảm biến], [Cách thử nghiệm]),
  [*Nhiệt độ*], [Chuẩn bị 1 li thủy tinh và 1 nhiệt kế (mượn ở phòng thí nghiệm). Rót nước ấm vào li, chờ nhiệt kế ổn định, đưa đầu dò kim loại của cảm biến vào li, đọc giá trị ở Serial Monitor hoặc đồng hồ và so với nhiệt kế. Nếu sai lệch: chỉnh code hoặc chỉnh ốc tinh chỉnh (trên module Công nghệ 8).],
  [*Độ ẩm / nước*], [Tùy chức năng (độ ẩm đất, phát hiện mưa…), chỉnh code hoặc ốc điều chỉnh độ nhạy cho phù hợp.],
  [*Ánh sáng*], [Xác định bật đèn khi trời tối hẳn hay gần tối… theo mục tiêu của nhóm, chỉnh code hoặc núm chỉnh trên cảm biến và nêu rõ lí do.],
)

== 4. Hướng dẫn sử dụng AI
Mỗi nhóm dùng chung *một tài khoản Google* để đăng nhập Wokwi, Tinkercad và các công cụ AI.

*Công thức prompt gồm 4 thành phần:*
#bang((auto, 1fr, 1.4fr), ([Thành phần], [Ý nghĩa], [Ví dụ]),
  [*Vai trò*], [Đặt AI vào một vai trò để định hình cách trả lời.], [Bạn là giáo viên lập trình Arduino cho học sinh lớp 9.],
  [*Mục tiêu*], [Kết quả cần đạt.], [Khi trời tối hẳn thì đèn LED tự bật, trời sáng thì tắt.],
  [*Bối cảnh / dữ liệu*], [Linh kiện, chân cắm, giới hạn.], [Bo Arduino Uno R3; LDR + điện trở 10 kΩ vào chân A0; LED vào chân D7.],
  [*Định dạng đầu ra*], [Cách trình bày kết quả.], [Code cho bo đang dùng (Uno R3, Nano hoặc ESP32), chú thích tiếng Việt, giải thích từng đoạn.],
)

*Quy tắc dùng AI có trách nhiệm (NLS 6.2, 4.2):* (1) Dùng chung một tài khoản của nhóm, không nhập họ tên, ảnh mặt, địa chỉ, số điện thoại. (2) Ghi rõ phần nào do AI gợi ý. (3) Không tin ngay: thử chạy, đo đạc, đối chiếu với sách/video. (4) Không dùng AI để làm thay toàn bộ sản phẩm hay bịa số liệu thử nghiệm. (5) Gặp nội dung nguy hiểm (gas, 220V, lửa) thì không làm theo và báo giáo viên.

*Nhật ký AI của nhóm (mẫu, lưu trên Drive):*
#bang((0.35fr, 1.3fr, 1.2fr, 1.2fr, 1fr), ([Lần], [Prompt (đã bỏ thông tin cá nhân)], [Kết quả AI trả lời (tóm tắt)], [Cách kiểm chứng], [Điều chỉnh]),
  [1], [(ví dụ) Viết code bật LED khi LDR dưới ngưỡng], [Code dùng analogRead, ngưỡng 500], [Chạy trên Tinkercad, so với Serial Monitor], [Đổi ngưỡng thành 350],
  [2], [], [], [], [],
  [3], [], [], [], [],
)
#v(4pt)
#luoi-anh(((anh-nhat-ky-ai, "nhật ký AI của nhóm", "Nhật ký AI (NLS 6.2)"), (anh-so-sanh-ai, "so sánh kết quả hai AI", "So sánh các công cụ AI (NLS 6.3)"), (anh-tinkercad, "sơ đồ Tinkercad/Wokwi", "Mô phỏng mạch (NLS 3.4)")))

== 5. Hướng dẫn dùng Tinkercad, Wokwi
GV dùng video YouTube tiếng Việt, dễ hiểu; học sinh mở link trong file Hướng dẫn phần mềm Arduino IDE, Tinkercad ở Drive Link 1 (GV gửi qua nhóm lớp).

== 6. Gợi ý nghiên cứu chuyên sâu
Ngoài Arduino, các vi xử lí khác như ESP, Raspberry Pi Pico cũng điều khiển tốt cảm biến; ESP32 tích hợp Wi-Fi, truyền dữ liệu lên web để điều khiển từ xa. Học sinh được khuyến khích tìm hiểu cảm biến khác nhưng *không thử nghiệm* loại liên quan nguồn 220V, cháy nổ, khí gas vì khó bảo đảm an toàn, dễ gây cháy nổ, nguy hiểm đến tính mạng.

// =============================================================================
// PHỤ LỤC
// =============================================================================
#pagebreak()
= PHỤ LỤC 1. MINH CHỨNG THEO TỪNG GIAI ĐOẠN
Các thông tin, tư liệu (phiếu đánh giá cá nhân, bảng thống kê thử nghiệm, nhận xét từng nhóm, ảnh và video của học sinh) lưu trên Google Drive theo 5 thư mục tương ứng 5 giai đoạn; mỗi thư mục có mã QR. Ảnh trong PDF là ảnh tiêu biểu.

#the-minh-chung("0", "Trước Tiết 1 — Giáo viên chuẩn bị",
  [Chứng minh GV chuẩn bị bài bản, giao nhiệm vụ và phổ biến an toàn từ trước.],
  (
    [Kế hoạch bài dạy (PDF) và rubric 100 điểm],
    [Phiếu học tập số 1, số 2; phiếu đánh giá chéo; bài trắc nghiệm củng cố],
    [Ảnh/video sản phẩm mẫu của GV (mạch chạy thật, bảng thử nghiệm mẫu)],
    [Ảnh chụp thông báo giao nhiệm vụ và quy định an toàn gửi học sinh],
    [Danh sách nhóm và phương án dự kiến (Uno, Nano, ESP32 hay module)],
    [Biên bản/xác nhận cho phép chụp ảnh - quay video học sinh],
  ),
  link-chuan-bi,
  ((anh-chuan-bi-1, "ảnh sản phẩm mẫu GV", "Sản phẩm mẫu của giáo viên"), (anh-chuan-bi-2, "ảnh phiếu giao nhiệm vụ", "Phiếu giao nhiệm vụ"), (none, "ảnh thông báo an toàn", "Thông báo an toàn")),
)

#the-minh-chung("1", "Trong Tiết 1 — Giao nhiệm vụ và thiết kế",
  [Chứng minh học sinh đã được giao nhiệm vụ, thảo luận và lên phương án.],
  (
    [Ảnh toàn cảnh lớp ở mỗi hoạt động (HĐ1, HĐ2, HĐ3), ít nhất 6 ảnh],
    [Ảnh các nhóm thảo luận, GV cố vấn từng nhóm],
    [Phiếu học tập số 1 đã điền của mọi nhóm (ảnh/scan): phác thảo, so sánh giải pháp, phân công, lịch tuần],
    [Bảng tổng hợp: nhóm - phương án - số cảm biến dự kiến],
    [Video 30-60 giây thảo luận nhóm và khi GV nhắc an toàn],
    [Ảnh bảng/slide chiếu rubric trước lớp],
  ),
  link-tiet1,
  ((anh-t1-1, "ảnh toàn cảnh Tiết 1", "Giao nhiệm vụ (HĐ1)"), (anh-t1-2, "ảnh thảo luận giải pháp", "Thảo luận so sánh giải pháp (HĐ2)"), (anh-t1-3, "ảnh phác thảo thiết kế", "Phác thảo thiết kế (HĐ3)")),
)

#the-minh-chung("2", "Giữa hai tiết — Học sinh thực hiện (01 tuần)",
  [Chứng minh quá trình làm thật và sự theo dõi của giáo viên; nhóm trưởng tải lên Drive.],
  (
    [Ảnh quá trình: làm khung nhà, đi dây, lắp mạch (ít nhất 5 ảnh/nhóm, có ngày giờ)],
    [Sơ đồ mô phỏng Tinkercad/Wokwi (ảnh và link) và bản vẽ vị trí thiết bị],
    [File code Arduino (.ino) có chú thích tiếng Việt; ảnh Serial Monitor khi hiệu chuẩn ngưỡng],
    [Nhật ký và bảng thống kê thử nghiệm ≥ 10 lần; mô tả lỗi và cách sửa],
    [Video thử nghiệm trong các điều kiện khác nhau],
    [*Nhật ký AI* của nhóm (prompt - kết quả - cách kiểm chứng - điều chỉnh) và ảnh so sánh kết quả hai công cụ AI],
    [Ảnh cây thư mục Drive của nhóm (NLS 1.3); danh sách nguồn video/bài viết đã dùng],
    [Phía GV: ảnh tin nhắn hỗ trợ trên nhóm lớp, bảng theo dõi tiến độ từng nhóm, nhận xét giữa kì],
  ),
  link-giua,
  ((anh-giua-1, "ảnh quá trình làm", "Học sinh chế tạo mô hình"), (anh-giua-2, "ảnh thử nghiệm", "Thử nghiệm, hiệu chuẩn"), (anh-giua-3, "ảnh GV hỗ trợ", "Giáo viên theo dõi, hỗ trợ")),
)

#the-minh-chung("3", "Trong Tiết 2 — Trưng bày, báo cáo, đánh giá",
  [Chứng minh sản phẩm hoàn thành và quá trình đánh giá khách quan.],
  (
    [Ảnh toàn cảnh khu trưng bày và ảnh mô hình từng nhóm (nhìn thấy mạch và mối nối)],
    [Video mô hình chạy thử trước lớp (mỗi nhóm một clip)],
    [Ảnh nhóm báo cáo và phản biện; slide của nhóm (PDF/PPTX nộp lên Drive)],
    [Phiếu chấm rubric của GV (ảnh/scan) từng nhóm],
    [Phiếu đánh giá chéo thành viên (4 tiêu chí, thang 100)],
    [Bài trắc nghiệm củng cố và kết quả],
    [Ảnh slide của nhóm có phần "Cách dùng AI và cách kiểm chứng" (NLS 3.1, 6.3)],
  ),
  link-tiet2,
  ((anh-t2-1, "ảnh toàn cảnh trưng bày", "Trưng bày sản phẩm"), (anh-t2-2, "ảnh nhóm báo cáo", "Nhóm thuyết trình"), (anh-t2-3, "ảnh phản biện/chấm điểm", "Phản biện và chấm rubric")),
)

#the-minh-chung("4", "Sau Tiết 2 — Tổng hợp và phản tư",
  [Chứng minh kết quả định lượng và việc rút kinh nghiệm.],
  (
    [Bảng điểm tổng hợp hai lớp (Google Sheet/Excel)],
    [Thống kê: số nhóm 1 cảm biến / từ 2 cảm biến, Arduino / module, tỉ lệ thử nghiệm thành công],
    [Nhận xét của GV cho từng nhóm],
    [Kết quả khảo sát cảm nhận học sinh (Google Form)],
    [Ảnh lưu niệm, sản phẩm tiêu biểu, ghi chú rút kinh nghiệm],
    [Bảng tổng hợp mức đạt NLS (mã 1.1 đến 6.3) của hai lớp và báo cáo cải tiến của từng nhóm],
  ),
  link-sau,
  ((anh-sau-1, "ảnh bảng điểm tổng hợp", "Bảng điểm tổng hợp"), (anh-sau-2, "ảnh kết quả khảo sát", "Khảo sát cảm nhận học sinh"), (none, "ảnh lưu niệm", "Ảnh lưu niệm")),
)

*Sản phẩm tiêu biểu của học sinh:*
#luoi-anh(((anh-san-pham-1, "mô hình tiêu biểu 1", "Mô hình nhà thông minh tiêu biểu 1"), (anh-san-pham-2, "mô hình tiêu biểu 2", "Mô hình nhà thông minh tiêu biểu 2"), (anh-so-do-mach, "sơ đồ mạch", "Sơ đồ mạch mô phỏng")))
#v(4pt)
#luoi-anh(((anh-code, "ảnh code Arduino", "Code Arduino có chú thích"), (anh-bang-thu-nghiem, "bảng thử nghiệm ≥ 10 lần", "Bảng thống kê thử nghiệm"), (anh-slide-hs, "trang slide học sinh", "Slide báo cáo của học sinh")))

= PHỤ LỤC 2. KẾ HOẠCH ĐÁNH GIÁ VÀ NĂNG LỰC SỐ
== 1. Kế hoạch đánh giá
*Phần 1 — Học sinh đánh giá chéo trong nhóm.* Mục tiêu: đánh giá thái độ tham gia hoạt động nhóm và năng lực số. Phương pháp: quan sát thái độ thành viên qua quá trình làm việc. Công cụ: Phiếu đánh giá cá nhân (100 điểm, Phần II mục 9.1).

*Phần 2 — Giáo viên đánh giá.* Mục tiêu: đánh giá mức độ khoa học của mô hình, ứng dụng toán thống kê, năng lực KHTN qua kết quả thử nghiệm, ứng dụng nghệ thuật. Phương pháp: quan sát qua báo cáo sản phẩm. Công cụ: Bảng tiêu chí (rubric 100 điểm, Phần II mục 9.2).
- Mức hoàn thành nhiệm vụ từng học sinh: qua bảng phân công nhiệm vụ và sản phẩm.
- Năng lực số: qua slide, nhật ký AI, thư mục Drive, code.
- Toán thống kê: qua bảng thống kê số lần thử nghiệm thành công.
- Năng lực KHTN: qua phần trình bày thử nghiệm, kĩ thuật đấu nối, an toàn điện.
- Ứng dụng nghệ thuật: qua hình thức mô hình.

*Cách tính điểm cá nhân:* trung bình cộng điểm phiếu đánh giá cá nhân (thang 100) và điểm rubric nhóm của GV (thang 100), quy về thang 10.

== 2. Đánh giá năng lực số
Năng lực số được đánh giá qua ba nguồn: (1) *phiếu đánh giá cá nhân* (tiêu chí 3 và 4); (2) *slide và báo cáo* của nhóm (NLS 3.1, 1.2, 6.3); (3) *nhật ký AI, thư mục Drive và code* (NLS 6.2, 1.3, 3.4). Mức đạt L8-L9 khi học sinh tự thực hiện được các chỉ báo ở bảng dưới với tình huống đã được xác định rõ.

== 3. Bảng NLS tích hợp, hoạt động và minh chứng
Căn cứ: *Thông tư 02/2025/TT-BGDĐT* (6 miền, 24 năng lực thành phần) và phụ lục *Công văn 3456/BGDĐT-GDPT*; học sinh lớp 8, 9 ở mức *L8-L9 (Trung cấp 2)*. Theo Công văn 2132/SGDĐT-GDPT, kế hoạch bài dạy nêu rõ “địa chỉ” tích hợp NLS trong từng hoạt động (xem Phần III). Quy ước: *NLS a.b*, a là miền (1 Khai thác dữ liệu và thông tin; 2 Giao tiếp và hợp tác; 3 Sáng tạo nội dung số; 4 An toàn; 5 Giải quyết vấn đề; 6 Ứng dụng AI), b là năng lực thành phần.
#let nls-dia-chi = (
  ("1.1", [HĐ1, HĐ2 (Tiết 1); giữa hai tiết], [Ghi chép nguồn video/bài viết về cảm biến trong phiếu và nhật ký]),
  ("1.2", [HĐ2 (Tiết 1); Tiết 2], [Bảng so sánh nguồn tin; lập luận ở phần báo cáo]),
  ("1.3", [HĐ4, về nhà (Tiết 1); sau Tiết 2], [Cây thư mục Drive của nhóm, tên file đúng quy ước]),
  ("2.4", [HĐ4 (Tiết 1); giữa hai tiết], [Nhóm chung tài khoản Google, tài liệu Docs/Sheets dùng chung]),
  ("3.1", [Giữa hai tiết; Tiết 2], [Slide, ảnh, video quá trình]),
  ("3.4", [Giữa hai tiết; Tiết 2 (nhóm Arduino)], [File code .ino có chú thích; sơ đồ Tinkercad/Wokwi]),
  ("4.2", [Hướng dẫn về nhà; giữa hai tiết], [Nhật ký AI không có thông tin cá nhân]),
  ("5.1", [Giữa hai tiết], [Nhật ký lỗi - cách sửa]),
  ("5.2", [HĐ3, HĐ4 (Tiết 1); sau Tiết 2], [Bảng so sánh phương án; báo cáo cải tiến]),
  ("5.3", [Giữa hai tiết; sau Tiết 2], [Ý tưởng cải tiến, chức năng thêm (từ 2 cảm biến)]),
  ("6.1", [Hướng dẫn về nhà; giữa hai tiết], [Prompt giải thích nguyên lí cảm biến]),
  ("6.2", [Giữa hai tiết], [Nhật ký AI đầy đủ, ghi rõ phần AI hỗ trợ]),
  ("6.3", [Giữa hai tiết; Tiết 2], [So sánh kết quả hai công cụ AI; phân tích AI đúng/sai]),
)
#bang((auto, 1.4fr, 1.5fr, 1.2fr), ([Mã], [Năng lực thành phần và chỉ báo L8-L9], [Hoạt động tích hợp], [Minh chứng]),
  ..nls-dia-chi.map(r => (
    [*#r.at(0)*],
    [*#nls-khung.at(r.at(0)).at(0)*. #nls-khung.at(r.at(0)).at(1)],
    r.at(1),
    r.at(2),
  )).flatten(),
)

= PHỤ LỤC 3. KẾT QUẢ VÀ PHẢN TƯ
== 1. Kết quả định lượng
#bang((1fr, 1fr), ([Chỉ số], [Giá trị]),
  [Điểm trung bình các nhóm lớp 9.3 (/100)], [#co(diem-tb-93, "điểm TB 9.3")],
  [Điểm trung bình các nhóm lớp 9.6 (/100)], [#co(diem-tb-96, "điểm TB 9.6")],
  [Số nhóm chọn Arduino / module cảm biến], [#co(so-nhom-arduino, "số nhóm Arduino") / #co(so-nhom-module, "số nhóm module")],
  [Số nhóm có 1 cảm biến / từ 2 cảm biến trở lên], [#co(so-nhom-1-cam-bien, "số nhóm 1 cảm biến") / #co(so-nhom-2-cam-bien, "số nhóm ≥ 2 cảm biến")],
  [Tỉ lệ kích hoạt thành công trung bình (thử nghiệm)], [#co(ti-le-thanh-cong, "tỉ lệ thành công %")],
  [Số nhóm đạt tối đa tiêu chí an toàn điện], [#co(so-nhom-an-toan-dat, "số nhóm an toàn đạt")],
  [Số nhóm có nhật ký AI đầy đủ], [#co(so-nhom-dung-ai, "số nhóm có nhật ký AI")],
  [Số nhóm phát hiện AI sai/không chạy được và đã sửa (NLS 6.3)], [#co(so-nhom-phat-hien-loi-ai, "số nhóm phát hiện lỗi AI")],
  [Tỉ lệ học sinh đạt NLS mức L8-L9], [#co(nls-dat-tb, "tỉ lệ đạt NLS")],
  [Khảo sát cảm nhận học sinh], [#co(ket-qua-khao-sat, "kết quả khảo sát")],
)

== 2. Nhận xét và rút kinh nghiệm của giáo viên
#note([Ưu điểm —], co(uu-diem, "ưu điểm"), color: pal.cyan)
#note([Hạn chế —], co(han-che, "hạn chế và nguyên nhân"), color: pal.orange)
#note([Điều chỉnh —], co(dieu-chinh, "điều chỉnh sau lớp đầu tiên"), color: pal.blue)

== 3. Hướng phát triển
#co(huong-phat-trien, "hướng phát triển")

= PHỤ LỤC 4. CẤU TRÚC THƯ MỤC GOOGLE DRIVE
#bang((auto, 1fr), ([Thư mục], [Nội dung]),
  [`00-Truoc-Tiet1`], [Kế hoạch bài dạy, phiếu, rubric, sản phẩm mẫu GV, thông báo giao nhiệm vụ.],
  [`01-Tiet1/<lop>/<nhom>`], [Ảnh lớp, phiếu học tập số 1, bảng tổng hợp phương án, video thảo luận.],
  [`02-Giua-hai-tiet/<lop>/<nhom>`], [Ảnh quá trình, sơ đồ, code, nhật ký thử nghiệm, video, prompt AI, tin nhắn hỗ trợ.],
  [`03-Tiet2/<lop>/<nhom>`], [Ảnh trưng bày, video chạy thử, slide, phiếu chấm rubric, phiếu đánh giá chéo, trắc nghiệm.],
  [`04-Sau-Tiet2`], [Bảng điểm, thống kê, khảo sát, nhận xét, rút kinh nghiệm.],
)

= PHỤ LỤC 5. CĂN CỨ PHÁP LÍ VÀ TÀI LIỆU THAM KHẢO
#bang((1fr, 1fr), ([Văn bản], [Nội dung sử dụng]),
  [Thông tư 02/2025/TT-BGDĐT ngày 24/01/2025], [Quy định Khung năng lực số cho người học (6 miền, 24 năng lực thành phần); có hiệu lực từ 11/3/2025.],
  [Công văn 3456/BGDĐT-GDPT ngày 27/6/2025], [Hướng dẫn triển khai Khung NLS cho học sinh phổ thông; phụ lục nêu mức độ theo lớp (lớp 8, 9: Trung cấp 2 - L8-L9).],
  [Công văn 2250/BGDĐT-GDPT ngày 12/5/2025], [Tài liệu "Hướng dẫn sử dụng Ứng dụng trí tuệ nhân tạo trong dạy và học" của Viện Khoa học Giáo dục Việt Nam (tham khảo; ai.vnies.edu.vn).],
  [Kế hoạch 1459/KH-SGDĐT ngày 18/8/2025 và Công văn 2132/SGDĐT-GDPT ngày 09/9/2025 (Sở GDĐT TP.HCM)], [Tích hợp NLS vào kế hoạch bài dạy, nêu rõ "địa chỉ" tích hợp trong từng hoạt động; khuyến khích tích hợp qua STEM, chú ý AI, IoT.],
  [Chương trình GDPT 2018 môn KHTN, Công nghệ, Tin học, Toán, Mĩ thuật], [Yêu cầu cần đạt của các nội dung tích hợp.],
)
