-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2024 at 07:14 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `createAt`, `updateAt`) VALUES
('admin', '$2y$10$EScz1sAqHnH5nXDozkzmIODdyIknUocrdqxhlZQ6wUWhrgETe8kZG', '2024-05-05 12:12:38', '2024-05-05 12:12:38');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
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
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `date`, `approved`, `content`, `news_id`, `user_id`, `parent`) VALUES
(1, '2021-12-12 00:00:00', 1, 'Bất ngờ quá', 1, 'admin@hcmut.edu.vn', NULL),
(2, '2021-12-12 00:00:00', 1, 'Bất ngờ quá', 1, 'admin@hcmut.edu.vn', NULL),
(3, '2021-12-12 00:00:00', 0, 'Không thể tin được', 2, 'user@hcmut.edu.vn', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `createAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `address`, `createAt`, `updateAt`) VALUES
(1, 'Đại học Bách Khoa CS1', '268 Lý Thường Kiệt, Phường 14, Quận 10, TPHCM', NULL, NULL),
(2, 'Đại học Bách Khoa CS2', 'Làng đại học, Thủ Đức', NULL, NULL),
(3, 'Đại học Bách Khoa Đà Lạt', 'Đà Lạt', NULL, NULL),
(4, 'Đại học Bách Khoa Đà Nẵng', 'Đà Nẵng', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news`
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
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `status`, `date`, `description`, `content`, `title`) VALUES
(1, 1, '2024-05-05 00:00:00', 'Mới đây, tại Tổ hợp Không gian Sáng tạo CMC ở TP.HCM, Chủ tịch Tập đoàn CMC Nguyễn Trung Chính đã tổ chức buổi làm việc với…', 'Mới đây, tại Tổ hợp Không gian Sáng tạo CMC ở TP.HCM, Chủ tịch Tập đoàn CMC Nguyễn Trung Chính đã có buổi làm việc với lãnh đạo Tập đoàn NVIDIA nhằm tăng cường mối quan hệ hợp tác chiến lược toàn diện giữa hai doanh nghiệp.\r\n\r\nTham gia buổi làm việc, phái đoàn NVIDIA có ông Keith Strier – Phó Chủ tịch Tập đoàn NVIDIA, Phó Chủ tịch phụ trách Sáng kiến ​​AI Toàn cầu; ông John Ashley – Kiến trúc sư trưởng, AI Nations & Giám đốc, Trung tâm công nghệ NVIDIA AI; và ông Anissh Pandey – Giám đốc NVIDIA Châu Á Thái Bình Dương. Về phía Tập đoàn CMC (CMC) có ông Nguyễn Trung Chính – Chủ tịch Hội đồng quản trị/Chủ tịch điều hành CMC Corp, ông Hồ Thanh Tùng – Phó Chủ tịch cấp cao, Tổng Giám đốc Tập đoàn cùng lãnh đạo công nghệ chủ chốt của cả hai phía. các bên. Cùng tham dự buổi làm việc có ông Hoàng Anh Tuấn, Tổng lãnh sự Việt Nam tại San Francisco, Hoa Kỳ; ông Võ Xuân Hoài, Giám đốc Trung tâm Đổi mới sáng tạo Quốc gia, Bộ Khoa học và Công nghệ; và ông Nguyễn Anh Thi, Giám đốc Khu công nghệ cao TP.HCM.\r\n\r\nTrong buổi làm việc, lãnh đạo CMC đã giới thiệu về cơ sở hạ tầng của Trung tâm dữ liệu CMC Tân Thuận, tiềm năng chuyển giao công nghệ và phát triển AI tại Việt Nam cũng như khả năng hợp tác toàn diện với NVIDIA để cung cấp hạ tầng kỹ thuật số cho Nhà máy AI, Cloud Partner của NVIDIA, Đối tác cung cấp dịch vụ cho thị trường doanh nghiệp trong nước và quốc tế. CMC là Tập đoàn Công nghệ thông tin và Viễn thông hàng đầu Việt Nam với lịch sử 31 năm hình thành và phát triển. Với kinh nghiệm và năng lực mạnh mẽ trong lĩnh vực Công nghệ thông tin – Viễn thông, CMC và chính quyền TP.HCM hướng tới hợp tác chiến lược toàn diện với NVIDIA nhằm xây dựng Thành phố trở thành trung tâm AI của cả nước, tập trung phát triển nguồn nhân lực AI, ứng dụng công nghệ AI vào giải quyết các vấn đề của thành phố, cũng như tạo ra những giá trị mới, đưa công nghệ AI trở thành động lực phát triển kinh tế của Thành phố Hồ Chí Minh. Ngược lại, Chính quyền TP.HCM cũng cam kết tạo môi trường, điều kiện làm việc tốt nhất để các công ty như NVIDIA và CMC phát triển, tạo ra giá trị cho các bên, cùng nhau xây dựng TP.HCM thành thành phố thông minh và trung tâm AI của cả nước, góp phần đưa TP.HCM trở thành một trong 5 thành phố dẫn đầu về AI trên thế giới và dẫn đầu các thành phố khác trong sự phát triển của cả nước. Ông Hoàng Anh Tuấn, Tổng Lãnh sự Việt Nam tại San Francisco, Hoa Kỳ, cam kết thúc đẩy hợp tác chiến lược giữa Hoa Kỳ và Việt Nam thông qua các kênh ngoại giao, sớm xóa bỏ điều kiện nhập khẩu thiết bị công nghệ cao, hỗ trợ các chương trình hợp tác chiến lược giữa NVIDIA và các công ty Việt Nam trong đó CMC.\r\n\r\nChia sẻ tại buổi làm việc với lãnh đạo cấp cao NVIDIA, Chủ tịch Nguyễn Trung Chính nêu rõ: “Trí tuệ nhân tạo sẽ mở ra một kỷ nguyên mới, một kỷ nguyên AI có ảnh hưởng sâu sắc đến xã hội loài người chúng ta trên mọi mặt đời sống, kinh tế và xã hội. AI đang trở thành một phần không thể thiếu trong kế hoạch kinh doanh và chiến lược phát triển của CMC, đặc biệt là lực lượng lao động dự kiến ​​đạt 15.000 kỹ sư CNTT vào năm 2028, trong đó 6.000 kỹ sư AI chiếm 40% tổng nhân lực của Tập đoàn.”\r\n\r\nTrong thời gian gần đây, CMC dẫn đầu thị trường điện toán đám mây với nền tảng CMC Cloud Make in Vietnam. CMC Cloud là đám mây nội địa tiên phong cung cấp dịch vụ điện toán hiệu năng cao trên nền tảng chipset GPU NVIDIA kể từ năm 2017. Đầu năm 2024, CMC công bố kế hoạch đầu tư 1.000 GPU NVIDIA GH 200 trị giá 250 triệu USD trong giai đoạn 2024-2025, góp phần tăng trưởng mạnh mẽ. phát triển các ứng dụng, giải pháp tiên tiến, tập trung vào hệ sinh thái sản phẩm công nghệ tương tác trong 6 lĩnh vực chính gồm: Thiết kế chip, Trí tuệ nhân tạo (AI), Dữ liệu lớn, Dữ liệu xã hội, Internet vạn vật – Thiết bị thông minh – Xử lý hình ảnh (IoT) và Công nghệ chuỗi khối/bảo mật thông tin…\r\n\r\nÔng Keith Strier – Phó Chủ tịch Tập đoàn NVIDIA, Phó Chủ tịch phụ trách Sáng kiến ​​AI Toàn cầu đánh giá cao tầm nhìn và chiến lược của CMC trong việc tận dụng làn sóng AI đang phát triển để phát triển cùng thế giới, đồng thời bày tỏ sẵn sàng hợp tác với CMC. Đánh giá Việt Nam có đủ yếu tố để phát triển mạnh mẽ và đi đầu về trí tuệ nhân tạo, ông Keith Strier, Phó Chủ tịch Tập đoàn NVIDIA nhấn mạnh: “NVIDIA không tập trung vào kinh doanh mà tập trung phát triển hợp tác nên chúng tôi sẽ đồng hành cùng các doanh nghiệp Việt Nam trong đó có CMC nhằm đẩy nhanh chuyển đổi số, đưa TP.HCM vào top 5 thành phố dẫn đầu về AI trên thế giới và đưa Việt Nam trở thành cường quốc về AI.”\r\n\r\nTrả lời đoàn NVIDIA, Chủ tịch Nguyễn Trung Chinh cũng khẳng định thế mạnh của CMC về hạ tầng Data Center và Cloud sẽ thúc đẩy sức mạnh hợp tác giữa NVIDIA và CMC. Hiện tại, Data Center Tân Thuận của CMC được thiết kế tuân thủ những tiêu chuẩn khắt khe nhất dành cho một trung tâm dữ liệu hiện đại. Đây là Data Center tiên phong của Việt Nam đạt chứng chỉ Uptime Tier III cho xây dựng và cũng là Data Center đầu tiên tại Việt Nam được đánh giá về an ninh, phòng ngừa rủi ro theo tiêu chuẩn TVRA, đáp ứng nhu cầu hạ tầng số cho các Nhà máy AI tại Việt Nam và khu vực. Sau gần 7 năm phát triển, CMC Cloud đã trở thành dịch vụ đám mây nội địa hàng đầu Việt Nam, chiếm hơn 25% thị phần.\r\n\r\nTrong tương lai, CMC dự kiến ​​đầu tư mở rộng AI DC tại Khu công nghệ cao TP.HCM với quy mô lớn 40MW, đảm bảo sẵn sàng hạ tầng AI Cloud cũng như hạ tầng Cloud chuyên dụng cho từng khách hàng, từ đó cung cấp cho cộng đồng AI với cơ sở hạ tầng và môi trường phát triển ứng dụng.\r\n\r\nVề giải pháp đào tạo nhân lực, CMC cam kết hợp tác với NVIDIA xây dựng cộng đồng AI, bao gồm nghiên cứu, khởi nghiệp và phát triển lực lượng lao động có kỹ năng về AI nhằm biến 1 triệu lập trình viên thành những cá nhân có khả năng ứng dụng AI, trong đó TP.HCM chiếm hơn 1.000 người. 65% lực lượng lao động.\r\n\r\nNgười đứng đầu CMC cho biết, Đại học CMC tập trung vào nhiều yếu tố: đội ngũ giảng viên, hệ thống trang thiết bị, phương pháp đào tạo hiện đại với giáo trình phù hợp với phòng thí nghiệm công nghệ AI, Chip bán dẫn… nhằm thu hút sinh viên tài năng tham gia nghiên cứu AI, Big Data, Blockchain và đào tạo. Được biết, Đại học CMC có kế hoạch mở rộng quy mô tuyển sinh từ 15.000 lên 20.000 sinh viên vào năm 2033, trong đó 50% thuộc lĩnh vực Công nghệ thông tin và dự định kết hợp chương trình đào tạo của NVIDIA vào giảng dạy các môn Thiết kế AI và IC để phát triển nguồn nhân lực công nghệ cao. góp phần hiện thực hóa mục tiêu 50.000 kỹ sư bán dẫn vào năm 2030 của Chính phủ.\r\n\r\nLắng nghe chia sẻ của đại diện CMC, ông Keith Strier – Phó Chủ tịch Tập đoàn NVIDIA, Phó Chủ tịch phụ trách Sáng kiến ​​AI Toàn cầu, đánh giá cao tiềm năng hiện tại của CMC và đánh giá cao tầm nhìn chiến lược của đội ngũ lãnh đạo tập đoàn. Điều này sẽ thuận lợi cho việc thiết lập mối quan hệ bền vững giữa hai bên. CMC và NVIDIA cam kết xây dựng mối quan hệ đối tác chiến lược lâu dài, toàn diện nhằm thúc đẩy sự phát triển và thành công không chỉ cho Thành phố Hồ Chí Minh và cả nước mà còn giúp Việt Nam trở thành trung tâm AI của khu vực. Đồng thời, hai bên sẽ tiếp tục triển khai các chương trình hợp tác chiến lược đã đề ra nhằm cụ thể hóa các mục tiêu nêu trên.', 'CMC đầu tư 1.000 GPU NVIDIA thế hệ mới trị giá 250 triệu USD'),
(2, 1, '2024-05-05 00:00:00', 'CMC Global, một công ty công nghệ nổi tiếng tại Việt Nam, gần đây đã đạt được chứng nhận Great Place to Work® quý giá, được xác nhận bởi 97% lực lượng lao động ấn tượng của công ty. …', 'CMC Global, một công ty công nghệ nổi tiếng tại Việt Nam, gần đây đã đạt được chứng nhận Great Place to Work® quý giá, được xác nhận bởi 97% lực lượng lao động ấn tượng của công ty. Sự công nhận này nhấn mạnh cam kết của CMC Global trong việc xây dựng bầu không khí chuyên nghiệp theo tiêu chuẩn quốc tế. \r\n\r\nTheo thông báo từ Great Place To Work, một cơ quan có thẩm quyền về văn hóa nơi làm việc, CMC Global vượt trội về các yếu tố được nhân viên đánh giá như môi trường làm việc thân thiện và sự ghi nhận những đóng góp trong suốt năm qua. \r\n\r\nĐược thành lập vào ngày 31 tháng 3 năm 2017, CMC Global đã phát triển với hơn 2.500 nhân viên trên toàn thế giới tính đến tháng 3 năm 2024. Với phạm vi hoạt động mở rộng, công ty mong muốn thúc đẩy một môi trường làm việc vui vẻ, đặt nền tảng cho sự phát triển trong tương lai. \r\n\r\nNhấn mạnh vai trò quan trọng của nhân sự, CMC Global liên tục điều chỉnh trải nghiệm của nhân viên để phù hợp với sở thích của thế hệ trẻ, thể hiện khả năng thích ứng và đổi mới không ngừng. Với gần một nửa lực lượng lao động là các cá nhân Gen Z, CMC Global đóng vai trò là nền tảng để nuôi dưỡng những tài năng trẻ, tạo cơ hội cho họ thể hiện năng lực và theo đuổi đam mê của mình.  \r\n\r\nHơn nữa, CMC Global coi trọng những quan điểm đa dạng, giao phó và trao quyền cho những người trẻ đam mê công nghệ để đổi mới, giải quyết thách thức và tham gia vào những công việc có ý nghĩa tác động đến hàng triệu người dùng trên toàn thế giới. \r\n\r\nChứng nhận Great Place to Work không chỉ là minh chứng cho cam kết của CMC Global mà còn kỷ niệm 7 năm thành lập. Được định vị là công ty công nghệ hàng đầu thế giới về chuyển đổi kỹ thuật số, CMC Global cũng nỗ lực không kém trong việc thúc đẩy văn hóa hạnh phúc và thỏa mãn trong nhân viên của mình. \r\n\r\nGreat Place to Work® nổi tiếng về kiến ​​thức chuyên môn về văn hóa nơi làm việc, tận dụng hơn 30 năm nghiên cứu và dữ liệu để ủng hộ môi trường làm việc hòa nhập. Thông qua nền tảng và mô hình khảo sát độc quyền của mình, Great Place to Work đánh giá trải nghiệm của nhân viên, cấp chứng nhận Workplace Excellence cho các công ty xuất sắc, từ đó thúc đẩy văn hóa xuất sắc và hòa nhập. ', 'CMC Global chính thức được công nhận là nơi làm việc tuyệt vời'),
(3, 1, '2024-05-05 00:00:00', 'Ngày 22/4, Công ty TNHH CMC Global, công ty con của Tập đoàn CMC, đã gặp gỡ đoàn doanh nghiệp Hàn Quốc tại trụ sở Hà Nội. Đoàn đã tổ chức…', 'Ngày 22/4, Công ty TNHH CMC Global, công ty con của Tập đoàn CMC, đã gặp gỡ đoàn doanh nghiệp Hàn Quốc tại trụ sở Hà Nội. Phái đoàn do Hiệp hội Xúc tiến CNTT Hàn Quốc (KAIT) tổ chức là một phần trong nỗ lực không ngừng nhằm thúc đẩy sự hợp tác giữa các công ty công nghệ hàng đầu tại Việt Nam và Hàn Quốc. \r\n\r\nCuộc gặp nhằm tạo điều kiện thuận lợi cho quan hệ đối tác, hợp tác lẫn nhau sau hàng loạt sáng kiến ​​xúc tiến thương mại với chủ đề “gặp gỡ-kết nối-hợp tác”. Những nỗ lực này nhằm tận dụng thế mạnh của lĩnh vực công nghệ của cả hai nước để thúc đẩy ngành Công nghệ Thông tin & Truyền thông toàn cầu. \r\n\r\nĐại diện cho CMC Global có ông Hồ Thanh Tùng, Phó chủ tịch điều hành cấp cao kiêm Tổng giám đốc Tập đoàn CMC và ông Nguyễn Ngọc Giang, Giám đốc chi nhánh Hàn Quốc. Phái đoàn Hàn Quốc bao gồm lãnh đạo của Tập đoàn KT, Sunkyong Telecom (SKT) và LG Uplus (LGU+). \r\n\r\nTrong buổi gặp, bên cạnh việc giới thiệu các sản phẩm, dịch vụ và chuyên môn công nghệ của cả Công ty CMC Global và Tập đoàn CMC, đại diện CMC Global cũng chia sẻ tầm nhìn chiến lược tương lai của họ đối với thị trường Hàn Quốc, hướng tới mục tiêu trở thành đối tác thích ứng trong chuyển đổi số. \r\n\r\nCMC Global nhấn mạnh lực lượng lao động gồm 3.000 kỹ sư công nghệ lành nghề sẵn sàng đảm nhận các dự án cho các công ty, tổ chức Hàn Quốc. Các dự án này bao gồm một loạt giải pháp tận dụng các công nghệ tiên tiến như Điện toán đám mây, Trí tuệ nhân tạo (AI), phân tích dữ liệu và tự động hóa quy trình với robot RPA. Con số này đặc biệt đáng chú ý trong bối cảnh ngành CNTT gần đây đang bị trì trệ do khan hiếm nhân tài hàng đầu. \r\n\r\nVới vị trí nổi bật của KT Group, SKT và LGU+ trong lĩnh vực công nghệ, cuộc gặp đánh dấu giai đoạn đầu trong việc khám phá các cơ hội hợp tác. Mục tiêu cuối cùng là đưa CMC Global trở thành nhà tư vấn và cung cấp dịch vụ chuyển đổi số hàng đầu tại thị trường Hàn Quốc. \r\n\r\nĐại diện KAIT và các doanh nghiệp Hàn Quốc bày tỏ lòng biết ơn trước sự đón tiếp nồng nhiệt của CMC Global. Đại diện phái đoàn KAIT cho biết: “Cả hai bên đều mong muốn tìm kiếm cơ hội hợp tác sâu hơn trong việc thúc đẩy chuyển đổi kỹ thuật số và tích hợp các giải pháp tiên tiến của Hàn Quốc vào thị trường Việt Nam”.  \r\n\r\nTrả lời đại diện đoàn KAIT, ông Nguyễn Ngọc Giang, Giám đốc chi nhánh Hàn Quốc của CMC Global bày tỏ: “CMC Global rất vinh dự được đoàn doanh nghiệp KAIT lựa chọn cho chuyến thăm lần này. Với cơ sở hạ tầng công nghệ vững mạnh và đội ngũ chuyên gia có nhiều kinh nghiệm thực hiện nhiều dự án thành công, CMC Global sở hữu các nguồn lực cần thiết để thúc đẩy hợp tác chuyển đổi số và đảm bảo phát triển bền vững với các doanh nghiệp Hàn Quốc. Hơn nữa, việc tăng cường trao đổi và hợp tác giữa doanh nghiệp hai nước sẽ thúc đẩy hơn nữa việc ứng dụng và phát triển CNTT-TT, mang lại những thành tựu mới cho cả hai nước.” ', 'CMC Global hoan nghênh Hiệp hội KAIT Hàn Quốc, trao đổi về cơ hội hợp tác CNTT giữa doanh nghiệp hai nước'),
(4, 1, '2024-05-05 00:00:00', 'Ngày 5/3/2024, Công ty TNHH CMC Global (công ty con của Tập đoàn CMC) chính thức công bố hợp tác với Công ty Hongik IT bằng việc thực hiện Biên bản ghi nhớ…', 'Ngày 5 tháng 3 năm 2024, Công ty TNHH CMC Global (công ty con của Tập đoàn CMC) chính thức công bố hợp tác với Công ty Hongik IT bằng việc ký kết Biên bản ghi nhớ (MOU) tại Hà Nội. Sự kiện này mở ra nhiều cơ hội mở rộng kinh doanh và phát triển kinh tế giữa hai nhà cung cấp dịch vụ CNTT hàng đầu Việt Nam và Hàn Quốc, thúc đẩy hợp tác thương mại và nâng cao năng lực công nghệ của hai nước trong tương lai. \r\n\r\nTheo đó, Hongik IT sẽ hoạt động với vai trò là đối tác của CMC Global tại Hàn Quốc, đặc biệt tập trung vào lĩnh vực cung cấp dịch vụ CNTT, nghiên cứu và phát triển công nghệ chuyển đổi số. Sự hợp tác này đánh dấu một cột mốc mới trong chiến lược kinh doanh của CMC Global, nhấn mạnh sự cống hiến của CMC Global trong việc nghiên cứu, phát triển và cung cấp các dịch vụ CNTT chuyển đổi kỹ thuật số toàn cầu. \r\n\r\nTham dự lễ ký kết, về phía CMC Global có sự tham gia của ông Đặng Ngọc Bảo, Giám đốc điều hành CMC Global và Phó Chủ tịch điều hành Tập đoàn Công nghệ CMC. Đại diện cho Hongik IT có ông Tommy Lee, CEO của công ty. Lễ ký kết còn có sự tham dự của lãnh đạo doanh nghiệp hai bên. \r\n\r\nChia sẻ về sự hợp tác, Tổng Giám đốc Đặng Ngọc Bảo của CMC Global cho biết: “Hàn Quốc nổi bật là thị trường trọng điểm trong chiến lược mở rộng toàn cầu của CMC Global. Chúng tôi rất vui mừng được bắt tay vào mối quan hệ hợp tác này với đối tác Hàn Quốc của chúng tôi, Hongik IT. CMC Global kỳ vọng rằng sự hợp tác này sẽ kích thích hoạt động kinh doanh và thúc đẩy tăng trưởng thị trường tại Hàn Quốc, từ đó tạo nền tảng thuận lợi để hiện thực hóa sứ mệnh của chúng tôi với tư cách là nhà cung cấp dịch vụ CNTT chuyển đổi số toàn cầu hàng đầu.” \r\n\r\nÔng Tommy Lee, Giám đốc điều hành Hongik IT bày tỏ sự tự hào khi được hợp tác với CMC Global, nhà cung cấp dịch vụ chuyển đổi số hàng đầu tại Việt Nam. “Chúng tôi lạc quan rằng sự hợp tác này sẽ mang lại những kết quả thuận lợi, góp phần vào sự tăng trưởng và vươn xa toàn cầu của CMC Global, đặc biệt là cuộc cách mạng cung cấp dịch vụ chuyển đổi số mà hai bên theo đuổi.” Ông Tommy phát biểu. \r\n\r\nBiên bản ghi nhớ là nền tảng để hai bên xây dựng kế hoạch hợp tác chi tiết, tận dụng nguồn lực và thế mạnh của mỗi bên để đạt được mục tiêu một cách hiệu quả. Trong buổi lễ, lãnh đạo hai đơn vị bày tỏ sự nhiệt tình và tin tưởng việc ký kết MOU sẽ tạo cơ hội phát triển thị trường công nghệ tại Việt Nam và Hàn Quốc. \r\n\r\nÔng Đặng Ngọc Bảo nhấn mạnh: “Sự hợp tác giữa hai đơn vị hứa hẹn sẽ giúp đôi bên cùng phát triển, giúp chúng ta cùng nhau phát triển và đón nhận những cơ hội và thành tựu mới”. \r\n\r\nHàn Quốc là một trong những đối tác kinh tế hàng đầu của Việt Nam. Với tiềm năng hợp tác lớn, hai bên đặt mục tiêu kim ngạch thương mại đạt 150 tỷ USD vào năm 2030. Ngoài ra, Hàn Quốc có nhu cầu lớn về Gia công CNTT (ITO), dự kiến ​​đạt 19 tỷ USD vào năm 2028. Hàn Quốc được nhiều người đánh giá là điểm đến đầy hứa hẹn cho toàn cầu. doanh nghiệp công nghệ, trong đó Việt Nam sẵn sàng tận dụng lực lượng lao động có tay nghề cao, mang lại lợi thế cạnh tranh trên thị trường. ', 'CMC Global Ký MOU với Hongik IT (Hàn Quốc), Mở Đầu Cơ Hội Kinh Doanh Tại “Xứ Sở Kim Chi”'),
(5, 1, '2024-05-05 00:00:00', 'Tại Hội nghị thượng đỉnh chiến lược toàn cầu CMC 2023, Hội đồng quản trị đã tiết lộ chiến lược thúc đẩy sự phát triển của công ty, nhằm định vị công ty là một …', 'Tại Hội nghị thượng đỉnh Chiến lược Toàn cầu CMC 2023, Hội đồng quản trị đã tiết lộ chiến lược thúc đẩy sự phát triển của công ty, nhằm đưa công ty trở thành Nhà cung cấp dịch vụ Chuyển đổi Kỹ thuật số Hàng đầu. \r\n\r\nCMC Global coi công nghệ là chất xúc tác chính cho sự tăng trưởng trung và dài hạn của mình, đặc biệt chú trọng chuyển đổi kỹ thuật số là trụ cột quan trọng. Đây là một trong ba lĩnh vực chính mà công ty đặt mục tiêu ưu tiên trong nỗ lực phát triển cho đến năm 2025. \r\n\r\nThông báo chiến lược 2023 -2025 bao gồm một loạt khoản đầu tư mà CMC Global đang thực hiện để giúp các công ty phát triển chiến lược, mô hình hoạt động, trường hợp kinh doanh và kiến ​​trúc lõi kỹ thuật số mới mà họ sẽ cần để tận dụng chuyển đổi kỹ thuật số. \r\n\r\n“Công ty sẽ vẫn cam kết với cách tiếp cận lấy khách hàng làm trung tâm .” Ông Đặng Ngọc Bảo, Tổng Giám đốc CMC Global cho biết. Để đạt được mục tiêu này, CMC Global luôn nỗ lực đổi mới và sáng tạo trong hoạt động kinh doanh của mình, với mục tiêu không ngừng là mở rộng cơ sở khách hàng của mình để bao gồm các doanh nghiệp thuộc mọi quy mô. Mục tiêu chính là thúc đẩy tăng trưởng bền vững cả về thu nhập tài chính và lực lượng lao động. \r\n\r\nVề chiến lược phát triển thị trường, CMC Global tập trung tăng cường đầu tư vào các thị trường quan trọng như Nhật Bản, Hàn Quốc, Mỹ, Singapore và Thái Lan, tận dụng tăng trưởng kinh tế khu vực và điều chỉnh dịch vụ của mình phù hợp với nhu cầu và xu hướng cụ thể tại từng thị trường trọng điểm này. . \r\n\r\nTrong giai đoạn 2024-2025, công ty có kế hoạch thành lập thêm văn phòng tại các trung tâm công nghệ quan trọng ở Hàn Quốc và Hoa Kỳ, tăng cường sự hiện diện và tăng cường đầu tư vào các lĩnh vực này. \r\n\r\nSự kết hợp giữa đổi mới công nghệ, tiềm năng kinh tế và định vị chiến lược khiến các quốc gia này trở thành trụ cột quan trọng trong chiến lược đầu tư của CMC Global. \r\n\r\nVề năng lực nội bộ, CMC Global đặt ra kế hoạch xây dựng đội ngũ chuyên gia công nghệ và tư vấn cấp cao, làm nòng cốt để đưa công ty trở thành lực lượng hàng đầu về tư vấn và triển khai các giải pháp Chuyển đổi số trên toàn Châu Á.  Thông qua thỏa thuận chuyển giao công nghệ với Viện ATI, CMC Global cam kết tích hợp các giải pháp AI được chứng nhận toàn cầu như một thế mạnh dịch vụ nổi bật trong giai đoạn tới.   \r\n\r\nVới sự phục hồi dự kiến ​​trong chi tiêu CNTT toàn cầu, CMC Global sẽ tiếp tục tập trung vào việc nâng cao năng lực công nghệ trong các giải pháp Đám mây, BPA, IoT và Dữ liệu lớn. Nỗ lực này bao gồm một loạt các dịch vụ, bao gồm khảo sát, tư vấn, thiết kế, triển khai, thử nghiệm và vận hành, phục vụ các nhóm ngành như Tài chính ngân hàng, Bán lẻ, Sản xuất. \r\n\r\nNgoài ra, trong hội nghị lần này, Ban lãnh đạo CMC Global nhấn mạnh cam kết của công ty trong việc nâng cao năng lực tư vấn và tham gia các hoạt động phát triển công nghệ mới . Trọng tâm này nhằm mục đích nâng cao hơn nữa các gói giải pháp chuyển đổi kỹ thuật số cho khách hàng tại các thị trường trọng điểm như Châu Á Thái Bình Dương, Châu Á, Châu Âu và Châu Mỹ. \r\n\r\nĐặc biệt, CMC Global đặt mục tiêu xây dựng thêm các Trung tâm Giao hàng Toàn cầu (GDC) để đáp ứng đầy đủ yêu cầu triển khai dự án của nhóm khách hàng có giá trị cao. Mục tiêu trong hai năm tới là CMC Global có khả năng đáp ứng tới 5.000 nhân sự sản xuất hàng tháng, định vị mình là đối tác chiến lược cho các khách hàng có quy mô bán hàng đáng kể. \r\n\r\nGiai đoạn 2023 – 2025 được dự đoán sẽ tiếp tục là giai đoạn đầy thách thức đối với các doanh nghiệp công nghệ nói chung và CMC Global nói riêng. Tuy nhiên, điều này tạo ra cơ hội chưa từng có cho những công ty dám vượt qua giới hạn để bứt phá, chuyển bại thành thắng.\r\n\r\nVới sự quyết tâm từ nội bộ tổ chức, CMC Global hứa hẹn sẽ có sự “chuyển mình” ấn tượng và tạo dấu ấn mạnh mẽ trên hành trình chinh phục bản đồ công nghệ toàn cầu. ', 'Chiến lược đầy tham vọng của CMC Global để trở thành Nhà cung cấp dịch vụ chuyển đổi số hàng đầu'),
(6, 1, '2024-05-05 00:00:00', 'Nằm trong nỗ lực thúc đẩy hoạt động kinh doanh tại thị trường Hàn Quốc, ngày 14/3/2024, Công ty TNHH CMC Global (thành viên của CMC …', 'Nằm trong nỗ lực thúc đẩy hoạt động kinh doanh tại thị trường Hàn Quốc, ngày 14/3/2024, Công ty TNHH CMC Global (thành viên của Tập đoàn CMC) công bố hợp tác với Công ty Linkproject thông qua Lễ ký kết Biên bản ghi nhớ được tổ chức tại Hà Nội, Việt Nam. Sự kiện này đánh dấu một bước tiến trong việc thúc đẩy hợp tác chiến lược giữa hai công ty, hướng tới khẳng định mình là người dẫn đầu trong việc tư vấn và triển khai các dịch vụ chuyển đổi số cho khách hàng Hàn Quốc, đặc biệt là trong ngành bán lẻ và thương mại điện tử. \r\n\r\nTheo đó, Linkproject đóng vai trò là đối tác hỗ trợ CMC Global trong việc kết nối với các doanh nghiệp Hàn Quốc hoạt động trong ngành bán lẻ và thương mại điện tử. Sự hợp tác này sẽ giúp mở ra cơ hội cho các doanh nghiệp Hàn Quốc tiếp cận các sản phẩm, dịch vụ, giải pháp chuyển đổi số của Việt Nam, hướng tới hiện thực hóa sứ mệnh phát triển và cung cấp dịch vụ CNTT toàn cầu. \r\n\r\nĐại diện có mặt tại lễ ký kết từ CMC Global có ông Đặng Ngọc Bảo, Giám đốc điều hành CMC Global kiêm Phó Chủ tịch điều hành Tập đoàn CMC và ông Nguyễn Ngọc Giang, Giám đốc bộ phận thị trường Hàn Quốc tại CMC Global. Về phía Linkproject, tham dự có ông Alex Kwon, Giám đốc điều hành Linkproject và ông Patrick Kim, Giám đốc điều hành Tech Valley, đối tác của Linkproject tạo điều kiện kết nối với CMC Global. \r\n\r\nTrong lễ ký kết, Giám đốc điều hành CMC Global Đặng Ngọc Bảo bày tỏ: “Trở thành đối tác của Linkproject, chúng tôi cam kết nỗ lực hết mình để mang lại những thành tựu tốt nhất cho cả hai bên. Nhân dịp kỷ niệm 32 năm quan hệ ngoại giao Việt Nam – Hàn Quốc và 31 năm thành lập Tập đoàn CMC, sự hợp tác giữa CMC Global và Linkproject mong muốn mở ra một chương mới, thúc đẩy hoạt động kinh doanh và mở rộng thị trường tại Hàn Quốc, qua đó khẳng định một lần nữa Vị thế dẫn đầu của CMC Global trong việc cung cấp dịch vụ chuyển đổi số.” \r\n\r\nÔng Alex Kwon, Giám đốc điều hành Linkproject bày tỏ sự vui mừng khi thiết lập quan hệ đối tác hợp tác với CMC Global, nhà cung cấp dịch vụ chuyển đổi số nổi bật tại Việt Nam. Ông nhận xét: “Hợp tác với CMC Global, chúng tôi dự đoán những tiến bộ công nghệ nhanh chóng sẽ đáp ứng nhu cầu của khách hàng toàn cầu nói chung và thị trường Hàn Quốc nói riêng.” \r\n\r\nCMC Global gần đây đã ký MOU với Hongik IT, công ty hàng đầu cung cấp dịch vụ cơ sở hạ tầng và công nghiệp cho các tập đoàn lớn của Hàn Quốc. Sự hợp tác liên tục này với một doanh nghiệp Hàn Quốc khác chuyên về bán lẻ và thương mại điện tử nhấn mạnh triển vọng ngành rộng lớn của CMC Global. Tận dụng năng lực, vị trí và kinh nghiệm của cả hai bên, mối quan hệ hợp tác này sẵn sàng mở ra nhiều triển vọng kinh doanh mới, thúc đẩy sự phát triển của các dịch vụ chuyển đổi kỹ thuật số và cung cấp nhân tài CNTT chất lượng cao ở cả thị trường Hàn Quốc và toàn cầu. \r\n\r\nTrước lễ ký kết, đại diện Linkproject đã đến thăm và làm việc với lãnh đạo CMC Global vào đầu tháng 3/2023. Họ bày tỏ ấn tượng về năng lực và quy mô của CMC Global trong lĩnh vực họ quan tâm. \r\n\r\nChính phủ Hàn Quốc có kế hoạch đầu tư 1,35 tỷ USD vào nghiên cứu và phát triển công nghệ mới phục vụ mục tiêu chuyển đổi số (theo thống kê từ KoreaTimes). Với tốc độ tăng trưởng GDP cao, mảng CNTT được Chính phủ Hàn Quốc đầu tư, khiến quốc gia này trở thành thị trường tiềm năng để CMC Global ghi dấu ấn trong khu vực. \r\n\r\nTheo đại diện CMC Global, trong năm nay, doanh nghiệp này cũng có kế hoạch mở văn phòng đại diện tại Hàn Quốc để tiếp cận khách hàng mới, mở rộng mô hình kinh doanh tại Hàn Quốc cũng như trong khu vực, hướng tới mục tiêu đạt “tỷ đô la”. “doanh thu từ thị trường nước ngoài. ', 'CMC Global và Linkproject hợp tác thúc đẩy chuyển đổi số toàn cầu'),
(7, 1, '2024-05-05 00:00:00', 'Phó Chủ tịch kiêm Tổng Giám đốc CMC Global, ông Đặng Ngọc Bảo và Phó Chủ tịch Tập đoàn KCG, ông Yoichi Terashita, trao đổi Biên bản ghi nhớ…', 'Phó Chủ tịch kiêm Tổng Giám đốc CMC Global , ông Đặng Ngọc Bảo và Phó Chủ tịch Tập đoàn KCG, ông Yoichi Terashita, trao đổi Biên bản ghi nhớ ( MoA ) về giáo dục và đào tạo , dưới sự chứng kiến ​​của Thủ tướng Phạm Minh Chính và các bộ trưởng Việt Nam tại Diễn đàn kinh tế Việt Nam - Nhật Bản tổ chức tại Tokyo, Nhật Bản ngày 16/12.  \r\n\r\nSự kiện diễn ra với sự có mặt của Thủ tướng Phạm Minh Chính và Đoàn cấp cao Chính phủ Việt Nam đang thăm làm việc tại Nhật Bản.\r\n\r\nTrước đó vào ngày 15/12 tại Kyoto, Hiệu trưởng Trường Cao đẳng Tin học Kyoto (KCGI) Hasegawa Wataru và Chủ tịch kiêm Giám đốc điều hành CMC Nguyễn Trung Chính đã ký thỏa thuận nhằm phát triển nguồn nhân lực chất lượng cao cho thị trường Việt Nam và Nhật Bản.\r\n\r\nTheo thỏa thuận, hai bên sẽ trao đổi các mô hình giáo dục, kinh nghiệm quản lý, giảng viên và sinh viên cũng như chia sẻ kinh nghiệm ứng dụng CNTT trong xã hội số theo mô hình Xã hội 5.0 của Nhật Bản. Trong hợp tác cung ứng nhân lực, Tập đoàn CMC cũng sẽ ưu tiên tuyển dụng sinh viên tốt nghiệp KCG và KCGI về làm việc tại CMC Japan tại Nhật Bản và Việt Nam. Ngoài ra, CMC Education sẽ trao đổi, giới thiệu sinh viên theo học chương trình cử nhân tại Viện Máy tính Kyoto và chương trình đào tạo sau đại học tại KCGI.\r\n\r\nĐánh giá về thỏa thuận hợp tác mới giữa CMC và Tập đoàn KCG, ông Nguyễn Trung Chính cho rằng “Thỏa thuận hợp tác lịch sử này sẽ mang lại nhiều chương trình triển khai hiệu quả về giáo dục đào tạo giữa hai bên, qua đó sẽ góp phần đào tạo ngày càng chất lượng cao”. , những chuyên gia công nghệ thông tin đẳng cấp thế giới cho đất nước trong tương lai.”\r\n\r\nÔng Wataru Hasegawa đặc biệt nhấn mạnh, việc ký kết thỏa thuận hợp tác là cột mốc đánh dấu sự hợp tác, phát triển giữa KCG và CMC. Ông khẳng định: “Chúng tôi chọn hợp tác với CMC vì CMC là một trong những doanh nghiệp công nghệ thông tin, viễn thông hàng đầu Việt Nam. Thỏa thuận hợp tác này sẽ là tiền đề để hai bên hỗ trợ lẫn nhau, phục vụ lợi ích chung trong hoạt động nghiên cứu và giảng dạy trong đào tạo nguồn nhân lực chất lượng cao.”\r\n\r\nHọc viện Máy tính Kyoto (KCG) được thành lập vào năm 1963 và là cơ sở giáo dục đầu tiên cung cấp đào tạo máy tính tại Nhật Bản. Năm 2004, Tập đoàn Máy tính Kyoto thành lập Trường Cao học Công nghệ Thông tin Kyoto (KCGI), trường đầu tiên đào tạo chuyên ngành công nghệ thông tin ở cấp độ sau đại học tại Nhật Bản.\r\n\r\nTừ năm 2005, KCG trở thành đơn vị tiên phong triển khai hệ thống E-learning tiên tiến, giúp các khóa học E-learning trở nên phong phú và đa dạng hơn. KCG có đội ngũ giảng viên trình độ cao và giàu kinh nghiệm, môi trường đào tạo tiên tiến, trang thiết bị hiện đại và luôn là một trong những cơ sở đào tạo công nghệ thông tin hàng đầu trong suốt 60 năm qua.\r\n\r\nCMC Education là công ty thuộc Tập đoàn CMC hoạt động trong lĩnh vực giáo dục, hiện có Đại học CMC và đang trong giai đoạn phát triển các mô hình đào tạo mới trong tương lai. Đại học CMC, với định hướng trở thành đại học số đầu tiên của Việt Nam với quy mô 15.000 sinh viên vào năm 2030, đã tuyển sinh khóa 2 (năm học 2023-2024) với 1.000 sinh viên thuộc 6 chuyên ngành đào tạo.\r\n\r\nNăm học 2024-2025, Đại học CMC mở thêm ngành đào tạo bổ sung chuyên ngành kỹ thuật điện tử viễn thông chuyên thiết kế mạch để cung cấp nhân lực theo tiêu chuẩn quốc tế cho ngành bán dẫn Việt Nam. và thị trường toàn cầu.\r\n\r\nViệc hợp tác với Tập đoàn máy tính Kyoto đã đánh dấu sự phát triển và nâng cao chất lượng đào tạo theo tiêu chuẩn quốc tế, đặc biệt là trong lĩnh vực công nghệ thông tin tại Việt Nam và nhiều nước trên thế giới, cũng như mở rộng và phát triển hệ sinh thái giáo dục của Tập đoàn CMC .', 'Tập đoàn CMC hợp tác với Tập đoàn KCG đào tạo nhân lực CNTT chất lượng cao'),
(8, 1, '2024-05-05 00:00:00', 'Tự động hóa quy trình bằng robot đã được công nhận là một trong 10 Sản phẩm công nghệ số hàng đầu cho thị trường nước ngoài tại Make in Vietnam 2023 Digital …', 'Tự động hóa quy trình bằng robot đã được công nhận là một trong 10 Sản phẩm công nghệ số hàng đầu dành cho thị trường nước ngoài tại Giải thưởng Sản phẩm công nghệ số Make in Vietnam 2023 do Bộ Thông tin và Truyền thông trao tặng. \r\n\r\nLễ trao giải diễn ra trong khuôn khổ Diễn đàn quốc gia về phát triển doanh nghiệp công nghệ số Việt Nam 2023. Đây là lần đầu tiên Bộ Thông tin và Truyền thông Việt Nam hợp tác với các công ty công nghệ số để vươn ra toàn cầu. Giải thưởng ghi nhận những công ty có sản phẩm, dịch vụ, giải pháp số xuất sắc đạt được thành công trên thị trường quốc tế. \r\n\r\nÔng Lường Anh Tuấn, Trưởng bộ phận giao hàng của CMC Global cho biết: “Chúng tôi rất vinh dự được Bộ Thông tin và Truyền thông công nhận cho dịch vụ RPA của mình. “Giải thưởng này là minh chứng cho sự làm việc chăm chỉ và cống hiến của đội ngũ CMC Global cũng như sự đầu tư của đội ngũ lãnh đạo trong việc thúc đẩy dịch vụ DX . ” \r\n\r\nCMC Global cung cấp dịch vụ RPA mạnh mẽ có thể tự động hóa nhiều tác vụ khác nhau cho doanh nghiệp. Nó có thể nâng cao hiệu quả, độ chính xác và năng suất, đồng thời có thể cho phép nhân viên tập trung vào công việc mang tính chiến lược hơn. Giải pháp hoàn chỉnh này bao gồm tư vấn chuyển đổi quy trình, thiết kế và triển khai bot, thử nghiệm, vận hành và đào tạo.   \r\n\r\n Bằng cách tích hợp AI, CMC Global cung cấp các bot thông minh có thể học hỏi và điều chỉnh trước những thay đổi về dữ liệu và cấu trúc. Do đó, bot có thể thực hiện các tác vụ phức tạp mà không bị gián đoạn. CMC Global còn giúp khách hàng triển khai bot trên nền tảng đám mây, giảm chi phí và nâng cao hiệu quả. CMC Global là đối tác tin cậy của nhiều doanh nghiệp trong và ngoài nước. \r\n\r\nCMC Global đã triển khai RPA cho 25 khách hàng doanh nghiệp lớn và hiện có hơn 50 dự án đang triển khai, mang lại tăng trưởng doanh thu cao trong 3 năm liên tiếp. Nổi bật là dự án tự động hóa quy trình kinh doanh (BPA) cho hãng hàng không 5 sao ở Đông Nam Á, đứng thứ 2 thế giới. CMC Global đã giúp hãng hàng không này triển khai hơn 120 quy trình công việc trên 10 bộ phận, giúp khách hàng tiết kiệm hơn 27.000 giờ lao động và gần 1 triệu USD chi phí vận hành mỗi năm. Dự án hiện đang vận hành trôi chảy và được khách hàng đánh giá cao. \r\n\r\n Khi RPA và Low code chiếm vị trí trung tâm trong miền BPA sắp tới của CMC Global , công ty củng cố vị thế là nhà cung cấp hàng đầu các dịch vụ tự động hóa quy trình kinh doanh. Với tầm nhìn táo bạo trở thành công ty hàng đầu không chỉ ở Việt Nam mà còn trên toàn khu vực, CMC Global tiếp tục dẫn đầu những tiến bộ công nghệ về Low-Code, RPA, AI và Cloud , định hình quỹ đạo của bối cảnh chuyển đổi kỹ thuật số. ', 'CMC Global Đạt Top 10 Sản Phẩm Công Nghệ Số Thế Giới'),
(9, 1, '2024-05-05 00:00:00', 'Chủ tịch Tập đoàn CMC ông Nguyễn Trung Chính đã ký quyết định bổ nhiệm ông Tú Đăng giữ chức vụ Giám đốc Công nghệ của CMC Global. Quyết định này đã đưa…', 'Chủ tịch Tập đoàn CMC ông Nguyễn Trung Chính đã ký quyết định bổ nhiệm ông Tú Đăng giữ chức vụ Giám đốc Công nghệ của CMC Global. Quyết định này có hiệu lực từ ngày 1/11.  \r\n\r\nLễ bổ nhiệm được tổ chức vào ngày 17/11 tại trụ sở chính của chúng tôi với sự tham dự của các lãnh đạo đáng kính trong đó có ông Nguyễn Trung Chính , Chủ tịch HĐQT, Tổng Giám đốc Tập đoàn CMC và đội ngũ lãnh đạo của CMC Global. \r\n\r\nTrước khi đảm nhận vai trò CTO, ông Tú Đăng từng giữ chức vụ Tổng Giám đốc Khối Giải pháp Dịch vụ Đám mây CTX tại CMC Technology & Solution. Thành tích đã được chứng minh và sự nhạy bén về chiến lược của ông phù hợp hoàn hảo với tầm nhìn của công ty chúng tôi về việc phát triển thành nhà cung cấp dịch vụ chuyển đổi kỹ thuật số toàn cầu. \r\n\r\nPhát biểu tại buổi lễ, ông Đặng Văn Tú, tân Giám đốc Công nghệ của CMC Global, chia sẻ: “Tôi vô cùng xúc động khi nghe Tập thể lãnh đạo công ty chia sẻ về hành trình xây dựng và phát triển đáng chú ý của CMC Global trong 6 năm qua. Đó là một hành trình đáng kinh ngạc với những bước phát triển phi thường của công ty. Rất tiếc, tôi không thể góp mặt trong những bước đi đầu tiên đó cùng CMC Global nhưng tôi xin hứa sẽ nỗ lực hết mình để đóng góp vào sự phát triển chung của công ty và xứng đáng với sự tin cậy, tín nhiệm mà Tổng Công ty và Công ty đã dành cho. \r\n\r\nVới việc bổ nhiệm ông Đặng, CMC Global tái khẳng định cam kết đổi mới, xuất sắc và mang lại thành công cho khách hàng. Khả năng lãnh đạo và tầm nhìn chiến lược của ông sẽ là công cụ định hình tương lai của công ty và thúc đẩy sự phát triển và thành công liên tục. ', 'CMC GLOBAL BỔ NHIỆM GIÁM ĐỐC CÔNG NGHỆ MỚI VÀO ĐỘI LÃNH ĐẠO'),
(10, 1, '2024-05-05 00:00:00', 'Ngày 06/12/2023, Tập đoàn CMC đã tổ chức lễ ký kết hợp đồng chuyển giao công nghệ giữa CMC ATI và các đơn vị thành viên – CMC Telecom, CMC TS,…', 'Ngày 06/12/2023, Tập đoàn CMC đã tổ chức lễ ký kết hợp đồng chuyển giao công nghệ giữa CMC ATI và các đơn vị thành viên – CMC Telecom, CMC TS và CMC Global. \r\n\r\nTại lễ khai trương, ông Nguyễn Trung Chính, Chủ tịch Hội đồng quản trị/Tổng giám đốc Tổng công ty , nhấn mạnh tầm quan trọng của sự kiện này, đánh dấu một giai đoạn mới trong việc gắn kết chặt chẽ hoạt động nghiên cứu với khách hàng và thị trường thông qua sự nỗ lực không ngừng của Tập đoàn. các đơn vị thành viên. \r\n\r\nTại lễ ký kết thỏa thuận hợp tác, đại diện 3 đơn vị gồm ông Lê Minh, Giám đốc công nghệ CMC TS , ông Phó Đức Kiên, Phó Chủ tịch/ Phó Tổng Giám đốc CMC Telecom và ông Nguyễn Việt Bách , Phó Chủ tịch kiêm Giám đốc Giao hàng CMC Global cùng với ông Đặng Minh Tuấn, Viện trưởng Viện Công nghệ Ứng dụng , đã ký kết các thỏa thuận nêu rõ phương hướng nỗ lực hợp tác, chuyển giao công nghệ, phát triển sản phẩm mới và đóng góp vào việc kết nối cung ứng công nghệ và nhu cầu phát triển thị trường khoa học và công nghệ. \r\n\r\nThỏa thuận hợp tác là cơ sở để Viện CMC ATI và các đơn vị trực thuộc cùng nhau xây dựng các kế hoạch hợp tác chi tiết, tận dụng hiệu quả các nguồn lực, thế mạnh để đạt được mục tiêu đề ra. Tại buổi lễ, Ban lãnh đạo Tổng công ty và lãnh đạo các đơn vị trực thuộc bày tỏ vui mừng và tin tưởng thỏa thuận hợp tác sẽ mở ra cơ hội phát triển cho các đơn vị. ', 'Lễ ký kết hợp đồng chuyển giao công nghệ giữa Viện CMC ATI và CMC Global');

