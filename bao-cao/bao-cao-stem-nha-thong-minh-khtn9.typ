#set page(
  paper: "a4",
  margin: (top: 20mm, bottom: 20mm, left: 25mm, right: 20mm),
  numbering: "1",
  number-align: center,
)
#set text(font: ("Times New Roman",), size: 13pt, lang: "vi")
#set par(justify: true, leading: 0.62em, spacing: 0.75em)
#set heading(numbering: (..nums) => {
  let p = nums.pos()
  if p.len() == 1 {
    numbering("I.", ..p)
  } else if p.len() == 2 {
    numbering("1.", p.at(1))
  } else if p.len() == 3 {
    numbering("1.1.", p.at(1), p.at(2))
  } else {
    numbering("1.1.1.", ..p.slice(1))
  }
})
#show heading.where(level: 1): set text(size: 14pt, weight: "bold", fill: rgb(31, 56, 100))
#show heading.where(level: 2): set text(size: 13pt, weight: "bold", fill: rgb(36, 59, 83))
#show heading.where(level: 3): set text(size: 12.5pt, weight: "bold", fill: rgb(51, 78, 104))
#show heading.where(level: 1): it => block(above: 1.3em, below: 0.6em, it)
#show heading.where(level: 2): it => block(above: 1em, below: 0.45em, it)
#let tfill = (x, y) => if y == 0 { rgb(231, 238, 247) } else { white }
#let table-stroke = 0.5pt + rgb(190, 202, 217)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 8pt,
  align(center)[
    UBND PHƯỜNG HẠNH THÔNG \
    *TRƯỜNG THCS PHAN VĂN TRỊ* \
    TỔ KHTN – CÔNG NGHỆ
  ],
  align(center)[
    *CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM* \
    *Độc lập – Tự do – Hạnh phúc* \
    #line(length: 5cm, stroke: 0.5pt)
  ],
)
#v(1.5em)
#align(center)[
  #text(size: 17pt, weight: "bold", fill: rgb(31, 56, 100))[KẾ HOẠCH BÀI DẠY STEM] \
  #v(0.5em)
  #text(size: 12pt)[Môn đăng ký dự thi: Khoa học tự nhiên 9] \
  #v(0.4em)
  #text(size: 16pt, weight: "bold")[“THIẾT KẾ MẠCH ĐIỆN CHO MÔ HÌNH NHÀ THÔNG MINH”] \
  #v(0.4em)
  #text(size: 12pt)[Hội thi thiết kế chủ đề dạy học STEM/STEAM, chủ đề dạy học số] \
  #text(size: 12pt)[cấp Thành phố năm học 2026–2027]
]

#pagebreak()
#outline(title: [MỤC LỤC], depth: 3)
#pagebreak()

= Phần tổng quan

== Thông tin giáo viên và đơn vị

#table(
  columns: (4.4cm, 1fr),
  inset: 5pt,
  stroke: table-stroke,
  fill: tfill,
  [*Thông tin*], [*Nội dung*],
  [Họ và tên], [Phan Anh],
  [Năm sinh, giới tính], [Bổ sung theo hồ sơ đăng ký dự thi],
  [Bộ môn đăng ký], [Khoa học tự nhiên],
  [Thâm niên công tác], [Bổ sung theo hồ sơ hiện hành],
  [Đơn vị], [Trường THCS Phan Văn Trị, phường Hạnh Thông, Thành phố Hồ Chí Minh],
  [Số điện thoại liên lạc cá nhân], [Bổ sung theo hồ sơ đăng ký dự thi],
)

== Tên và tóm lược nội dung chủ đề

Tên chủ đề: *Thiết kế mạch điện cho mô hình nhà thông minh*.

