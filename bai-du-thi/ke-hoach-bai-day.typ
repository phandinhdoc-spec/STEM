// =============================================================================
// KẾ HOẠCH BÀI DẠY (theo công văn 5512) - STEM: Thiết kế mạch điện cho mô hình nhà thông minh
// - Biên dịch riêng:  typst compile ke-hoach-bai-day.typ
// - Được nhúng vào bai-du-thi.typ bằng #include; biến dùng chung lấy bằng #import
//   (khbd-info, nls-khung)
// Lịch trình giữ nguyên cấu trúc năm trước: Tiết 1 (đầu tuần, sau khi học xong chủ đề Điện)
//   → 01 tuần làm ở nhà → Tiết 2 (đầu tuần kế tiếp).
// Mã năng lực số (NLS) theo Thông tư 02/2025/TT-BGDĐT và phụ lục Công văn 3456/BGDĐT-GDPT;
//   học sinh lớp 8-9 = mức "Trung cấp 2" (L8-L9).
// =============================================================================
#import "@local/mypackage:0.1.0": *

// ---- THÔNG TIN CHUNG (sửa tại đây, bai-du-thi.typ tự lấy theo) -----------------
#let khbd-info = (
  truong: "THCS Phan Văn Trị",
  to: "KHTN - Công nghệ",
  gv: "Phan Anh",
  ten-bai: "Thiết kế mạch điện cho mô hình nhà thông minh",
  mon: "Khoa học tự nhiên 9 (STEM)",
  lop: "9.3, 9.6",
  thoi-luong: "02 tiết trên lớp + 01 tuần thực hiện ngoài lớp",
  tiet: "27 - 28 (PPCT)",
  ngay-soan: "11/10/2026",
)

// ---- KHUNG NĂNG LỰC SỐ: mã → (tên năng lực thành phần, chỉ báo mức L8-L9) ----------
// Nguồn: Thông tư 02/2025/TT-BGDĐT (tên, mã); phụ lục Công văn 3456/BGDĐT-GDPT (chỉ báo L8-L9).
#let nls-khung = (
  "1.1": ("Duyệt, tìm kiếm và lọc dữ liệu, thông tin và nội dung số",
    "Tổ chức được tìm kiếm dữ liệu, thông tin và nội dung trong môi trường số; mô tả được cách truy cập và điều hướng; tổ chức được các chiến lược tìm kiếm."),
  "1.2": ("Đánh giá dữ liệu, thông tin và nội dung số",
    "Thực hiện phân tích, so sánh và đánh giá được các nguồn dữ liệu, thông tin và nội dung số; phân tích, diễn giải và đánh giá được dữ liệu, thông tin."),
  "1.3": ("Quản lý dữ liệu, thông tin và nội dung số",
    "Sắp xếp được thông tin, dữ liệu, nội dung để dễ lưu trữ và truy xuất; tổ chức được chúng trong một môi trường có cấu trúc."),
  "2.4": ("Hợp tác thông qua công nghệ số",
    "Lựa chọn được các công cụ và công nghệ số cho các quá trình hợp tác."),
  "3.1": ("Phát triển nội dung số",
    "Chỉ ra được cách tạo và chỉnh sửa nội dung ở các định dạng khác nhau; thể hiện được bản thân thông qua việc tạo ra các nội dung số."),
  "3.4": ("Lập trình",
    "Liệt kê được các hướng dẫn (câu lệnh) cho một hệ thống máy tính để giải quyết một vấn đề nhất định hoặc thực hiện một nhiệm vụ cụ thể."),
  "4.2": ("Bảo vệ dữ liệu cá nhân và quyền riêng tư",
    "Thảo luận được cách bảo vệ dữ liệu cá nhân và quyền riêng tư trong môi trường số; cách sử dụng và chia sẻ thông tin danh tính cá nhân một cách an toàn."),
  "5.1": ("Giải quyết các vấn đề kỹ thuật",
    "Phân biệt được các vấn đề kỹ thuật khi vận hành thiết bị và sử dụng môi trường số; chọn được giải pháp cho chúng."),
  "5.2": ("Xác định nhu cầu và giải pháp công nghệ",
    "Giải thích được nhu cầu; lựa chọn được các công cụ số và giải pháp công nghệ có thể có để giải quyết nhu cầu đó."),
  "5.3": ("Sử dụng sáng tạo công nghệ số",
    "Phân biệt được các công cụ, công nghệ số dùng để tạo ra kiến thức và đổi mới quy trình, sản phẩm; gắn kết được cá nhân và tập thể vào quá trình xử lí nhận thức để giải quyết vấn đề."),
  "6.1": ("Hiểu biết về trí tuệ nhân tạo (AI)",
    "Áp dụng được các nguyên tắc cơ bản của AI để giải quyết vấn đề đơn giản; thực hiện được các thao tác cơ bản trên các công cụ AI."),
  "6.2": ("Sử dụng AI có đạo đức và trách nhiệm",
    "Tối ưu hóa việc sử dụng công cụ AI để đạt hiệu quả cao hơn; quản lí được việc triển khai công cụ AI trong dự án nhỏ; bảo vệ dữ liệu cá nhân và tuân thủ quy định pháp luật về bảo mật thông tin khi sử dụng AI."),
  "6.3": ("Đánh giá các công cụ AI",
    "Phân tích được hiệu quả của hệ thống AI trong việc giải quyết các vấn đề cụ thể; so sánh được hiệu suất của các hệ thống AI khác nhau."),
)