-- --------------------------------------------------------

--
-- Table structure for table `product`
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
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `price`, `name`, `description`, `content`, `img`) VALUES
(1, 400000, 'Chuột Logitech G102 Lightsync RGB White', 'Nhà Sản Xuất : Logitech - Tình Trạng : Mới 100% - Bảo Hành : 24 tháng - Led : RGB', 'Dù có mức giá rất bình dân nhưng Chuột Logitech G102 Lightsync RGB lại được trang bị led  RGB 16,8 triệu màu .Chọn một màu hay trộn 3 màu, hiệu ứng có sẵn hay tạo hiệu ứng của riêng bạn . Sự lựa chọn là của bạn ! Bạn còn có thể đồng bộ chuột với thiết bị LIGHTSYNC của Logitech G khác giúp góc máy trở nên đồng bộ và độc đáo hơn.', 'https://product.hstatic.net/1000026716/product/logitech-g102-lightsync-rgb-white-1_eb113ff7e83b4289812fb9bff7034b4d.jpg'),
(4, 3350000, 'Bàn phím Leopold FC660M Bluetooth Coral Blue Limited Edition', 'Hãng sản xuất: Leopold  - Màu: Coral Blue Limited - Bảo hành: 24 tháng - Switch: Cherry MX Brown / Blue / Silent Red / Red', 'Một trong những thương hiệu bàn phím cơ đáng sở hữu trên thị trường không thể không nhắc đến là Leopold. Các sản phẩm được sản xuất từ Hàn Quốc theo đuổi phong cách cổ điển cùng cảm giác bấm mới lạ đã làm nên sự thành công của thương hiệu, Leopold FC660M Bluetooth Coral Blue Limited Edition là một trong số đó.', 'https://file.hstatic.net/1000026716/file/gearvn-ban-phim-leopold-fc660m-bluetooth-coral-blue-limited-edition-1_580acd1ae287460bb6949735722d634e.png'),
(5, 284904000, 'Laptop gaming ASUS TUF F15 FX507ZE HN093W', 'Bảo hành chính hãng 24 tháng - Hỗ trợ đổi mới trong 7 ngày - Windows bản quyền tích hợp - Miễn phí giao hàng toàn quốc.', 'Nếu Asus Vivobook và Asus Zenbook thống lĩnh thị trường laptop văn phòng, mỏng nhẹ thì phân khúc laptop gaming ASUS TUF Gaming chính là một cái tên đáng gờm. Tiếp nối sự thành công của những thế hệ trước - ASUS TUF F15 FX507ZE HN0093W sẽ là một cái tên đầy triển vọng và hứa hẹn gây sốt cho cộng đồng game thủ thời gian sắp tới.', 'https://product.hstatic.net/1000026716/product/02_fx507_92b1354499a64ca4b7d436fe2d1db50d.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
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
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `profile_photo`, `fname`, `lname`, `gender`, `age`, `phone`, `createAt`, `updateAt`, `password`) VALUES
('admin@hcmut.edu.vn', NULL, 'Nguyen Van', 'A', 1, 15, '0123456789', NULL, NULL, ''),
('doantoicse@gmail.com', 'public/img/user/default.png', '', '', 1, 3, '', '2022-12-06 04:46:26', '2022-12-06 04:46:26', '$2y$10$8pdd87tKD4rG5rXGd6.vkuOSf4d1VBjjMoZzEhvBbzuIjo1YxSFIe'),
('thikhacquan76@gmail.com', 'public/img/user/default.png', '', '', 1, 8, '', '2022-12-06 04:54:52', '2022-12-06 04:54:52', '$2y$10$k8Ai5ApNh0xqoV8IvsX5oOLqQ3CFD6R9OwnaMJN862f8u/HHtZUye'),
('user@hcmut.edu.vn', NULL, 'Nguyen Van', 'B', 0, 30, '0123456789', NULL, NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_3` FOREIGN KEY (`parent`) REFERENCES `comment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