Chủ đề đăng ký dự thi thuộc *một môn học duy nhất: Khoa học tự nhiên 9*. Học sinh vận dụng kiến thức về dòng điện, mạch điện, giá trị định mức, năng lượng và công suất điện để thiết kế, lắp ráp và thử nghiệm mạch điện một chiều điện áp thấp cho mô hình nhà. Nhóm lựa chọn một hoặc nhiều chức năng phù hợp, chẳng hạn điều khiển đèn theo ánh sáng, quạt theo nhiệt độ hoặc cảnh báo nước. Công nghệ, Tin học, Toán và Mĩ thuật được huy động như kiến thức hỗ trợ cho nhiệm vụ Khoa học tự nhiên, không đăng ký thành môn dự thi riêng.

Sản phẩm dự kiến gồm mô hình nhà, bản vẽ bố trí thiết bị, sơ đồ mạch, nhật ký thử nghiệm và phần trình bày giải pháp. Nhóm có thể điều khiển bằng vi điều khiển hoặc mô-đun cảm biến phù hợp; mọi linh kiện phải dùng đúng điện áp định mức.

== Vị trí kiến thức nền và kiến thức hình thành

*Kiến thức, kĩ năng nền:* học sinh đã học các nội dung về đo lường và an toàn; dòng điện, mạch điện nối tiếp và song song; giá trị định mức của thiết bị điện; năng lượng và công suất điện trong chương trình Khoa học tự nhiên. Học sinh sử dụng thêm kĩ năng đọc bản vẽ, thống kê kết quả, tìm kiếm thông tin số, lập trình cơ bản và thiết kế mô hình đã học ở các môn/lớp trước.

*Kiến thức, kĩ năng hình thành sau chủ đề:* học sinh giải thích được sơ đồ và nguyên lí hoạt động của mạch đã chọn; lựa chọn nguồn và tải theo định mức; lắp ráp, kiểm tra và vận hành mạch điện áp thấp; lập kế hoạch thử nghiệm, ghi số liệu, tính tỉ lệ kết quả phù hợp và đề xuất cải tiến dựa trên bằng chứng.

Tên bài, số trang và bộ sách giáo khoa dùng để xác định vị trí bài học cần được đối chiếu với phân phối chương trình và sách giáo khoa Khoa học tự nhiên 9 của nhà trường trước khi nộp hồ sơ.

== Phẩm chất và năng lực học sinh

+ *Năng lực khoa học tự nhiên:* nhận thức và vận dụng kiến thức điện học; tìm hiểu tự nhiên qua thiết kế, đo, thử nghiệm và giải thích kết quả.
+ *Năng lực chung:* tự chủ, tự học; giao tiếp, hợp tác; giải quyết vấn đề và sáng tạo.
+ *Năng lực số:* tìm kiếm, chọn lọc thông tin; sử dụng công cụ số để thiết kế hoặc lập trình; tạo sản phẩm trình chiếu; kiểm tra độ tin cậy của nội dung do công cụ số hoặc AI gợi ý.
+ *Phẩm chất:* chăm chỉ, trách nhiệm, trung thực khi ghi số liệu; cẩn thận và tuân thủ quy tắc an toàn điện.

== Thời lượng thực hiện

Chủ đề được tổ chức trong *02 tiết học trên lớp*. Tiết 1 dành cho xác định vấn đề, nghiên cứu kiến thức nền và thiết kế giải pháp; Tiết 2 dành cho báo cáo, thảo luận, đánh giá và củng cố. Giữa hai tiết, học sinh thực hiện nhiệm vụ chế tạo, thử nghiệm và hoàn thiện sản phẩm ngoài lớp học trong khoảng một tuần; thời gian này là thời gian tự học theo nhiệm vụ, không tính thành tiết dạy bổ sung.

== Không gian thực hiện

Trong lớp học hoặc phòng học bộ môn để giao nhiệm vụ, thiết kế và báo cáo; ngoài lớp học để nhóm chế tạo, thử nghiệm sản phẩm tại nơi phù hợp, dưới sự hướng dẫn và giám sát của giáo viên, gia đình. Không thử nghiệm tại nơi có điện lưới hở, nước gần thiết bị điện hoặc nguy cơ cháy nổ.

== Mục tiêu cần đạt

Sau chủ đề, học sinh có thể:

+ Nêu và vận dụng được kiến thức về mạch điện, giá trị định mức, năng lượng và công suất điện để giải thích lựa chọn linh kiện và cách mắc mạch.
+ Đề xuất, so sánh và chọn giải pháp đáp ứng yêu cầu của mô hình; thể hiện được thiết kế bằng bản vẽ bố trí và sơ đồ mạch có chú thích.
+ Lắp ráp, kiểm tra và vận hành được mạch điện một chiều điện áp thấp theo đúng định mức; trình bày được chức năng của cảm biến hoặc bộ điều khiển đã chọn.
+ Lập bảng thử nghiệm, thực hiện ít nhất 10 lần thử cho mỗi cảm biến được đánh giá, ghi kết quả trung thực và dùng kết quả để nhận xét, điều chỉnh giải pháp.
+ Hợp tác để hoàn thành sản phẩm; báo cáo và bảo vệ được lựa chọn thiết kế bằng lập luận, số liệu và minh chứng.
+ Tuân thủ an toàn điện và sử dụng có trách nhiệm các nguồn thông tin, công cụ số và AI.

#pagebreak()
= Phần kế hoạch dạy học

== Chuẩn bị và tổ chức chủ đề

=== Tình huống và nhiệm vụ học tập

Giáo viên nêu tình huống: một ngôi nhà cần có các thiết bị điện cơ bản và có thể bổ sung chức năng tự động phù hợp. Mỗi nhóm hãy thiết kế mạch cho mô hình nhà, giải thích lựa chọn linh kiện, chế tạo và thử nghiệm chức năng đã chọn, sau đó báo cáo bằng bản vẽ, sản phẩm và số liệu.

Sản phẩm tối thiểu của mỗi nhóm: mô hình hoặc bố trí mô phỏng; sơ đồ mạch; giải thích nguyên lí; bảng thử nghiệm; trình bày kết quả và một đề xuất cải tiến. Nhóm có thể dùng vi điều khiển hoặc mô-đun cảm biến lắp sẵn, nhưng phải giải thích được cách hoạt động và kiểm chứng sản phẩm.

=== Thiết bị và học liệu

#table(
  columns: (0.8cm, 4.6cm, 1fr),
  inset: 5pt,
  align: (center, left, left),
  stroke: table-stroke,
  fill: tfill,
  [*STT*], [*Thiết bị, học liệu*], [*Mục đích sử dụng*],
  [1], [Máy tính, máy chiếu; phiếu học tập và phiếu đánh giá], [Giao nhiệm vụ, hướng dẫn thiết kế và đánh giá],
  [2], [Arduino Uno R3, cáp dữ liệu và nguồn phù hợp], [Phương án điều khiển bằng vi điều khiển],
  [3], [Mô-đun điều khiển hoặc cảm biến phù hợp: ánh sáng, nhiệt độ, nước], [Nhận biết điều kiện và điều khiển tải],
  [4], [Đèn LED, quạt điện áp thấp, dây nối, breadboard], [Tải và linh kiện tạo mạch mẫu],
  [5], [Vật liệu làm mô hình, băng dính cách điện, dụng cụ đo phù hợp], [Chế tạo, cố định và kiểm tra sản phẩm],
  [6], [Phần mềm mô phỏng/lập trình và công cụ trình chiếu], [Thiết kế, thử nghiệm trước và báo cáo],
)

Nhà trường chuẩn bị 06 bộ Arduino Uno R3 cùng cáp và nguồn theo kế hoạch thiết bị hiện có. Số lượng mô-đun, cảm biến và linh kiện còn lại cần kiểm kê trước khi tổ chức; giáo viên thông báo rõ thiết bị được cấp, thiết bị nhóm tự chuẩn bị và phương án thay thế.

=== Nguyên tắc an toàn