// Dòng "Năng lực số:" cho mỗi hoạt động; truyền mã và (tùy chọn) ghi chú theo từng mã.
#let nls(..ma) = block(above: 4pt, below: 4pt, width: 100%,
  fill: pal.soft, stroke: (left: 2.5pt + pal.cyan), inset: (x: 7pt, y: 4pt), radius: (right: 3pt))[
  #text(weight: "bold", fill: pal.navy)[Năng lực số:]
  #ma.pos().map(m => {
    let (code, note) = if type(m) == array { m } else { (m, none) }
    [*NLS #code* (#nls-khung.at(code).at(0))#if note != none [ — #note]]
  }).join([; ])
]

// Dòng "Ứng dụng AI" cho mỗi hoạt động có dùng AI.
#let ai(gv: none, hs: none) = block(above: 2pt, below: 4pt, width: 100%,
  fill: pal.orange-mist, stroke: (left: 2.5pt + pal.orange), inset: (x: 7pt, y: 4pt), radius: (right: 3pt))[
  #text(weight: "bold", fill: pal.orange.darken(15%))[Ứng dụng AI:]
  #if gv != none [*GV* — #gv ]#if hs != none [*HS* — #hs]
]

#show: hdtnhn.with(
  truong: khbd-info.truong,
  to-chuyen-mon: khbd-info.to,
  giao-vien: khbd-info.gv,
  ten-bai-day: khbd-info.ten-bai,
  mon-hoc: khbd-info.mon,
  lop: khbd-info.lop,
  thoi-luong: khbd-info.thoi-luong,
  tiet-thu: khbd-info.tiet,
  ngay-soan: khbd-info.ngay-soan,
)

#place(hide(heading(level: 1, numbering: none, outlined: true)[PHẦN III. KẾ HOẠCH DẠY HỌC (THEO CÔNG VĂN 5512)]))

#muc-tieu

#k-thuc Biết giá trị định mức của thiết bị điện; nêu được nguyên lí của mạch nối tiếp, mạch song song; vận dụng định luật Ohm, công suất điện để tính toán, thiết kế và chế tạo mô hình nhà có tích hợp ít nhất một cảm biến điều khiển thiết bị điện.

#n-luc

- *Năng lực chung:*
  - _Tự chủ và tự học:_ Chủ động tra cứu linh kiện, học lập trình và sử dụng công cụ mô phỏng (Tinkercad, Wokwi); ghi nhật ký thử nghiệm trung thực.
  - _Giao tiếp và hợp tác:_ Phân công nhiệm vụ trong nhóm, thuyết trình 3 phút và phản biện 2 phút.
  - _Giải quyết vấn đề và sáng tạo:_ Đề xuất từ hai giải pháp trở lên, so sánh và lựa chọn giải pháp tối ưu; xử lí sự cố khi thử nghiệm.
