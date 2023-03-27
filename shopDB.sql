-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: shopdb
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `id` bigint NOT NULL,
  `add_information` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` bigint NOT NULL,
  `price` double NOT NULL,
  `town_city` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `product_name` text,
  PRIMARY KEY (`id`),
  KEY `FKqhq5aolak9ku5x5mx11cpjad9` (`user_id`),
  CONSTRAINT `FKqhq5aolak9ku5x5mx11cpjad9` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (4,'SamSung'),(5,'iPhone'),(6,'Oppo'),(7,'Nokia'),(8,'Xiaomi'),(9,'Vivo'),(10,'Realme');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (48);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double(20,2) DEFAULT NULL,
  `quantity` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `bill_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`),
  KEY `FK7bonot41bbrjhh0dna31ev4nc` (`bill_id`),
  CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `FK7bonot41bbrjhh0dna31ev4nc` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (12,'- Thiết kế cao cấp và vẻ ngoài sành điệu: Sản phẩm có trong mình một diện mạo bắt mắt nhờ lối tạo hình vuông vức bắt trend tương tự thế hệ iPhone 13 series, đây được xem là kiểu thiết kế rất thành công trên các thế hệ trước khi tạo nên cơn sốt toàn cầu về kiểu dáng điện thoại cho đến nay. \r\n- Đột phá với thiết kế Dynamic island: Để tối ưu được không gian hiển thị thì Apple cũng đã chính thức loại bỏ tai thỏ huyền thoại để thay thế vào đó là kiểu bố trí hình viên thuốc độc đáo, vừa đem lại vùng hiển thị rộng rãi hơn mà đây còn là một đặc điểm nhận diện dễ dàng trên chiếc iPhone 14 Pro Max.\r\n- iPhone 14 Pro Max với nhiều màu sắc rực rỡ.\r\n- Màn hình chất lượng cho những trải nghiệm xem tuyệt vời: Máy sẽ được sử dụng công nghệ màn hình OLED với kích thước lớn lên đến 6.7 inch, mang lại không gian rộng rãi để bạn thao tác chơi game dễ dàng hơn hay thưởng thức nội dung một cách to rõ.\r\n- iPhone 14 Pro Max sở hữu cụm camera chất lượng: Camera sau 48 MP bắt trọn mọi khung hình cho hình ảnh sắc nét.\r\n- iPhone 14 Pro Max với chip xử lý A16 Bionic mang lại sức mạnh đáng kinh ngạc.\r\n- iPhone 14 Pro Max chạy hệ điều hành mới nhất iOS 16.\r\n- Pin đáp ứng đủ cho cả ngày dài.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/ip14.png?alt=media&token=935ddb9e-940a-43c5-8f4e-f64f18618d81','iPhone 14 Pro Max 128GB',28190000.00,60,5,NULL),(13,'- Nâng cấp mạnh mẽ về camera: Ngoài camera chính vẫn có độ phân giải 12 MP thì chúng ta sẽ có thêm một camera góc siêu rộng và cũng với độ phân giải tương tự.\r\n- Hiệu năng mạnh mẽ hàng đầu thế giới: Trên iPhone 11 mới Apple nâng cấp con chip của mình lên thế hệ Apple A13 Bionic rất mạnh mẽ. Chiếc iPhone này cũng được nâng cấp dung lượng RAM 4 GB thay vì 3 GB như thế hệ trước đó.\r\n- Những thay đổi về thiết kế theo hướng tích cực: Chúng ta sẽ có một mặt lưng hoàn thiện dưới dạng kính và Apple nói rằng họ đã sử dụng loại kính bền nhất từ trước tới nay cho chiếc iPhone này.\r\n- Thời lượng pin tốt nhất từ trước tới nay.\r\n\r\n','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/iphone-11-trang-200x200-removebg-preview.png?alt=media&token=0dc7bd94-2638-4145-89cc-4eb44fbb8b4f','iPhone 11 64GB ',11990000.00,72,5,NULL),(14,'- Hiệu năng vượt xa mọi giới hạn: Apple đã trang bị con chip mới nhất của hãng (tính đến 11/2020) cho iPhone 12 đó là A14 Bionic, được sản xuất trên tiến trình 5 nm với hiệu suất ổn định hơn so với chip A13 được trang bị trên phiên bản tiền nhiệm iPhone 11.\r\n- Cụm camera không ngừng cải tiến: iPhone 12 được trang bị hệ thống camera kép bao gồm camera góc rộng và camera siêu rộng có cùng độ phân giải là 12 MP, chế độ ban đêm (Night Mode) trên bộ đôi camera này cũng đã được nâng cấp về phần cứng lẫn thuật toán xử lý, khi chụp những bức ảnh thiếu sáng bạn sẽ nhận được kết quả ấn tượng với màu sắc, độ chi tiết rõ nét đáng kinh ngạc.\r\n- Ghi dấu ấn về mặt thiết kế: Về ngoại hình iPhone 12 có thiết kế hoài niệm với phần cạnh được làm vuông vức tương tự trên mẫu iPhone 4 thay vì bo cong như iPhone 11.\r\n- Trải nghiệm xuyên suốt, liền mạch cả ngày dài.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/ip12.png?alt=media&token=9441a92d-d01d-405b-9cf6-78a9d41a6a86','iPhone 12 64GB ',15590000.00,72,5,NULL),(15,'- Hiệu năng vượt trội nhờ chip Apple A15 Bionic: Con chip Apple A15 Bionic siêu mạnh được sản xuất trên quy trình 5 nm giúp iPhone 13 đạt hiệu năng ấn tượng, với CPU nhanh hơn 50%, GPU nhanh hơn 30% so với các đối thủ trong cùng phân khúc.\r\n- Tốc độ 5G tốt hơn : Mạng 5G được cải thiện chất lượng với nhiều băng tần hơn, với 5G giúp điện thoại xem trực tuyến hay tải xuống các ứng dụng và tài liệu đều đạt tốc độ nhanh chóng.\r\n- Màn hình Super Retina XDR độ sáng cao, tiết kiệm pin: iPhone 13 sử dụng tấm nền OLED với kích thước màn hình 6.1 inch cho chất lượng màu sắc và chi tiết hình ảnh sắc nét, sống động, độ phân giải đạt 1170 x 2532 Pixels.\r\n- Cụm camera kép nổi bật với nhiều cải tiến.\r\n- Sang trọng, đẳng cấp hơn về ngoại hình: iPhone 13 có thiết kế nguyên khối vuông vắn như tiền nhiệm, khung viền được làm từ nhôm cùng mặt lưng kính sang trọng, cao cấp.\r\n- Thời lượng pin cũng được cải thiện: Theo công bố của hãng, iPhone 13 có thời lượng pin tăng thêm 2.5 tiếng so với thế hệ trước, cho thời gian sử dụng lâu hơn, phục vụ hiệu quả với người dùng có nhu cầu sử dụng tần suất cao.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/ip13.png?alt=media&token=b9c6721c-ed5a-48a2-99cb-9d09dbe2b7f2','iPhone 13 128GB  ',18390000.00,38,5,NULL),(16,'- Ngoại hình đẳng cấp, sang chảnh: Thiết kế nguyên khối vuông vắn với khung viền được chế tác từ thép không gỉ chắc chắn, iPhone 13 Pro sở hữu thêm mặt kính cường lực Ceramic Shield cứng hơn bất kỳ mặt kính điện thoại thông minh nào khác trước đây, giúp bảo vệ màn hình khỏi trầy xước.\r\n- Chip Apple A15 Bionic sức mạnh vượt trội: Sở hữu chip Apple A15 Bionic sức mạnh hàng đầu thế giới, hiệu năng cực ấn tượng nhờ được sản xuất trên tiến trình 5 nm, theo hãng công bố thì iPhone 13 series mạnh hơn hầu hết các smartphone đang có trên thị trường (9/2021).\r\n- Màn hình siêu đẹp cùng tần số quét được nâng cấp: iPhone 13 Pro sở hữu màn hình Super Retina XDR mới với tốc độ làm mới ấn tượng lên đến 120 Hz, không chỉ tạo độ mượt cao trong các thao tác chạm vuốt màn hình mà còn không độ trễ trên màn hình động khi chiến game online hay thưởng thức các video chất lượng cao, chỉnh sửa hình ảnh trên các ứng dụng.\r\n- Thử sức sáng tạo cùng cụm camera xuất sắc.\r\n- Tăng thêm 2.5 giờ sử dụng pin: So với iPhone 12, Apple trang bị cho iPhone 13 Pro pin khỏe hơn với thời lượng tăng thêm 2.5 giờ sử dụng, thoải mái dùng theo sở thích.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/ip13pro.png?alt=media&token=7a9bf677-6e27-4381-8a0d-b0fb22d15254','iPhone 13 Pro 512GB ',25990000.00,37,5,NULL),(17,'- Sở hữu lối thiết kế sang trọng: Ở phiên bản năm nay Galaxy S23 vẫn sẽ thừa hưởng kiểu dáng quen thuộc đến từ thế hệ cũ, vẫn là mặt lưng kính được bao bọc bởi một bộ khung kim loại và bo tròn ở các góc, đi kèm với đó là cách tạo hình phẳng ở các mặt làm cho máy trở nên sang trọng và cực kỳ hiện đại.\r\n- Hiệu năng vượt trội với con chip hàng đầu Qualcomm.\r\n- Vươn tầm nhiếp ảnh chuyên nghiệp với bộ ống kính chất lượng: Về hệ thống camera Galaxy S23 sở hữu bộ 3 ống kính với độ phân giải cao nhất là 50 MP, vậy nên đây có thể xem là mẫu điện thoại phù hợp dành cho những bạn đam mê chụp ảnh, nhờ kết quả cho ra có độ phân giải cao nên người dùng có thể thoải mái hơn trong việc chỉnh sửa - hậu kỳ mà không cần lo lắng chất lượng bị giảm đi nhiều.\r\n- Nâng cấp trải nghiệm với màn hình Dynamic AMOLED 2X.\r\n- Sử dụng dài lâu với viên pin lớn: Về thời lượng pin, Galaxy S23 cũng đã được nâng cấp từ 3700 mAh lên 3900 mAh','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/ssglxs23.png?alt=media&token=98457c56-c493-45a0-bcb3-68e8422f5e88','Samsung Galaxy S23 5G 128GB ',18390000.00,27,4,NULL),(18,'- Vẻ ngoài sang trọng, màu sắc thời trang: Galaxy S21 FE 5G thiết kế mỏng nhẹ với độ dày 7.9 mm, khối lượng chỉ 177 gram, các góc cạnh bo tròn cho cảm giác hài hòa, mềm mại, kết hợp các tông màu thời thượng gồm tím, xanh lá, xám và trắng giúp bạn dễ dàng tạo nên phong cách riêng đầy cá tính.\r\n- Trải nghiệm xem chân thật: Với kích thước 6.4 inch, đường viền khá mỏng, camera trước dạng đục lỗ cho không gian hiển thị rộng rãi, bạn có thể xem được nhiều chi tiết trên màn hình hơn. Hỗ trợ công nghệ màn hình hiện đại Dynamic AMOLED 2X, độ phân giải Full HD+, tần số quét 120 Hz, cho hình ảnh tái hiện chi tiết, mượt mà, màu sắc tươi tắn, độ tương phản cao.\r\n- Hiệu năng ổn định, chơi game mượt mà.\r\n- Ghi lại hình ảnh sống động: Galaxy S21 FE 5G thiết kế cụm camera sau có 3 ống kính, trong đó có camera chính và camera góc siêu rộng cho độ phân giải 12 MP và 1 camera tele 8 MP chụp ảnh cho chất lượng rất \"ổn áp\" với các chi tiết rõ ràng, màu sắc của bầu trời, cây cối nịnh mắt. \r\n- Viên pin 4500 mAh.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/ssglxs21.png?alt=media&token=5e3b8249-3fe4-45af-b1b8-6b713d6a43a5','Samsung Galaxy S21 FE 5G',10990000.00,86,4,NULL),(19,'- Thiết kế đặc trưng: Về thiết kế thì Samsung Galaxy S23 Ultra sẽ tiếp tục thừa hưởng kiểu dáng sang trọng đến từ thế hệ trước, vẫn là bộ khung kim loại, mặt lưng kính cùng cạnh bên và màn hình bo cong. Nhờ kiểu bo cong này mà trải nghiệm cầm nắm cũng trở nên dễ chịu, viền màn hình hai bên cũng sẽ trở nên mỏng hơn.\r\n- Màn hình lớn, hiển thị tốt mọi hình ảnh: Đối với phần màn hình thì Galaxy S23 Ultra sử dụng tấm nền Dynamic AMOLED 2X có kích thước 6.8 inch với tần số quét 120 Hz, và nổi bật không kém đó là độ phân giải màn hình QHD+ (1400 x 3088 Pixels).\r\n- Samsung Galaxy S23 Ultra có hiệu năng vượt mong đợi: Galaxy S23 Ultra sử dụng con chip mới nhất đến từ nhà Qualcomm là Snapdragon 8 Gen 2 với hiệu suất tối đa đến 3.36 GHz, khi kết hợp với GPU Adreno 740 sẽ mang lại hiệu suất ấn tượng.\r\n- Camera tập trung vào chất lượng và chế độ chuyên nghiệp.\r\n- Sở hữu nhiều công nghệ pin: Samsung Galaxy S23 Ultra được trang bị viên pin 5000 mAh.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/ssglss23ultra.png?alt=media&token=0e038aad-d91b-434b-8385-a3d86dacaf16','Samsung Galaxy S23 Ultra 5G 256GB ',26990000.00,52,4,NULL),(20,'- Xử lý mượt mà nhờ chipset đến từ Qualcomm: Để máy vận hành một cách ổn định hơn Samsung trang bị cho Galaxy A23 con chip quốc dân dành cho thị trường di động tầm trung hiện nay (04/2022) mang tên Snapdragon 680 8 nhân với hiệu suất tối đa đạt được là 2.4 GHz.\r\n- Chụp ảnh sắc nét với cụm camera thông minh: Máy sở hữu 4 camera với camera chính có độ phân giải lên đến 50 MP, camera góc siêu rộng 5 MP, cảm biến xóa phông và macro có cùng độ phân giải 2 MP, kèm với đó là nhiều tính năng chụp ảnh mới lạ giúp mình thỏa sức khám phá.\r\n- Thiết kế đặc trưng từ dòng Galaxy A: Galaxy A23 có khung và mặt lưng được làm từ nhựa mang lại cảm giác cầm nắm nhẹ nhàng, cùng với đó là cạnh viền bo cong giúp mình sử dụng lâu dài mà không cảm thấy bị cấn tay như trên một số dòng sản phẩm có thiết kế vuông vức.\r\n- Pin trâu dùng lâu cả ngày: Bên trong thiết bị là viên pin có dung lượng 5000 mAh thừa sức đáp ứng nhu cầu sử dụng liên tục trong nhiều giờ.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/ssglsa23.png?alt=media&token=29587145-e8b5-4825-9f05-188938ad6ca3','Samsung Galaxy A23 4GB ',49990000.00,34,4,NULL),(21,'- Nhiếp ảnh chuyên nghiệp với cụm camera đẳng cấp: Camera trên S20 FE là 3 cảm biến chất lượng nằm gọn trong mô đun chữ nhật độc đáo ở mặt lưng bao gồm: Camera chính 12 MP cho chất lượng ảnh sắc nét, camera góc siêu rộng 12 MP cung cấp góc chụp tối đa và cuối cùng camera tele 8 MP hỗ trợ zoom quang học 3X.\r\n- Ngoại hình trẻ trung với loạt gam màu cá tính: Samsung Galaxy S20 FE được hoàn thiện với loạt các gam màu trẻ trung thời thượng cùng lớp phủ mờ ở mặt lưng sang trọng mang lại một phiên bản đầy cá tính để mỗi fan tự tin thể hiện phong cách chất riêng của mình.\r\n- Sức mạnh vượt trội, chiến game đỉnh cao.\r\n- Dung lượng pin khủng 4500 mAh hỗ trợ nhiều công nghệ sạc: Không chỉ trang bị những tính năng hấp dẫn S20 FE còn là người bạn đồng hành cả ngày dài với bạn khi sở hữu dung lượng pin trâu lên tới 4500 mAh cho phép bạn sử dụng các tác vụ giải trí hằng ngày như lướt web, xem phim mà không bị gián đoạn.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/ssglss20.png?alt=media&token=41fd1d27-82cc-4908-a986-462533ee1f2b','Samsung Galaxy S20 FE',9490000.00,37,4,NULL),(22,'- Thiết kế với kiểu dáng bắt mắt: Qua những lần chạm đầu tiên trên chiếc Reno8 T 5G thì mình thấy đây là một chiếc điện thoại có độ hoàn thiện khá tốt, máy mang lại cho mình một cảm giác cầm nắm tương đối là đầm tay, hai bên cạnh cũng được làm bo cong giúp hạn chế tình trạng cấn tay mang đến cho mình một trải nghiệm sử dụng khá là thoải mái.\r\n- Trải nghiệm nội dung tốt hơn với màn hình tràn viền vô cực: Về thông số màn hình, máy được trang bị tấm nền AMOLED với độ phân giải Full HD+ (1080 x 2412 Pixels) nhờ đó mà hình ảnh mang đến có màu sắc rực rỡ bắt mắt, màu đen tái hiện sâu cùng độ phân giải cao giúp mọi nội dung khi xem đều tạo cho mình một cảm giác chân thực và ấn tượng.\r\n- Hỗ trợ camera chụp ảnh độ phân giải siêu cao: Chiếc điện thoại OPPO Reno này được hãng trang bị bộ ba camera với độ phân giải cảm biến chính là 108 MP, kèm với đó là hai ống kính phụ có chung độ phân giải 2 MP hỗ trợ xóa phông cùng tính năng chụp ảnh hiển vi.\r\n- Hiệu năng đáp ứng tốt mọi nhu cầu cơ bản.\r\n- Đáp ứng đủ cho cả ngày sử dụng cùng công nghệ sạc siêu nhanh 67 W.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/oprn8.png?alt=media&token=f5b57329-6bf9-4bc2-8300-9b7ab462e8d6','OPPO Reno8 T 5G 256GB ',10990000.00,67,6,NULL),(23,'- Lớp “áo” đẹp mãn nhãn: OPPO A55 4G có 3 phiên bản màu độc đáo là xanh lá, xanh dương và màu đen. Thiết kế cong 3D cùng kích thước mỏng nhẹ, OPPO A55 4G vừa vặn trong tay người cầm, cho từng thao tác trải nghiệm thoải mái và chắc chắn.\r\n- Camera quay chụp thông minh: Cụm camera xếp dọc đặt nổi ở mặt sau thêm điểm nhấn cho thiết kế điện thoại, bao gồm camera chính cảm biến đến 50 MP, camera xoá phông 2 MP và camera macro chụp cận 2 MP.\r\n- Màn hình tràn viền cho trải nghiệm đã mắt hơn: Màn hình trang bị tấm nền IPS LCD với kích thước 6.5 inch có thiết kế đục lỗ và viền siêu mỏng mang đến không gian trải nghiệm rộng lớn, thật thoải mái và đã mắt khi dùng máy chiến game hay thưởng thức các bộ phim trực tuyến.\r\n- Hiệu năng ổn định trên mọi tác vụ.\r\n- Pin 5000 mAh, sạc nhanh 18 W.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/opa55.png?alt=media&token=585d0125-0688-422e-801b-afa0ff2b298e','OPPO A55 ',3690000.00,75,6,NULL),(24,'- Hệ thống camera cho bạn tỏa sáng cùng vẻ đẹp tự nhiên : Cụm camera sau được xếp trong module hình vuông trong đó có 1 camera với độ phân giải 13 MP, hỗ trợ Al, đèn flash LED (tăng cường chất lượng chụp ảnh trong điều kiện thiếu sáng) mang đến khả năng quay chụp chuyên nghiệp với nhiều chế độ tiện ích đi kèm.\r\n- Cấu hình tốt trong tầm giá: OPPO A16K bên trong là con chip MediaTek Helio G35 8 nhân được sản xuất trên tiến trình 12 nm, đáp ứng các tác vụ cơ bản như duyệt web, xem Youtube, gọi video trực tuyến, lướt Facebook và chơi các tựa game nhẹ rất mượt mà, hiệu quả.\r\n- Thiết kế tinh giản, trẻ trung.\r\n- Tận hưởng trải nghiệm xem đã mắt.\r\n- Thời gian giải trí lâu hơn: Sử dụng thỏi pin 4230 mAh đáp ứng nhu cầu trải nghiệm cả ngày dài, cho người dùng tận hưởng từng phút giây giải trí yêu thích liên tục mà không cần sợ hết pin.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/opa16k.png?alt=media&token=30337f68-030f-4dd2-8a0d-28a45f98ac5b','OPPO A16K ',2590000.00,61,6,NULL),(25,'- Tỏa sáng với ngoại hình bắt mắt đầy sang trọng: Điều làm mình mê hoặc ngay từ cái nhìn đầu tiên là mặt lưng hết sức bóng bẩy, trên phiên bản màu đen thì mình hoàn toàn có thể sử dụng máy với công dụng tương tự như một chiếc gương soi tiện ích.\r\n- Sở hữu khả năng quay - chụp chuẩn điện ảnh: Về phần thông số máy ảnh, OPPO Find X5 Pro 5G được trang bị ba camera sau với camera chính 50 MP, camera góc siêu rộng 50 MP và cuối cùng là cảm biến phụ 13 MP.\r\n- Hiển thị sắc nét từng khung hình.\r\n- Hiệu năng hàng đầu với khả năng chiến game mượt mà.\r\n- Sử dụng dài lâu với pin trâu cực khủng.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/opfx5.png?alt=media&token=a1aed50c-5917-48fb-b4b2-df169247fc3e','OPPO Find X5 Pro 5G ',24990000.00,58,6,NULL),(26,'- Nổi bật với diện mạo đầy cuốn hút: Ở lần ra mắt này, OPPO đã trình làng A96 với hai phiên bản màu sắc đó chính là đen và hồng. Cả hai màu đều được hoàn thiện phần mặt lưng với vật liệu chính là thủy tinh hữu cơ, cùng với đó là công nghệ OPPO Glow độc quyền giúp thiết bị toát lên một vẻ ngoài sang trọng hơn.\r\n- Hiển thị hình ảnh một cách sinh động: Ở phần thông số màn hình, OPPO A96 được trang bị một tấm nền IPS LCD có kích thước 6.59 inch, kèm với đó là độ phân giải Full HD+ (1080 x 2412 Pixels) và độ sáng 600 nits. Đây là những công nghệ được đánh giá rất cao trong phân khúc điện thoại tầm trung hiện nay (07/2022).\r\n- Chụp ảnh chuyên nghiệp hơn nhờ bộ đôi camera chất lượng.\r\n- Chiến game ổn định nhờ chip xử lý đến từ Qualcomm.\r\n- Sử dụng lâu hơn nhờ trang bị viên pin lớn: Với viên pin 5000 mAh nên mình cũng an tâm hơn trong việc sử dụng thiết bị cho cả ngày dài mà không cần mang theo sạc dự phòng, kết quả mình đo được sau một ngày dài sử dụng liên tục cho ra thời lượng dùng lên đến 8 giờ 42 phút*. ','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/opa96.png?alt=media&token=b26c3cf0-0500-42dd-bbeb-1cb54c7cbe80','OPPO A96 ',5990000.00,29,6,NULL),(27,'- Không gian hiển thị sắc nét: Vivo Y35 có kích thước màn hình 6.58 inch đi cùng là tấm nền IPS LCD, độ phân giải Full HD+ với những thông số trên chất lượng hình ảnh hiển thị có chi tiết tốt, góc nhìn rộng và màu sắc trung thực.\r\n- Hiệu năng ổn định tối ưu trải nghiệm: Vivo Y35 mang trong mình con chip Snapdragon 680, đây là CPU quốc dân của những mẫu điện thoại Android, máy đáp ứng tốt các nhu cầu hiện nay của người dùng từ đọc báo, lướt web đến chơi những tựa game đang hot trên thị trường.\r\n- Hệ thống chụp ảnh sắc nét.\r\n- Pin trâu hơn, dùng lâu hơn: Pin và tốc độ sạc cũng là điểm vô cùng sáng khi nhắc tới Vivo Y35, bạn không cần phải lo nghĩ nhiều về việc hết pin khi đang dùng trong ngày khi máy có dung lượng 5000 mAh.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/vivoy35.png?alt=media&token=9af19620-71da-4edf-b4a9-67583914244d','Vivo Y35 ',6390000.00,67,9,NULL),(28,'- Thiết kế tinh tế đầy sang trọng: Vivo V25 sở hữu cho mình những màu sắc hết sức trẻ trung và hiện đại, không chỉ mang đến nhiều sự lựa chọn hơn cho người dùng mà điều này còn đem lại cái nhìn tươi mới năng động hơn khi cầm nắm sử dụng.\r\n- Hỗ trợ chụp ảnh selfie chất lượng cao: Về phần camera thì chiếc điện thoại Vivo dòng V này được trang bị 3 ống kính ở phần mặt lưng. Trong đó camera chính có độ phân giải 64 MP, camera góc siêu rộng 8 MP và cảm biến macro có độ phân giải 2 MP.\r\n- Trang bị màn hình chất lượng cùng công nghệ âm thanh tiên tiến.\r\n- Thoải mái chiến game với con chip hiệu năng cao.\r\n- Thời lượng sử dụng dài lâu: Tích hợp trong máy sẽ là viên pin có dung lượng 4500 mAh cùng khả năng sạc siêu nhanh có công suất 44 W.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/vvv25.png?alt=media&token=744881a5-4ab6-4fc7-a0f8-58d55d768ccf','Vivo V25 5G ',9790000.00,39,9,NULL),(29,'- Ngoại hình vuông vắn đẹp mắt: Vivo Y16 được thiết kế phẳng bởi các cạnh và hai mặt của máy được tạo hình vuông vức, điều này giúp chiếc máy trở nên sang trọng và hợp thời hơn để bạn có thể tự tin sử dụng trên tay.\r\n- Tận hưởng trọn vẹn nội dung trên màn hình chất lượng.\r\n- Thỏa sức nhiếp ảnh thông qua bộ đôi camera: Phần mặt lưng của máy thì sẽ được trang bị hai camera với camera chính có độ phân giải 13 MP cùng một cảm biến phụ 2 MP.\r\n- Trang bị chipset đến từ nhà MediaTek.\r\n- Đáp ứng năng lượng cho cả ngày dài: Bên trong chiếc máy sẽ là một viên pin có dung lượng 5000 mAh.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/vvy16.png?alt=media&token=521e7d81-9581-443e-8111-9404aed65d0f','Vivo Y16 64GB',3790000.00,53,9,NULL),(30,'- Vẻ ngoài hiện đại, màu sắc trẻ trung: Vivo Y02s được hoàn thiện với hai mặt và các cạnh vát phẳng giúp cho thân hình của chiếc máy trở nên vuông vắn và cực kỳ hợp xu hướng hiện nay. Nổi bật hơn hết là cụm camera được Vivo thiết kế với hai cụm tròn to nổi khá ấn tượng.\r\n- Xử lý mượt mà các tác vụ cơ bản.\r\n- Trang bị pin trâu - thoải mái dùng lâu: Nhờ có viên pin 5000 mAh.\r\n- Không gian hiển thị rộng rãi: Về phần hiển thị thì máy sẽ được trang bị tấm nền IPS LCD với kích thước 6.51 inch.\r\n- Hỗ trợ tính năng chụp ảnh qua camera đơn.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/vvy02.png?alt=media&token=1c73fbbd-b601-47cf-a248-73816bf4c215','Vivo Y02s',3190000.00,61,9,NULL),(31,'- Ngoại hình nổi bật với thiết kế siêu mỏng: Máy có một thiết kế nguyên khối tạo cảm giác bền bỉ, chắc chắn. Vivo Y21 còn mang đến trải nghiệm cầm nắm thoải mái với thân máy mỏng chỉ 8 mm và có các cạnh viền bo tròn mịn màng giúp cho mọi thao tác sử dụng trở nên hoàn hảo.\r\n- Viên pin 5000 mAh sử dụng thoải mái.\r\n- Cấu hình ổn định cho các tác vụ.\r\n- Lưu lại những khoảnh khắc đáng nhớ: Thiết lập 2 camera ở phía sau có độ phân giải vừa đủ với thông số lần lượt là 13 MP cho camera chính và camera macro 2 MP. Hệ thống máy ảnh trên Vivo Y21 sẽ cho bạn lưu lại các khoảnh khắc với độ duy trì rõ nét.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/vvy21.png?alt=media&token=211ab114-f05b-4810-8c22-1ddbc40cf478','Vivo Y21 ',3290000.00,38,9,NULL),(32,'- Ấn tượng với diện mạo sang trọng: Xiaomi 12T có thiết kế khá tương đồng với thế hệ tiền nhiệm, mặt lưng được làm bo cong ở hai cạnh kèm theo một dòng chữ “Xiaomi” bố trí ở góc dưới phần thân máy.\r\n- Đáp ứng tốt mọi nhu cầu giải trí nhờ màn hình chất lượng: Về phần màn hình thì có thể Xiaomi 12T sẽ được trang bị một tấm nền AMOLED có kích thước 6.67 inch và độ phân giải nằm ở mức 1220 x 2712 Pixels.\r\n- Thỏa sức sáng tạo nội dung hình ảnh với camera đầy chất lượng: Ở phiên bản Xiaomi 12 trước đó với camera chính có độ phân giải tuy chỉ nằm ở mức 50 MP\r\n- Hiệu năng cực khủng đến từ chipset nhà MediaTek.\r\n- Hỗ trợ sạc siêu tốc.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/ximi12t.png?alt=media&token=6b70291c-c2b2-4dbb-8c12-5b7c9afa5bec','Xiaomi 12T 5G 128GB ',10590000.00,28,8,NULL),(33,'- Cho ra những tác phẩm đầy chân thật với camera 108 MP.\r\n- Sẵn sàng “chiến” mọi tựa game : Điện thoại trang bị con chip MediaTek Dimensity 1200 8 nhân, được sản xuất trên tiến trình 6 nm cho mức xung nhịp tối đa là 3 GHz, mang đến một hiệu năng mạnh mẽ giúp máy chạy mượt các tựa game.\r\n- Sử dụng cả ngày dài chỉ với một lần sạc: Xiaomi 11T được trang bị viên pin 5000 mAh bạn có thể làm việc, chơi game, nghe nhạc hay xem phim trong khoảng một ngày với tần suất sử dụng cao.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/ximi11t.png?alt=media&token=c71ba7fd-9a4d-4a8c-ab2f-1704a290af25','Xiaomi 11T 5G 256GB ',9490000.00,69,8,NULL),(34,'- Đổi mới thiết kế với lối tạo hình đầy trẻ trung: Có thể thấy Xiaomi 13 Pro sở hữu một diện mạo gần như khác biệt hoàn toàn so với phiên bản đời trước đó, từ màu sắc cho đến cách sắp xếp camera thì hãng đã đều thay đổi để mang đến cho người dùng cái nhìn mới mẻ hơn, phong cách cũng được tăng thêm phần hiện đại nhằm bắt kịp với mọi xu hướng thiết kế hiện nay.\r\n- Tích hợp vi xử lý mạnh mẽ từ nhà Qualcomm.\r\n- Sử dụng màn hình lớn cùng công nghệ cao cấp.\r\n- Sạc đầy thiết chị chỉ trong tích tắc với sạc nhanh 120 W.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/ximi13.png?alt=media&token=3c7bb7f0-056c-476c-b8ea-760b7406ff85','Xiaomi 13 Pro 5G',29990000.00,34,8,NULL),(35,'- Thiết kế mỏng nhẹ, mang đến sự nổi bật cho người dùng: Máy được chế tác nguyên khối, sở hữu một thân hình siêu mỏng nhẹ chỉ có khối lượng 158 g và mỏng 6.8 mm, tạo cảm giác cầm nắm thoải mái, để vào túi quần hay túi áo cũng không quá nặng nề. \r\n- Màn hình AMOLED kích thước lớn cho trải nghiệm tốt hơn.\r\n- Lưu lại những khoảnh khắc thú vị với camera chụp siêu nét: Hệ thống 3 camera của Xiaomi 11 Lite 5G NE cho ra những tấm ảnh siêu chân thực, lưu giữ kỷ niệm một cách đẹp nhất.\r\n- Hiệu năng ổn định, mọi tác vụ diễn ra mượt mà.\r\n- Viên pin lớn đồng hành cùng bạn cả ngày dài: Xiaomi trang bị cho chiếc máy này viên pin 4250 mAh.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/ximi11l.png?alt=media&token=e62cbe07-4ee1-4b01-b57b-366bbe3a5005','Xiaomi 11 Lite 5G NE ',7390000.00,38,8,NULL),(36,'- Chụp ảnh chất lượng: Redmi 10 (2022) trang bị ở phần mặt lưng là cụm camera với camera chính có độ phân giải lên đến 50 MP, camera góc siêu rộng 8 MP và hai cảm biến phụ có chung độ phân giải 2 MP giúp hỗ trợ tính năng chụp ảnh xóa phông và chụp cận macro.\r\n- Màn hình hiển thị sống động: Redmi 10 (2022) sử dụng công nghệ màn hình IPS LCD có kích thước 6.5 inch cùng độ phân giải Full HD+ (1080 x 2400 Pixels), giúp tái hiện nội dung hình ảnh được sống động hơn hay giải trí đã mắt với không gian hiển thị cực lớn.\r\n- Hiệu suất mạnh mẽ nhờ chipset gaming đến từ MediaTek.\r\n- Thời lượng sử dụng dài lâu.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/ximir10.png?alt=media&token=d10defa6-1079-4c7f-8a67-c3846ca3c82d','Xiaomi Redmi 10',3590000.00,61,8,NULL),(37,'- Tỏa sáng với diện mạo đầy mới lạ: Realme 10 có một ngoại hình vuông vắn nhờ lối tạo hình phẳng ở các mặt và cạnh viền. Tổng khối lượng của máy đạt 178 g, vậy nên khi sử dụng lâu dài sẽ giúp giảm thiểu việc mỏi tay, điều này thực sự hữu ích dành cho những ai thường xuyên phải sử dụng điện thoại trong nhiều giờ liền.\r\n- Sử dụng tấm nền cao cấp.\r\n- Nâng cấp camera AI với nhiều tính năng hữu dụng: Đối với phần mặt lưng thì nhà Realme tích hợp cho máy bộ đôi camera với độ phân giải lần lượt ở cả cảm biến chính là 50 MP, phụ 2 MP.\r\n- Khai thác tối đa hiệu quả công việc.\r\n- Đáp ứng nhu cầu sử dụng dài lâu.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/rm10.png?alt=media&token=29e35da6-5f80-449d-ae41-51acadf8f0e7','Realme 10 ',7190000.00,60,10,NULL),(38,'- Thiết kế màu sắc thay đổi theo ánh sáng: Realme 9 Pro+ 5G với thiết kế Light Shift trên phiên bản Lam Hừng Đông hoàn toàn mới, có thể thay đổi màu từ xanh lam nhạt sang đỏ khi tiếp xúc với ánh sáng mặt trời đẹp tựa như cảnh bình minh. Còn một phiên bản màu khác là Lục Cực Quang cũng cực kỳ đẹp mắt.\r\n- Ảnh chụp sắc nét ngay trong điều kiện thiếu sáng: Camera trên Realme 9 Pro+ cũng là 1 điểm nhấn mạnh mẽ của hãng qua câu \"Sáng bừng từng khoảnh khắc\", máy trang bị hệ thống 3 camera bao gồm camera chính 50 MP, camera góc siêu rộng 8 MP và camera macro 2 MP.\r\n- Hiệu suất nhanh hơn với vi xử lý MediaTek.\r\n- Màn hình 90 Hz mượt mà.\r\n- Sạc 50% pin trong khoảng 15 phút*.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/rm9.png?alt=media&token=9360a11c-eda1-4c48-9e72-01459bb6a956','Realme 9 Pro+ 5G',8490000.00,15,10,NULL),(39,'- Thiết kế sang trọng, ấn tượng: Nhìn chung, Realme 8 Pro tiếp tục được hãng thiết kế với vẻ ngoài sang trọng, nhưng vẫn đảm bảo được sự gọn gàng, tiện lợi cho người dùng.\r\n- Màn hình giải trí sắc nét, chiến game siêu mượt mà: Giống với Realme 8, Realme 8 Pro tiếp tục sử dụng một màn hình cảm ứng Super AMOLED với kích thước 6.4 inch, độ phân giải Full HD+ cho phép hình ảnh được phản ánh chân thực với độ chi tiết rất cao.\r\n- Hiệu năng mạnh mẽ cùng với chip rồng Snapdragon 720G.\r\n- Hệ thống bốn camera ấn tượng lên đến 108 MP.\r\n- Thời lượng pin lớn, tích hợp sạc nhanh 50 W.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/rm8.png?alt=media&token=00ce514f-9108-4e06-9559-55c84a956b07','Realme 8 Pro ',5790000.00,24,10,NULL),(40,'- Kiểu dáng thiết kế trẻ trung và hiện đại: Máy có độ mỏng khoảng 9.1 mm cùng khối lượng tổng thể 194 g, mang đến một cảm giác cầm nắm tương đối thoải mái khi sử dụng, cùng với đó là cạnh viền, mặt lưng được bo cong nhẹ nhằm hạn chế các trường hợp gây cấn tay, khó chịu khi dùng máy trong khoảng thời gian lâu dài.\r\n- Chụp ảnh sắc nét với camera 50 MP.\r\n- Hiệu năng ổn định trên các tác vụ.\r\n- Thời gian sử dụng lâu dài: Máy sở hữu viên pin lên đến 5000 mAh.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/rmc25.png?alt=media&token=b26867da-1619-4f74-80d0-6d7cf87035e8','Realme C25Y 64GB ',3940000.00,23,10,NULL),(41,'- Thiết kế thời thượng, màu sắc thời trang: Realme C35 sở hữu 2 màu sắc trẻ trung: Đen tuyền và xanh huyền ảo với một thiết kế vô cùng độc đáo, khung bezel bo góc làm bằng vật liệu 2D phát sáng linh động, mang đến hiệu ứng màu ấn tượng khi thay đổi góc nhìn.\r\n- Ghi lại trọn vẹn hình ảnh sống động : Realme C35 có camera trước 8 MP, cho chất lượng hình ảnh selfie ổn định, nếu chỉ nói về màu sắc thì khá tốt, tái tạo màu sắc rất ổn nhưng để mà nói về độ chi tiết thì con này vẫn chưa tái tạo được nhiều chi tiết và bị bệt một số chỗ trên hình.\r\n- Hiệu năng ổn định phục vụ tốt các tác vụ.\r\n- Dung lượng pin lớn, hỗ trợ sạc nhanh.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/rmc35.png?alt=media&token=f3d7bdcb-28a6-4ae8-9de9-e066c28fb34a','Realme C35 64GB',3590000.00,31,10,NULL),(42,'- Trải nghiệm không gián đoạn: C21 Plus mang trong mình viên pin có dung lượng 5050 mAh, bạn có thể sử dụng liên tục xuyên suốt cả ngày. Đi kèm với đó là chuẩn sạc Micro USB 10 W cơ bản, với công suất này thì bạn có thể sạc máy trong thời gian nghỉ ngơi để hạn chế thời gian chờ đợi.\r\n- Vẻ đẹp từ sự tinh tế: Nokia vẫn sử dụng cùng một ngôn ngữ thiết kế cho các sản phẩm ra mắt gần đây. C21+ sử dụng khung viền hợp kim nhôm cùng mặt lưng làm từ nhựa.\r\n- Hiệu năng ổn định, bảo mật 2 năm.\r\n- Camera lấy nét tự động: Bộ đôi camera sau của máy có thông số cảm biến chính 13 MP và độ phân giải 2 MP cho cảm biến đo chiều sâu, máy cho ra những bức ảnh rất ổn.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/nokic21.png?alt=media&token=3873845c-a952-4064-9056-cec9eb43d161','Nokia C21 Plus 64GB ',2390000.00,34,7,NULL),(43,'- Kiểu dáng quen thuộc: C31 có ngôn ngữ thiết kế khá giống với các sản phẩm điện thoại Nokia trước đây, với lối thiết kế vân nổi ở phần mặt lưng giúp mang lại cho thiết bị khả năng hạn chế các vết xước nhẹ, tránh được tình trạng bám dấu vân tay và mồ hôi trong quá trình sử dụng.\r\n- Sở hữu màn hình kích thước lớn: Lần này nhà Nokia trang bị cho C31 màn hình có kích thước tới 6.7 inch, mang lại không gian hiển thị rộng lớn để người dùng có thể xem phim hay chơi game đã mắt.\r\n- Đáp ứng tốt mọi nhu cầu chụp ảnh: Điện thoại Nokia sở hữu 3 camera ở phần mặt lưng, trong đó camera chính có độ phân giải 13 MP và hai cảm biến phụ cùng 2 MP, mang đến nhiều chế độ chụp khác nhau.\r\n - Duy trì sự ổn định trên nhiều tác vụ.\r\n- Tích hợp viên pin khủng.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/nokic31.png?alt=media&token=922c4130-38b1-4bee-add9-45b55ac5c96c','Nokia C31',2190000.00,38,7,NULL),(44,'- Thiết kế phổ thông phù hợp với mọi lứa tuổi: Nokia G11 Plus có một kiểu dáng theo mình là khá quen thuộc bởi máy có nét tương đồng với một số mẫu điện thoại Nokia dòng G và dòng C được ra mắt trong năm 2022.\r\n- Hiển thị nội dung tốt hơn trên một không gian lớn: Ở mẫu điện thoại này hãng đã trang bị tấm nền TFT LCD, theo mình thấy thì hình ảnh mà máy cho ra có độ sáng tương đối cao, màu sắc thì trung thực và góc nhìn rộng.\r\n- Lưu giữ mọi khoảnh khắc thông qua camera 50 MP.\r\n- Hiệu năng đáp ứng tốt các tác vụ cơ bản.\r\n- Viên pin đáp ứng đủ cho một ngày sử dụng: Điện thoại có mức dung lượng pin tối đa là 5000 mAh.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/nokig11.png?alt=media&token=91c362fe-4527-47c1-a818-15df5d2212e0','Nokia G11 Plus 32GB ',2190000.00,19,7,NULL),(45,'- Nghe gọi rõ ràng - thiết kế gọn gàng: Nokia 5710 mang trong mình thiết kế mang tính thể thao với hai màu sắc chủ đạo là trắng và đen, kèm theo đó là những họa tiết phụ và dãy phím bấm ở hai cạnh viền được làm màu đỏ nhằm mang lại điểm nhấn cho điện thoại.\r\n- Màn hình hiển thị rõ ràng: Nokia 5710 được trang bị một tấm nền TFT LCD, giao diện trên điện thoại thiết kế khá trực quan và dễ nhìn. Đi kèm với đó sẽ là kích thước màn hình 2.4 inch.\r\n- Hỗ trợ chụp ảnh quay phim.\r\n- Bộ nhớ lưu trữ nhiều thông tin.\r\n- Sử dụng dài lâu với viên pin lớn: Máy sở hữu viên pin dung lượng 1450 mAh','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/noki5710.png?alt=media&token=19233573-78ed-4851-95f4-1c374f46b495','Nokia 5710',1790000.00,10,7,NULL),(46,'- Hoàn thiện tỉ mỉ cho đến từng chi tiết nhỏ: Nokia 8210 4G sở hữu một mặt lưng và bộ khung được làm từ nhựa Polycarbonate, có các màu sắc trẻ trung.\r\n- Màn hình hiển thị to rõ: Máy được trang bị một màn hình có kích thước 2.8 inch và độ phân giải QVGA (240 x 320 Pixels).\r\n- Thời lượng sử dụng lâu: Nokia 8210 4G được vận hành bởi con chip không tiêu hao quá nhiều điện năng cùng một viên pin có dung lượng 1450 mAh.\r\n- Hỗ trợ 2 sim 2 sóng.\r\n- Hỗ trợ mở rộng bộ nhớ lên đến 32 GB.','https://firebasestorage.googleapis.com/v0/b/image-e0a3d.appspot.com/o/noki8210.png?alt=media&token=e16c4625-0d33-40c0-b3e6-50a3e3be69f6','Nokia 8210 4G ',1590000.00,11,7,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_USER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKob8kqyqqgmefl0aco34akdtpe` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'buithitrong123456@gmail.com','Bui Thi','Trong','$2a$10$qC6D0CdL5A3YUdgQj/YuFOWacSh4DZ8DPoLNRzuioRoiqzBLNkH4G'),(2,'handsomezezo@gmail.com','Trung','Bui','$2a$10$O23QTorrCq2jta7DRmfhKuXBTwjsd0I9wy3Q2/2prXrjE0ClQJ4zK');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_roles` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  KEY `FKt4v0rrweyk393bdgt107vdx0x` (`role_id`),
  KEY `FKgd3iendaoyh04b95ykqise6qh` (`user_id`),
  CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKt4v0rrweyk393bdgt107vdx0x` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'shopdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-11 12:37:27