+ Chỉ dùng nguồn điện một chiều điện áp thấp, không vượt quá định mức của bo mạch, cảm biến và tải; không đấu nối hoặc thử nghiệm với điện xoay chiều 220 V.
+ Ngắt nguồn trước khi thay đổi dây nối; kiểm tra cực tính và sơ đồ trước khi cấp nguồn. Không chạm vào mạch khi tay ướt.
+ Không đặt nước gần bo mạch, nguồn điện hoặc mối nối. Nếu thử cảm biến nước, chỉ đưa đầu cảm biến vào vùng thử được kiểm soát và giữ thiết bị điện tử khô ráo.
+ Không dùng cảm biến khí gas, cảm biến lửa hoặc thiết bị có nguy cơ cháy nổ; không dùng tải công suất lớn.
+ Khi linh kiện nóng bất thường, có mùi khét hoặc dây hở, ngắt nguồn ngay và báo giáo viên/người lớn.

== Tiến trình dạy học

=== Tiết 1 – Xác định vấn đề và thiết kế giải pháp

Thời lượng: 01 tiết. Bảng dưới đây phân bổ theo tiết học 45 phút; giáo viên điều chỉnh theo thời lượng tiết và kế hoạch giáo dục của đơn vị, bảo đảm tổng thời lượng dạy học không quá 02 tiết.

#table(
  columns: (2.5cm, 1.6cm, 1fr, 1fr),
  inset: 5pt,
  stroke: table-stroke,
  fill: tfill,
  [*Hoạt động*], [*Phút*], [*Tổ chức hoạt động học*], [*Sản phẩm/đánh giá*],
  [Giao nhiệm vụ, nêu vấn đề], [5], [GV đưa tình huống nhà ở và yêu cầu thiết kế mạch cho mô hình; công bố sản phẩm, tiêu chí và giới hạn an toàn. HS xác định vấn đề, nêu nhu cầu của mô hình và câu hỏi cần giải quyết.], [Phát biểu vấn đề; câu hỏi thiết kế],
  [Ôn kiến thức nền], [8], [GV gợi nhắc mạch điện, định mức và an toàn. HS làm việc cá nhân/cặp đôi, chọn kiến thức cần dùng; GV kiểm tra nhanh và giải đáp điểm chưa rõ.], [Phiếu ôn tập; câu trả lời],
  [Đề xuất, chọn giải pháp], [15], [GV hướng dẫn nhóm so sánh giải pháp điều khiển bằng vi điều khiển hoặc mô-đun có sẵn. HS xác định chức năng, linh kiện, nguồn, tải và cách kiểm tra; phác thảo sơ đồ mạch và vị trí thiết bị.], [Bảng so sánh phương án; bản vẽ/sơ đồ mạch sơ bộ],
  [Báo cáo, thảo luận thiết kế], [10], [Đại diện một số nhóm trình bày ngắn; nhóm khác đặt câu hỏi về tính khả thi, định mức và an toàn. GV gợi mở để HS điều chỉnh lựa chọn.], [Ý kiến phản hồi; thiết kế được cập nhật],
  [Kết luận, giao nhiệm vụ tiếp theo], [7], [GV chốt yêu cầu sản phẩm, quy tắc an toàn và cách ghi dữ liệu. HS hoàn thiện phân công, kế hoạch một tuần và danh sách vật liệu; GV giao nhiệm vụ chế tạo, thử nghiệm và nhắc kênh hỗ trợ.], [Phiếu phân công; kế hoạch tiến độ; danh sách vật liệu],
)

=== Nhiệm vụ ngoài lớp học giữa hai tiết

Trong khoảng một tuần, nhóm hoàn thiện mô hình, lắp mạch, kiểm tra cách điện và thử chức năng. Mỗi cảm biến được đánh giá phải có ít nhất 10 lần thử; nhóm ghi điều kiện thử, kết quả từng lần, số lần đáp ứng yêu cầu và các điều chỉnh đã thực hiện. Giáo viên theo dõi tiến độ qua sản phẩm trung gian hoặc hình ảnh, nhắc học sinh không tự xử lí tình huống mất an toàn.