- *Năng lực Khoa học tự nhiên:*
  - _Nhận thức khoa học tự nhiên:_ Giải thích nguyên lí hoạt động của cảm biến và mạch phân áp; tính điện trở, dòng điện, điện áp của mạch.
  - _Tìm hiểu thế giới tự nhiên:_ Thử nghiệm ít nhất 10 lần, thống kê số lần đạt, tính tỉ lệ thành công và rút ra nhận xét.
  - _Vận dụng kiến thức, kỹ năng đã học:_ Thiết kế, lắp ráp và hiệu chuẩn mạch Arduino (hoặc module cảm biến) cho mô hình nhà thông minh.
- *Năng lực số* (mức L8-L9, Thông tư 02/2025/TT-BGDĐT; Công văn 3456/BGDĐT-GDPT):
  - *NLS 1.1, 1.2:* Tìm kiếm, chọn lọc và đánh giá độ tin cậy của thông tin về cảm biến từ video, bài viết.
  - *NLS 1.3, 2.4:* Lưu trữ minh chứng có cấu trúc trên Google Drive; chọn công cụ số để hợp tác nhóm.
  - *NLS 3.1, 3.4:* Tạo slide, ảnh, video; lập trình Arduino (nhóm chọn phương án 1).
  - *NLS 5.1, 5.2, 5.3:* Nhận biết và xử lí lỗi kĩ thuật; chọn giải pháp công nghệ phù hợp; dùng công nghệ số sáng tạo để cải tiến sản phẩm.
  - *NLS 6.1, 6.2, 6.3:* Dùng công cụ AI hỗ trợ giải thích nguyên lí, tạo và sửa code; bảo vệ dữ liệu cá nhân khi dùng AI; kiểm chứng và so sánh kết quả của các công cụ AI.

#p-chat Trách nhiệm, cẩn thận, kỉ luật an toàn điện; trung thực khi ghi số liệu; hợp tác và tôn trọng ý kiến bạn.

#thiet-bi

- *Giáo viên:* Máy chiếu, máy tính; điện thoại kết nối Irun Webcam để chiếu bản vẽ của nhóm; phiếu hướng dẫn phân công; bảng tiêu chí; sản phẩm mẫu; đồng hồ đo đa năng, pin, dây nối; giấy A4; bài tập củng cố.
- *Google Drive:* Link 1 (thư mục tài liệu): video và bài viết hướng dẫn về cảm biến, hướng dẫn Arduino IDE - Tinkercad - Wokwi, hướng dẫn sử dụng AI và bảng prompt gợi ý, tiêu chí đánh giá nhóm, hướng dẫn nộp sản phẩm. Link 2: thư mục trống để các nhóm nộp minh chứng.
- *Học sinh (theo nhóm):* Sách KHTN 9, Công nghệ 8, Toán 8, Tin học 8; một vi điều khiển (Arduino Uno R3, Arduino Nano hoặc ESP32), cáp nạp, pin 9V, breadboard, dây cắm, cảm biến, LED/quạt/còi; vật liệu làm khung nhà; thiết bị có Internet để dùng AI.
- *Định hướng:* Học sinh đã học STEM từ lớp 6, 7, 8 nên *khuyến khích lập trình vi điều khiển (Uno, Nano giá rẻ hoặc ESP32)*; phương án module cảm biến lắp sẵn (Công nghệ 8) vẫn được chấp nhận nhưng không khuyến khích.
- *Yêu cầu chức năng:* tối thiểu 1 cảm biến (điểm chức năng tối đa 9/10); từ 2 cảm biến trở lên đạt 10/10. Không dùng cảm biến khí gas, nguồn 220V, lửa.

