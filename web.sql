-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 05, 2024 lúc 06:31 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`username`, `password`, `createAt`, `updateAt`) VALUES
('admin', '$2y$10$EScz1sAqHnH5nXDozkzmIODdyIknUocrdqxhlZQ6wUWhrgETe8kZG', '2024-05-05 12:12:38', '2024-05-05 12:12:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `approved` tinyint(1) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `date`, `approved`, `content`, `news_id`, `user_id`, `parent`) VALUES
(1, '2021-12-12 00:00:00', 1, 'Bất ngờ quá', 1, 'admin@hcmut.edu.vn', NULL),
(2, '2021-12-12 00:00:00', 1, 'Bất ngờ quá', 1, 'admin@hcmut.edu.vn', NULL),
(3, '2021-12-12 00:00:00', 0, 'Không thể tin được', 2, 'user@hcmut.edu.vn', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `createAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `company`
--

INSERT INTO `company` (`id`, `name`, `address`, `createAt`, `updateAt`) VALUES
(1, 'Đại học Bách Khoa CS1', '268 Lý Thường Kiệt, Phường 14, Quận 10, TPHCM', NULL, NULL),
(2, 'Đại học Bách Khoa CS2', 'Làng đại học, Thủ Đức', NULL, NULL),
(3, 'Đại học Bách Khoa Đà Lạt', 'Đà Lạt', NULL, NULL),
(4, 'Đại học Bách Khoa Đà Nẵng', 'Đà Nẵng', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `status`, `date`, `description`, `content`, `title`) VALUES
(1, 1, '2021-11-11 00:00:00', 'TTO - TP.HCM không lập lại các chốt kiểm soát để kiểm tra di biến động dân cư như trước đây. Tuy vậy người dân từ các tỉnh thành đến TP.HCM sẽ phải đăng ký tạm trú tạm vắng để địa phương có biện pháp kiểm soát.', 'UBND TP.HCM yêu cầu tăng cường kiểm soát chặt chẽ di biến động dân cư. Các địa phương phải nắm chắc tình hình người dân khi ra, vào địa bàn, người có nguy cơ đang lưu trú, làm việc tại các địa phương, doanh nghiệp như lái xe, phụ xe liên tỉnh, người làm việc ngoài tỉnh về địa phương lưu trú… Từ đó sẽ chủ động các biện pháp quản lý phù hợp.\nTuy nhiên trước chủ trương này của thành phố, nhiều người dân bày tỏ sự băn khoăn, không biết liệu thành phố có lập lại các chốt kiểm soát và cần phải chuẩn bị những thủ tục gì khi đến TP.HCM.\nTrao đổi về vấn đề này, thượng tá Lê Mạnh Hà - phó trưởng Phòng tham mưu Công an TP.HCM - cho biết TP.HCM không lập lại các chốt kiểm soát để kiểm tra di biến động dân cư như trước đây.\nTheo thượng tá Hà, biến động dân cư được hiểu là sự thay đổi về dân cư, thường trú, tạm trú, không phải là lực lượng chức năng kiểm soát người dân đi lại ở các chốt.\nHiện nay Công an TP.HCM đang thực hiện các công tác quản lý di biến động dân cư như: đăng ký thường trú, tạm trú, rà soát hộ khẩu, những ai có mặt thực tế ở địa phương. Công an TP cũng đang rà soát, đối sánh các dữ liệu dân cư, cấp mã số định danh cá nhân.\nBên cạnh đó ngành công an cũng đang kiểm tra diện thường trú, tạm trú, những người đang lưu trú ở khách sạn, nhà nghỉ... khai báo để quản lý chặt chẽ và thực hiện các chính sách an sinh xã hội.', 'Ca nhiễm tăng, TP.HCM kiểm soát di biến động dân cư ra sao?'),
(2, 1, '2021-11-11 00:00:00', 'TTO - Với việc ban hành hướng dẫn gói chăm sóc sức khỏe cho F0 cách ly tại nhà phiên bản 1.6, ngành y tế TP.HCM cho thấy quyết tâm tập trung \"đánh chặn từ xa\" bằng việc kiểm soát F0 cách ly tại cộng đồng không để trở nặng.', 'Không phải F0 nào cũng cách ly tại nhà\r\nTheo thống kê, trong tổng số ca F0 hiện tại có khoảng 70% trường hợp có triệu chứng nhẹ, hoặc không có triệu chứng đang được cách ly chăm sóc tại nhà hoặc khu cách ly tập trung. Làm gì để giảm số ca mắc chuyển nặng? Hướng dẫn mới nhất từ TP.HCM được \"chi tiết hóa\" từ phân loại người F0 nào được cách ly ở nhà; chăm sóc ra sao; nên và không nên làm gì; dấu hiệu cần báo ngay cho y tế và kê đơn, cấp cứu F0 tại nhà...\r\nHướng dẫn lần này quy định rõ hơn về đối tượng được chăm sóc tại nhà khi đảm bảo đủ 2 điều kiện bao gồm không triệu chứng hoặc triệu chứng nhẹ (không có suy hô hấp SpO2 lớn hơn hoặc bằng 96% khi thở khí trời, nhịp thở bằng hoặc dưới 20 lần/phút). Chỉ những F0 có độ tuổi từ 1 - 50 tuổi, không có bệnh nền, không đang mang thai, không béo phì mới được cách ly ở nhà.\r\nNgoài ra quy định này chỉ cho phép một số trường hợp không thỏa các điều kiện nêu trên có thể xem xét cách ly ở nhà nếu có bệnh nền ổn định, bảo đảm tiêm đủ 2 mũi vắc xin hoặc sau 14 ngày kể từ ngày tiêm mũi đầu tiên.\r\nTP Thủ Đức (TP.HCM) là một trong các địa phương được ghi nhận có số ca mắc tăng nhanh gần đây. Ông Nguyễn Văn Chức - giám đốc Trung tâm Y tế TP Thủ Đức - cho biết để \"đánh chặn từ xa\", ngoài 32 trạm y tế cố định, các trạm y tế lưu động, các phường triển khai tổ y tế lưu động đến từng khu phố (trước đây là phường) để kịp thời xử lý các ca F0 chuyển nặng. \"Tổ lưu động của từng khu phố khá đông, bao gồm đủ các ban ngành từ y tế, đoàn thanh niên, dân quân, giáo dục, thành ra việc phản ứng và tiếp cận sẽ được gần người dân hơn\" - ông Chức nói.', '50% ca tử vong ở TP.HCM chưa tiêm vắc xin, thành phố đang \"đánh chặn\" số ca chuyển nặng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `price`, `name`, `description`, `content`, `img`) VALUES
(1, 22500000, 'MEGA SPACE MOLLY 1000% LOUIS DE GUZMAN', 'Tên sản phẩm: MEGA SPACE MOLLY 1000% Louis De Guzman\r\nKích Thước: 70cm\r\nChất Liệu: PVC/ABS\r\nThiết Kế: Molly\r\nSản Xuất: Pop Mart', 'Mega Space Molly 1000% - The Along The Way là sự kết hợp tinh tế giữa Molly và nghệ sĩ Louis De Guzman.\r\n\r\nVới thiết kế lần này, Molly đầy nghịch ngợm trong bộ đồ phi hành gia với các chi tiết đầy phá cách. Hai túi phản lực đằng sau đổ đầy cát san hô cùng điểm nhấn theo style gradient chuyển màu đầy bắt mắt. Tới ngay Toyist Zone để rinh em siêu phẩm này về trấn yểm ngay!', 'public/img/products/2024_05_05_06_27_07pm.png'),
(2, 6950000, 'SANK - WHALE FALL - BLUES', 'Tên sản phẩm: Sank-Whale Fall-Blues\r\nKích Thước: 31cm X 27.1cm X 16cm\r\nChất Liệu: Resin\r\nThiết Kế: Sank Toys\r\nSản Xuất: Sank Toys', 'Chắc chắn đây là một pha flex khả năng thiết kế và tạo hình từ nhà Sank toys (dù trước ai không ai nghi ngờ gì cả) đỉnh nhất từ trước tới nay! Một pha rẽ sóng đạp gió đúng chuẩn điêu luyện từ người bạn Sank Toys.\r\n\r\nĐặc biệt là dù nhìn từ góc độ nào thì bạn vẫn thấy hình ảnh cậu ấy đang khi tung mình xuyên qua cả cơn sóng bằng cả tính mạng. Trông cũng không khác lắm với vẻ kỳ vĩ của cá voi huyền thoại. Muốn nhìn cậu ấy kỹ hơn thì tới Toyist Zone ngay nào.', 'public/img/products/2024_05_05_06_27_51pm.png'),
(3, 2950000, 'SANK - NUCLEAR CRISIS - DELUSION', 'Tên sản phẩm: Sank-Nuclear Crisis-Delusion/Blues\r\nKích Thước: 10.8cm X 10.5cm X 13.2cm\r\nChất Liệu: Resin\r\nThiết Kế: Sank Toys\r\nSản Xuất: Sank Toys', 'Sank-Nuclear Crisis series mở ra viễn cảnh sau cuộc tấn công hạt nhân.\r\nSank Toys may mắn thoát được và đang lênh đênh trên biển trong chiếc thùng phóng xa đầy nguy hiểm. Nhưng với sức sống bền bỉ (và một cái đầu lạnh), cậu vẫn giữ được sự minh mẫn để bám trụ. Cậu ấy sẽ rất cảm kích nếu bạn trở thành chiếc phao cứu sinh “kéo” cậu vào bờ đó.\r\n\r\nVới hai phiên bản Delusion ảo mộng và Blues nhuộm màu hoen rỉ, bạn sẽ chọn cho mình người bạn nào đây?', 'public/img/products/2024_05_05_06_28_32pm.png'),
(4, 790000, 'DIMOO ANIMAL KINGDOM SERIES - PILLOW', 'Tên sản phẩm: DIMOO Animal Kingdom Series-Pillow\r\nKích Thước: 86 x 35cm\r\nChất Liệu: SHELL-100% POLYESTER FIBER STUFFING-100% POLYESTERFIBER\r\nThiết Kế: Dimoo\r\nSản Xuất: Pop Mart', 'Suỵt! Tụi mình ngửi thấy có mùi của sự đáng yêu quanh đây~\r\nMà sinh vật toả ra nguồn không khí đó có vẻ là một sinh vật có dáng hình tựa sư tử nè, có bộ lông màu nâu mềm mượt cùng gương mặt siêu khả ái thấy là ưng.\r\n\r\nKhông ai khác chính là DIMOO ANIMAL KINGDOM SERIES-PILLOW ~ một mẫu gối ôm xinh yêu có khả năng suối ấm tâm hồn bạn một cách diệu kỳ.', 'public/img/products/2024_05_05_06_29_13pm.png'),
(5, 190000, 'THE MONSTER CATCH ME IF YOU LIKE ME - PENDANT', 'Tên sản phẩm: THE MONSTERS Catch Me If You Like Me Series-Pendant Blind Box\r\nKích Thước: 11cm\r\nChất Liệu: Zinc Alloy/lron\r\nThiết Kế: The Monsters\r\nSản Xuất: Pop Mart', '\"\"Đố bạn bắt được tui!\"\"\r\nĐúng rồi. Toyist Zone đố bạn không nhanh nhanh chạy theo và \"\"bắt ngay\"\" một (vài) mẫu keychain THE MONSTERS siêu long lanh lóng lánh này về nhà luôn á!\r\n\r\nPhiên bản blindbox keychain có thể không mới, nhưng vẻ đẹp cũng như thiết kế kim loại ánh vàng phối màu của mỗi chiếc keychain vẫn đủ sức quyến rũ những ai đam mê. Chưa kể mỗi mẫu keychain đều tái hiện lại khung cảnh đuổi bắt đầy máu lửa giữa LABUBU và TYCOCO! Tới ngay Toyist Zone để không bỏ lỡ cuộc đối đầu gây cấn này ngay.\r\n', 'public/img/products/2024_05_05_06_30_00pm.png'),
(6, 1990000, 'NGAEW NGAEW X STRANGE CAT TOYS', 'Tên sản phẩm: Ngaew Ngaew x Strange Cat Toys\r\nKích Thước: ~10cm\r\nChất Liệu: Soft Vinyl/PVC\r\nThiết Kế: Ngaew Ngaew\r\nSản Xuất: Strange Cat Toys\r\n______________________________', 'Hmmmm ~ nói chung là đáng yêu thì sao không rinh một em Ngaew Ngaew x Strange Cat Toys này về cho được. Nhiều khi cũng tự hỏi với giao diện phóng đổ tim người khác như vậy thì bé thỏ này cảm thấy thế nào. Chưa kể là bé thỏ này cũng điệu lắm nha, có phụ kiện kính và nón đội gỡ ra được luôn! Quá trời dễ thương vậy thì còn đợi gì bạn chưa ghé Toyist Zone và rước bé về nhà ngay nè!\r\n', 'public/img/products/2024_05_05_06_30_30pm.png'),
(7, 1520000, 'DIMOO DATING SERIES - CRYSTAL BALL', 'Tên sản phẩm: DIMOO Dating Series - Crystal Ball\r\nKích Thước: ~16.5cm\r\nChất Liệu: ABS/PVC/Glass/Electronic Component\r\nThiết Kế: Dimoo\r\nSản Xuất: POP MART', 'Nếu quả cầu thuỷ tinh thường khiến bạn nhớ đến những gì kỳ ảo, huyền diệu thì Dimoo Dating Series - Crystal Ball sẽ ngập tràn điều ngọt ngào và lãng mạn 💗\r\n\r\nDimoo được đặt vào quả cầu thuỷ tinh lóng lánh, điểm xuyết bên ngoài là chiếc nơ màu đỏ và những đoá hồng rực rỡ. Phần đế của quả cầu cũng được chăm chút kỹ lưỡng với tông đen nhám mang đến vẻ sang trọng. Và đương nhiên, nhân vật chính - Dimoo - chính là tâm điểm với bộ tóc đỏ và trang phục đúng chuẩn quý ông.', 'public/img/products/2024_05_05_06_31_20pm.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `email` varchar(255) NOT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `createAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`email`, `profile_photo`, `fname`, `lname`, `gender`, `age`, `phone`, `createAt`, `updateAt`, `password`) VALUES
('admin@hcmut.edu.vn', NULL, 'Nguyen Van', 'A', 1, 15, '0123456789', NULL, NULL, ''),
('doantoicse@gmail.com', 'public/img/user/default.png', '', '', 1, 3, '', '2022-12-06 04:46:26', '2022-12-06 04:46:26', '$2y$10$8pdd87tKD4rG5rXGd6.vkuOSf4d1VBjjMoZzEhvBbzuIjo1YxSFIe'),
('thikhacquan76@gmail.com', 'public/img/user/default.png', '', '', 1, 8, '', '2022-12-06 04:54:52', '2022-12-06 04:54:52', '$2y$10$k8Ai5ApNh0xqoV8IvsX5oOLqQ3CFD6R9OwnaMJN862f8u/HHtZUye'),
('user@hcmut.edu.vn', NULL, 'Nguyen Van', 'B', 0, 30, '0123456789', NULL, NULL, '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `parent` (`parent`);

--
-- Chỉ mục cho bảng `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_3` FOREIGN KEY (`parent`) REFERENCES `comment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