Hồ sơ nhóm mang đến tiết 2 gồm: sản phẩm hoặc video vận hành; bản vẽ và sơ đồ mạch hoàn thiện; bảng thử nghiệm; phân công và nhật ký chế tạo; nội dung trình bày. Nếu nhóm dùng AI hoặc nguồn trực tuyến, nhóm nêu nội dung đã tham khảo và cách kiểm chứng, không nộp nguyên văn đầu ra chưa kiểm tra.

=== Tiết 2 – Báo cáo, đánh giá và cải tiến

Thời lượng: 01 tiết. Với mỗi lớp có 05 nhóm, mỗi nhóm trình bày 03 phút và trao đổi/phản biện 02 phút, tổng cộng 25 phút cho phần báo cáo nhóm.

#table(
  columns: (2.5cm, 1.6cm, 1fr, 1fr),
  inset: 5pt,
  stroke: table-stroke,
  fill: tfill,
  [*Hoạt động*], [*Phút*], [*Tổ chức hoạt động học*], [*Sản phẩm/đánh giá*],
  [Giao nhiệm vụ báo cáo], [5], [GV nhắc thứ tự trình bày, thời lượng và tiêu chí. HS chuẩn bị sản phẩm, phân vai người trình bày và người minh họa kết quả thử nghiệm.], [Sản phẩm sẵn sàng; vai trò thành viên],
  [Báo cáo, thảo luận], [25], [Mỗi nhóm trình bày thiết kế, nguyên lí, quá trình thử nghiệm, kết quả và điều chỉnh trong 03 phút; dành 02 phút trả lời câu hỏi. HS nhóm khác nhận xét bằng căn cứ từ sơ đồ và dữ liệu. GV đánh giá theo rubric.], [Báo cáo; câu hỏi và phản hồi; phiếu rubric],
  [Chia sẻ, kết nối, mở rộng], [8], [GV kết nối các cách chọn mạch và cảm biến; hướng dẫn HS so sánh ưu điểm, giới hạn, độ an toàn và độ tin cậy của các cách thử. HS đề xuất thay đổi có căn cứ.], [Nhận xét so sánh; đề xuất cải tiến],
  [Kết luận, đánh giá, giao nhiệm vụ tiếp theo], [7], [GV xác nhận kiến thức Khoa học tự nhiên, phản hồi quá trình và sản phẩm. HS tự đánh giá, hoàn thiện kết luận và nộp minh chứng; GV giao nhiệm vụ củng cố hoặc cải tiến nếu cần.], [Kết luận cá nhân/nhóm; phiếu tự đánh giá],
)

== Kiểm tra, đánh giá

=== Đánh giá trong quá trình học

+ Quan sát mức độ tham gia, hợp tác, tuân thủ an toàn và khả năng giải thích lựa chọn.
+ Kiểm tra bản vẽ, sơ đồ mạch, phân công nhiệm vụ và kế hoạch thử nghiệm trước khi nhóm chế tạo.
+ Dùng câu hỏi và phản hồi đồng đẳng để đánh giá lập luận, khả năng tiếp nhận góp ý và điều chỉnh thiết kế.

=== Đánh giá sản phẩm nhóm

Tổng điểm rubric là 100 điểm. Tiêu chí an toàn là điều kiện bắt buộc: nếu nhóm vi phạm an toàn, GV dừng thử nghiệm và yêu cầu khắc phục trước khi tiếp tục; điểm rubric không thay thế quy trình xử lí vi phạm của nhà trường.

