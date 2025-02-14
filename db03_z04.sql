-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025-02-14 08:57:34
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `db03_z04`
--

-- --------------------------------------------------------

--
-- 資料表結構 `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `acc` text NOT NULL,
  `pw` text NOT NULL,
  `pr` text NOT NULL COMMENT '權限'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `admins`
--

INSERT INTO `admins` (`id`, `acc`, `pw`, `pr`) VALUES
(1, 'admin', '1234', 'a:5:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;}'),
(2, 'ssss', '1111', 'a:5:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";}'),
(3, 'aaaa', '1111', 'a:5:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";}');

-- --------------------------------------------------------

--
-- 資料表結構 `bottom`
--

CREATE TABLE `bottom` (
  `id` int(11) NOT NULL,
  `bottom` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `bottom`
--

INSERT INTO `bottom` (`id`, `bottom`) VALUES
(1, '2025頁尾版權所有'),
(2, '2025頁尾版權所有'),
(3, '2025頁尾版權所有'),
(4, '2025頁尾版權所有');

-- --------------------------------------------------------

--
-- 資料表結構 `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `no` text NOT NULL,
  `name` text NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL,
  `spec` text NOT NULL,
  `intro` text NOT NULL,
  `img` text NOT NULL,
  `big` int(10) UNSIGNED NOT NULL,
  `mid` int(10) UNSIGNED NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `items`
--

INSERT INTO `items` (`id`, `no`, `name`, `price`, `stock`, `spec`, `intro`, `img`, `big`, `mid`, `sh`) VALUES
(1, '010203', '手工訂製長夾', 1200, 2, '全牛皮', '手工製作長夾卡片層6*2 鈔票層 *2 零錢拉鍊層 *1 \n採用愛馬仕相同的雙針縫法,皮件堅固耐用不脫線 \n材質:直革鞣(馬鞍皮)牛皮製作  \n手工染色 ', '0403.jpg', 1, 5, 1),
(2, '020705', '兩用式磁扣腰包', 685, 18, '中型', '手工製作長夾卡片層6*2 鈔票層 *2 零錢拉鍊層 *1   \r\n手工染色 ', '0403.jpg', 1, 5, 1),
(3, '020706', '超薄設計男士長款真皮', 800, 61, 'L號', '手工製作長夾卡片層6*2 鈔票層 *2 零錢拉鍊層 *1   \r\n手工染色 ', '0403.jpg', 1, 5, 1),
(4, '030103', '經典牛皮少女帆船鞋', 1000, 6, 'S號', '手工製作長夾卡片層6*2 鈔票層 *2 零錢拉鍊層 *1   \r\n手工染色 ', '0403.jpg', 1, 5, 1),
(5, '030203', '經典優雅時尚流行涼鞋', 2650, 8, 'LL', '手工製作長夾卡片層6*2 鈔票層 *2 零錢拉鍊層 *1   \r\n手工染色 ', '0403.jpg', 1, 5, 1),
(6, '040202', '寵愛天然藍寶女戒', 28000, 1, '1克拉', '手工製作長夾卡片層6*2 鈔票層 *2 零錢拉鍊層 *1   \r\n手工染色 ', '0403.jpg', 1, 5, 1),
(7, '050107', '反折式大容量手提肩背包', 888, 15, 'L號', '手工製作長夾卡片層6*2 鈔票層 *2 零錢拉鍊層 *1   \r\n手工染色 ', '0403.jpg', 1, 5, 1),
(8, '060108', '男單肩包男', 650, 7, '多功能', '手工製作長夾卡片層6*2 鈔票層 *2 零錢拉鍊層 *1   \r\n手工染色 ', '0403.jpg', 1, 5, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `acc` text NOT NULL,
  `pw` text NOT NULL,
  `addr` text NOT NULL,
  `email` text NOT NULL,
  `tel` text NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `members`
--

INSERT INTO `members` (`id`, `name`, `acc`, `pw`, `addr`, `email`, `tel`, `regdate`) VALUES
(1, '321', '123', '123', '123', '123', '123', '2025-02-07 06:10:53');

-- --------------------------------------------------------

--
-- 資料表結構 `types`
--

CREATE TABLE `types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `big_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `types`
--

INSERT INTO `types` (`id`, `name`, `big_id`) VALUES
(1, ' 流行皮皮件 ', 0),
(2, '流行鞋區', 0),
(3, '流行飾品', 0),
(4, '背包', 0),
(7, '女用鱷魚皮件', 1),
(9, '紳士流行鞋區', 2),
(10, '時尚手錶', 3),
(11, '時尚珠寶', 3),
(12, '背包', 4),
(13, '鑽石', 0),
(14, '男用墨狐皮件', 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `bottom`
--
ALTER TABLE `bottom`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `bottom`
--
ALTER TABLE `bottom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