#note([ỨNG DỤNG AI TRONG DẠY VÀ HỌC —], [
  *Giáo viên dùng AI để:* soạn và chỉnh bảng prompt gợi ý theo từng cảm biến, câu hỏi củng cố, phương án phân hóa; luôn kiểm tra lại nội dung trước khi dùng.
  *Học sinh dùng AI để:* giải thích nguyên lí cảm biến, sinh code mẫu, tìm lỗi; bắt buộc ghi *nhật ký AI* (prompt - kết quả - cách kiểm chứng - điều chỉnh), không đưa thông tin cá nhân vào AI, và chịu trách nhiệm về sản phẩm cuối cùng.
], color: pal.orange)

#tien-trinh

*TIẾT 1 (45 phút, đầu tuần, sau khi học xong chủ đề Điện): Xác định vấn đề và lập bản thiết kế*

#hd([HOẠT ĐỘNG 1: Khởi động - đặt vấn đề (5 phút)])
#nls("1.1")
#a-muc-tieu Từ yêu cầu thực tiễn, học sinh hình thành vấn đề cần giải quyết: thiết kế mô hình nhà có mạch điện an toàn và có chức năng thông minh.

#b-noi-dung Xem video ngôi nhà thông minh; tìm các chức năng thông minh trong video; trả lời hai câu hỏi: các thiết bị điện trong nhà mắc nối tiếp hay song song? Làm sao thiết kế mô hình an toàn và có chức năng thông minh?

#c-san-pham Xác định được vấn đề: làm mô hình nhà thông minh.

#d-to-chuc

#b1 GV chia lớp thành các nhóm, chiếu video, nêu hai câu hỏi.

#b2 Nhóm thảo luận 2 phút, dùng kiến thức đoạn mạch nối tiếp - song song và Công nghệ 8.

#b3 Đại diện một nhóm báo cáo; nhóm khác góp ý, phản biện.

#b4 GV chốt: thiết bị mắc song song để mỗi thiết bị nhận đúng hiệu điện thế định mức; gợi ý các chức năng (đèn tự bật, báo ngập, quạt theo nhiệt độ). GV phát bảng tiêu chí, nhấn mạnh tiêu chí an toàn điện và chức năng thông minh.

#hd([HOẠT ĐỘNG 2: Nghiên cứu kiến thức nền (5 phút)])
#nls("1.1", "1.2")
#a-muc-tieu Xác định kiến thức cần ứng dụng: giá trị định mức, mạch nối tiếp - song song, điện trở hạ áp, nguyên lí cảm biến.

#b-noi-dung Nhóm trưởng phân công từng thành viên nghiên cứu một mảng trong Bảng nội dung kiến thức nền (sách KHTN 9, Công nghệ 8).

#c-san-pham Danh sách nội dung kiến thức cần thiết để làm mô hình.

#d-to-chuc

#b1 GV phát Bảng kiến thức nền, yêu cầu xác định nội dung trọng tâm.

#b2 Thành viên đọc sách, ghi ý chính; nhắc dùng nguồn thông tin đáng tin cậy.

#b3 Nhóm nêu nội dung trọng tâm.

#b4 GV bổ sung, chốt kiến thức nền.

#hd([HOẠT ĐỘNG 3: Lựa chọn phương án tạo chức năng thông minh (5 phút)])
#nls("5.2")
#a-muc-tieu Lựa chọn phương án công nghệ và cảm biến phù hợp với nhu cầu của nhóm.

#b-noi-dung Chọn một trong hai phương án: (1) lập trình Arduino (khuyến khích); (2) module cảm biến lắp sẵn (không khuyến khích). Dự kiến số cảm biến (tối thiểu 1; từ 2 để đạt điểm tối đa).

#c-san-pham Phương án và cảm biến của nhóm được xác nhận.

#d-to-chuc

#b1 GV giới thiệu hai phương án, lưu ý các loại cảm biến không được chọn (gas, 220V, cháy nổ).

#b2 Nhóm thảo luận, so sánh ưu - nhược điểm.

#b3 Nhóm xác nhận lựa chọn.

#b4 GV định hướng, khuyến khích Arduino và từ hai cảm biến.

