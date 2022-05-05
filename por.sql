-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-05-05 23:17:36
-- 伺服器版本： 10.4.21-MariaDB
-- PHP 版本： 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `por`
--

-- --------------------------------------------------------

--
-- 資料表結構 `banner`
--

CREATE TABLE `banner` (
  `id` int(5) UNSIGNED NOT NULL,
  `img` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '檔案名稱',
  `text` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '描述文字',
  `sh` int(1) NOT NULL COMMENT '顯示'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `banner`
--

INSERT INTO `banner` (`id`, `img`, `text`, `sh`) VALUES
(20, '02.jpg', 'bg2', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `exp`
--

CREATE TABLE `exp` (
  `id` int(5) UNSIGNED NOT NULL,
  `year` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '年度',
  `exp` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '年度內容'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `exp`
--

INSERT INTO `exp` (`id`, `year`, `exp`) VALUES
(13, '2021', '◆PHP資料庫網頁設計班(920hr)\r\n<hr>'),
(18, '2020', '日本打工度假(2019~2020)\r\n<br>\r\n◆全家便利商店\r\n<br>\r\n◆滑雪場服務人員\r\n<br>\r\n◆飯店內外場服務人員\r\n<hr>\r\n'),
(19, '2019', '◆日文檢定JLPT N2\r\n<br>\r\n◆TOEIC 700\r\n<hr>'),
(20, '2018', '畢業於國立東華大學教育行政與管理學系\r\n<br>\r\n◆通過科技部大專生研究計畫\r\n<br>\r\n◆證券商業務員證照合格\r\n<br>\r\n◆檔期專櫃銷售(2016~2018)\r\n<hr>');

-- --------------------------------------------------------

--
-- 資料表結構 `footer`
--

CREATE TABLE `footer` (
  `id` int(5) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '頁尾內容'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `footer`
--

INSERT INTO `footer` (`id`, `text`) VALUES
(1, 'Copyright by Saiichi');

-- --------------------------------------------------------

--
-- 資料表結構 `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '作品名稱',
  `img` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '檔案名稱',
  `text` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '作品敘述',
  `link` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '作品連結',
  `github` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'github連結',
  `class` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '作品分類',
  `rank` int(10) NOT NULL COMMENT '顯示排序',
  `sh` int(1) NOT NULL COMMENT '顯示'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `portfolio`
--

INSERT INTO `portfolio` (`id`, `name`, `img`, `text`, `link`, `github`, `class`, `rank`, `sh`) VALUES
(11, '歷史匯率查詢', 'bank_api.PNG', 'chart.js\r\ndatatable\r\n固定API串接', 'http://220.128.133.15/s1100401/', 'https://github.com/wdaweb/WebFrontend_Final-Saichii/blob/master/index.php', 'else', 1, 1),
(12, '電子商務網站範例', 'b2c.PNG', 'B2C網站基本功能', 'http://220.128.133.15/s1100401/', 'https://github.com/Saichii/bq04', 'html', 2, 1),
(13, '萬年曆', 'calendar.PNG', '基本萬年曆版型', 'http://220.128.133.15/s1100401/', 'https://github.com/Saichii/calendar_pra', 'html', 3, 1),
(14, '作品集網站', 'por_page.PNG', '可新增作品更改畫面物件...等', 'http://220.128.133.15/s1100401/', 'https://github.com/Saichii/op_portfolio', 'else', 4, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `skill`
--

CREATE TABLE `skill` (
  `id` int(5) UNSIGNED NOT NULL,
  `img` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '檔案名稱',
  `text` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '描述文字',
  `sh` int(1) NOT NULL COMMENT '顯示'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `id` int(5) UNSIGNED NOT NULL,
  `acc` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '帳號',
  `pw` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '密碼'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `exp`
--
ALTER TABLE `exp`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `exp`
--
ALTER TABLE `exp`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `skill`
--
ALTER TABLE `skill`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