#table(
  columns: (3.4cm, 1fr, 1.3cm),
  inset: 5pt,
  stroke: table-stroke,
  fill: tfill,
  [*Tiêu chí*], [*Biểu hiện và cách tính điểm*], [*Điểm tối đa*],
  [Xác định vấn đề, chọn giải pháp], [Nêu đúng nhu cầu (4); so sánh phương án (3); chọn phương án phù hợp và nêu căn cứ (3).], [10],
  [Bản vẽ và sơ đồ mạch], [Bố trí thiết bị trên bản vẽ (4); sơ đồ thể hiện đúng nguồn, tải, cảm biến/bộ điều khiển và các kết nối (6).], [10],
  [Chế tạo và an toàn], [Chọn linh kiện đúng định mức (8); đấu nối chắc chắn, gọn (7); mô hình phù hợp thiết kế (5); tuân thủ an toàn (5).], [25],
  [Thử nghiệm và minh chứng], [Nêu cách thử (4); đủ ít nhất 10 lần cho mỗi cảm biến (6); ghi và tính kết quả (5); nhận xét, điều chỉnh dựa trên dữ liệu (5).], [20],
  [Chức năng và giải thích khoa học], [Chức năng đáp ứng yêu cầu thiết kế (10); giải thích nguyên lí, lựa chọn linh kiện và giới hạn kết quả (10).], [20],
  [Báo cáo và hợp tác], [Trình bày có cấu trúc và minh chứng (7); trả lời câu hỏi (5); thể hiện sự tham gia, phối hợp (3).], [15],
  [*Tổng*], [], [*100*],
)

GV ghi điểm từng tiêu chí vào phiếu chấm nhóm. Điểm cá nhân được xem xét qua mức độ hoàn thành nhiệm vụ, tự đánh giá và phản hồi của các thành viên; không suy ra điểm cá nhân chỉ từ điểm sản phẩm chung.

== Hướng dẫn học sinh

=== Nhiệm vụ và phân công nhóm

Nhóm thống nhất chức năng cần làm, chọn giải pháp, lập danh sách vật liệu và phân công theo năng lực/thời gian của từng thành viên. Có thể phân công các việc: thiết kế mô hình; vẽ sơ đồ; chuẩn bị linh kiện; lắp ráp; lập trình/hiệu chỉnh; thử nghiệm, ghi dữ liệu; chụp ảnh và thuyết trình. Mỗi thành viên cần biết nhiệm vụ, thời hạn và minh chứng phải nộp.

=== Ghi chép thử nghiệm

Với mỗi cảm biến, nhóm ghi tên cảm biến, điều kiện/giá trị kích hoạt dự kiến, cách thử, kết quả của từng lần, số lần đáp ứng yêu cầu và điều chỉnh sau thử nghiệm. Tỉ lệ đáp ứng được tính bằng số lần đáp ứng yêu cầu chia cho tổng số lần thử, nhân 100%. Không thay dữ liệu thiếu bằng số 0; không khẳng định cảm biến chính xác nếu không có thiết bị chuẩn hoặc phương pháp đo phù hợp.

=== Sử dụng công cụ số và AI

+ Không nhập thông tin cá nhân của học sinh vào công cụ AI.
+ Dùng AI để tham khảo cách giải thích, sơ đồ hoặc mã; tự đọc, kiểm tra thông số và thử nghiệm an toàn trước khi sử dụng.
+ Ghi lại nội dung AI hỗ trợ, phần nhóm đã dùng/sửa và cách kiểm chứng. Chịu trách nhiệm về sản phẩm và nội dung báo cáo.
+ Không đưa mã hoặc sơ đồ chưa hiểu, chưa kiểm tra vào sản phẩm; không trích dẫn kết quả AI như dữ liệu thực nghiệm.

== Tài liệu tham khảo

+ Sở Giáo dục và Đào tạo Thành phố Hồ Chí Minh, *Kế hoạch Hội thi thiết kế chủ đề dạy học STEM/STEAM, chủ đề dạy học số cấp Thành phố năm học 2026–2027*, tài liệu do người dự thi cung cấp.
+ Bộ Giáo dục và Đào tạo, *Chương trình giáo dục phổ thông 2018 – môn Khoa học tự nhiên*.
+ Sách giáo khoa Khoa học tự nhiên 9 và tài liệu hướng dẫn giáo viên thuộc bộ sách nhà trường sử dụng; đối chiếu chính xác tên bài, trang và nhà xuất bản trước khi nộp.
+ Tài liệu, phiếu học tập và hướng dẫn sử dụng thiết bị do giáo viên chuẩn bị cho chủ đề.