#hd([HOẠT ĐỘNG 4: Phân công nhiệm vụ, lập bản thiết kế (22 phút)])
#nls("2.4", "1.3", "5.2")
#a-muc-tieu Phân công hợp lí; phác thảo ngôi nhà, sơ đồ mạch, vị trí thiết bị; đề xuất, phân tích, chọn phương án tối ưu.

#b-noi-dung Nội dung 1 (5 phút): phân công nhiệm vụ (mua/mượn thiết bị, làm mô hình, vẽ mạch - đấu dây - lập trình hoặc thử nghiệm cảm biến, làm file thuyết trình, thuyết trình). Nội dung 2 (17 phút): vẽ bản thiết kế trên giấy A4, ghi chú vị trí cảm biến, mạch xử lí, dây nguồn.

#c-san-pham Bảng phân công nhiệm vụ; bản vẽ phác thảo của nhóm.

#d-to-chuc

#b1 GV công bố nhóm trưởng, thư kí; thông báo có 01 tuần làm mô hình tại nhà, báo cáo vào tiết này của tuần sau; phát bản hướng dẫn phân công và giấy A4; nhấn mạnh không chọn cảm biến gas.

#b2 Nhóm phân công (3 phút) và vẽ thiết kế (10 phút); GV quan sát, hướng dẫn, dùng điện thoại - Irun Webcam chiếu bản vẽ lên tivi.

#b3 Đại diện nhóm trình bày bảng phân công và ý tưởng thiết kế; nhóm khác góp ý.

#b4 GV chốt phương án; dặn xem kĩ giá trị định mức của cảm biến để cấp nguồn; cần hạ điện áp thì mắc điện trở phù hợp nối tiếp. Nhóm trưởng chụp bảng phân công, bản vẽ gửi lên Drive của nhóm.

#hd([HƯỚNG DẪN VỀ NHÀ (8 phút)])
#nls("1.3", ("6.1", "làm quen công cụ AI và công thức prompt"), ("6.2", "quy tắc dùng AI an toàn, có trách nhiệm"), "4.2")
#ai(gv: [giới thiệu công cụ AI (Gemini, Copilot, ChatGPT…) và bảng prompt gợi ý trong thư mục Link 1.], hs: [đọc hướng dẫn dùng AI; mỗi nhóm dùng chung một tài khoản Google; không nhập họ tên, ảnh mặt, thông tin riêng tư vào AI.])

GV công bố link Drive và cách gửi link (Zalo/email); hướng dẫn mở thư mục tài liệu: video - tài liệu về cảm biến, mẫu thống kê kết quả thử nghiệm, hướng dẫn Arduino IDE - Tinkercad - Wokwi, hướng dẫn dùng AI, tiêu chí đánh giá nhóm. Dặn mỗi nhóm gửi file thuyết trình cho GV trước giờ báo cáo ít nhất 01 buổi; thời gian báo cáo mỗi nhóm không quá 5 phút (3 phút trình bày, 2 phút phản biện).

*GIỮA HAI TIẾT (01 tuần, ngoài lớp): Chế tạo - thử nghiệm*

#hd([HOẠT ĐỘNG 5 - 7: Lên kế hoạch, hoàn thiện thiết kế, làm mô hình và thử nghiệm])
#nls(("3.4", "nhóm chọn Arduino"), ("6.1", "dùng AI giải thích nguyên lí"), ("6.2", "dùng AI sinh code, tìm lỗi"), ("6.3", "kiểm chứng, so sánh kết quả của các AI"), "5.1", "5.3", "1.3")
#ai(gv: [chuẩn bị bảng prompt theo từng cảm biến; trả lời thắc mắc của nhóm; xem nhật ký AI để góp ý.], hs: [viết prompt gồm 4 thành phần (Vai trò - Mục tiêu - Bối cảnh/dữ liệu - Định dạng đầu ra); chạy thử code; so sánh kết quả ít nhất hai công cụ AI hoặc một AI với video/tài liệu; ghi nhật ký AI.])
#a-muc-tieu Chế tạo, lập trình, thử nghiệm và tinh chỉnh mô hình; lưu minh chứng đầy đủ.

