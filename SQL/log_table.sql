-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2022 年 2 月 04 日 13:59
-- サーバのバージョン： 5.7.34
-- PHP のバージョン: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `php04_assignment`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `log_table`
--

CREATE TABLE `log_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `category` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `log_table`
--

INSERT INTO `log_table` (`id`, `name`, `category`, `comment`, `date`) VALUES
(1, '東京チャイニーズ一凛', '中華', '高級中華路線では非常にコスパが良い。', '2021-01-20 19:26:40'),
(2, 'NOURA', 'ビストロ', '浅草の2つ星、オマージュの姉妹店。超コスパ良い', '2021-01-20 19:27:55'),
(3, 'アンテリブル', 'ビストロ', '築地のビストロ。今は新店オープンに向けて一時閉店中', '2021-01-20 19:32:48'),
(4, 'ヤウメイ', '中華', 'ヤムチャのクオリティでは世界一', '2021-01-20 19:34:02'),
(5, 'セルサルサーレ', 'イタリアン', '恵比寿の超人気店。コースでプレゼンテーションしっかりしているのに安い', '2021-01-20 19:35:18');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `log_table`
--
ALTER TABLE `log_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `log_table`
--
ALTER TABLE `log_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;