#pagebreak()
== Phụ lục: Phiếu học tập và minh chứng

=== Phiếu thiết kế và phân công nhóm

*Lớp:* ....................    *Nhóm:* ....................    *Ngày:* ....................

*Vấn đề/chức năng nhóm chọn:* .........................................................................

*Giải pháp đã cân nhắc và lí do chọn:* ............................................................

*Nguồn điện, tải, cảm biến/bộ điều khiển dự kiến:* ............................................

*Mô tả hoặc đính kèm bản vẽ mô hình và sơ đồ mạch:* ........................................

#table(
  columns: (0.8cm, 3.2cm, 1fr, 2.5cm),
  inset: 5pt,
  stroke: table-stroke,
  fill: tfill,
  [*STT*], [*Thành viên*], [*Nhiệm vụ*], [*Thời hạn/minh chứng*],
  [1], [], [], [],
  [2], [], [], [],
  [3], [], [], [],
  [4], [], [], [],
  [5], [], [], [],
  [6], [], [], [],
  [7], [], [], [],
)

=== Phiếu ghi kết quả thử nghiệm

*Nhóm:* ....................    *Tên cảm biến:* ....................    *Điều kiện thử:* ....................

*Ngưỡng/chức năng dự kiến:* .........................................................................

#table(
  columns: (0.8cm, 2.2cm, 2.5cm, 2.5cm, 2.5cm, 1fr),
  inset: 4pt,
  stroke: table-stroke,
  fill: tfill,
  [*Lần*], [*Điều kiện thử*], [*Kết quả quan sát/đo*], [*Đáp ứng yêu cầu?*], [*Điều chỉnh nếu có*], [*Ghi chú*],
  [1], [], [], [], [], [],
  [2], [], [], [], [], [],
  [3], [], [], [], [], [],
  [4], [], [], [], [], [],
  [5], [], [], [], [], [],
  [6], [], [], [], [], [],
  [7], [], [], [], [], [],
  [8], [], [], [], [], [],
  [9], [], [], [], [], [],
  [10], [], [], [], [], [],
)

*Số lần thử:* ..........    *Số lần đáp ứng yêu cầu:* ..........    *Tỉ lệ:* ..........%

*Nhận xét dựa trên dữ liệu và hướng cải tiến:* ...................................................

=== Phiếu tự đánh giá và đánh giá chéo

Đánh dấu mức độ đóng góp của từng thành viên dựa trên nhiệm vụ đã thống nhất và minh chứng thực hiện; trao đổi với giáo viên khi có ý kiến khác nhau.

#table(
  columns: (0.8cm, 2.8cm, 1fr, 1fr, 1fr, 1fr),
  inset: 5pt,
  stroke: table-stroke,
  fill: tfill,
  [*STT*], [*Thành viên*], [*Hoàn thành nhiệm vụ*], [*Hợp tác*], [*Đóng góp giải pháp*], [*Minh chứng/nhận xét*],
  [1], [], [], [], [], [],
  [2], [], [], [], [], [],
  [3], [], [], [], [], [],
  [4], [], [], [], [], [],
  [5], [], [], [], [], [],
  [6], [], [], [], [], [],
  [7], [], [], [], [], [],
)

=== Danh mục minh chứng cần nộp

+ Bản vẽ mô hình, sơ đồ mạch và giải thích nguyên lí.
+ Ảnh hoặc video quá trình chế tạo và thử nghiệm; bảo đảm không để lộ thông tin cá nhân không cần thiết.
+ Bảng thử nghiệm của từng cảm biến được đánh giá và nhật ký điều chỉnh.
+ Slide hoặc tài liệu báo cáo; phiếu phân công và tự đánh giá.
+ Phiếu đánh giá rubric của giáo viên.

Minh chứng chỉ được đánh dấu đã nộp sau khi kiểm tra tệp mở được, đúng nhóm và có nội dung tương ứng. Thông tin định danh, dữ liệu điểm và hình ảnh học sinh được quản lí theo quy định của nhà trường.