#b-noi-dung (1) Làm mô hình nhà (chưa cố định mái). (2) Phương án lập trình: vẽ mạch trên Tinkercad/Wokwi; đấu dây; viết code (tra cứu code mẫu, dùng AI); thử nghiệm, dùng AI sửa lỗi; thống kê ít nhất 10 lần (Toán 8). Phương án module: lắp mạch, vặn biến trở tinh chỉnh, thử nghiệm ít nhất 10 lần theo mẫu. (3) Lắp mạch vào mô hình, cố định dây gọn gàng, cố định mái. (4) Kiểm tra mối nối, công tắc. (5) Làm slide báo cáo.

#c-san-pham Mô hình hoàn chỉnh; sơ đồ mô phỏng; code; bảng thống kê; nhật ký AI; slide; ảnh/video quá trình (lưu Drive).

#d-to-chuc GV theo dõi tiến độ qua nhóm lớp, nhắc an toàn điện; nhóm trưởng cập nhật thư mục Drive; quá trình thử nghiệm chụp ảnh/quay video.

*TIẾT 2 (45 phút, đầu tuần kế tiếp): Báo cáo sản phẩm và kiểm nghiệm sản phẩm*

#hd([KHỞI ĐỘNG: Báo cáo sự chuẩn bị (5 phút)])
GV yêu cầu các nhóm báo cáo sự chuẩn bị sản phẩm, đặt mô hình lên bàn trưng bày, kiểm tra an toàn điện; GV chuẩn bị ổ điện rời hỗ trợ.

#hd([HOẠT ĐỘNG 1: Báo cáo sản phẩm (32 phút)])
#nls("3.1", "1.2", ("6.3", "phân tích hiệu quả AI đã dùng"), ("3.4", "nhóm chọn Arduino"))
#a-muc-tieu Trình bày sản phẩm và quá trình làm; thể hiện năng lực của từng thành viên: tạo slide, ảnh, video; chọn lọc thông tin về cảm biến; lập trình; đánh giá cách dùng AI.

#b-noi-dung Mỗi nhóm thuyết trình theo 7 phần: danh sách - vấn đề - giải pháp - nguyên lí - nhật ký chế tạo - bài học - hướng phát triển; nêu cách dùng AI và cách kiểm chứng.

#c-san-pham Nội dung báo cáo; phiếu chấm rubric của GV.

#d-to-chuc

#b1 GV mời lần lượt từng nhóm mang mô hình lên thuyết trình; nhắc thời gian 3 + 2 phút.

#b2 Nhóm trình bày, chạy thử mô hình cho lớp quan sát.

#b3 Nhóm khác theo dõi, góp ý; nhóm báo cáo phản biện.

#b4 GV nhận xét, công bố điểm từng nhóm; các nhóm thảo luận rút kinh nghiệm để nộp lại vào tuần sau.

#hd([HOẠT ĐỘNG 2: Luyện tập củng cố (8 phút)])
#a-muc-tieu Kiểm tra kiến thức mạch điện, đo đạc, thống kê sau khi làm sản phẩm.

#b-noi-dung Làm bài tập trong phiếu học tập (đoạn mạch, giá trị định mức, năng lượng); phát phiếu đánh giá chéo thành viên.

#c-san-pham Đáp án phiếu học tập; phiếu đánh giá cá nhân.

#d-to-chuc

#b1 GV phát phiếu học tập và phiếu đánh giá cá nhân.

#b2 Học sinh làm bài cá nhân.

#b3 Học sinh nêu đáp án một số câu.

#b4 GV chốt kiến thức.

*SAU TIẾT 2 (ngoài lớp): Rút kinh nghiệm, cải tiến*

#hd([HOẠT ĐỘNG 10: Rút kinh nghiệm và cải tiến sản phẩm])
#nls("5.3", "1.3", ("5.2", "xác định điều cần cải thiện"))
Học sinh thảo luận góp ý của nhóm khác và GV; khắc phục tồn tại, nêu hướng phát triển; nộp lại và hoàn thiện thư mục minh chứng trên Drive.

#v(0.5cm)
#block(breakable: false, sign(khoang-ky: 2.5cm))
