-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июн 23 2020 г., 14:01
-- Версия сервера: 8.0.19
-- Версия PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `city_info`
--

-- --------------------------------------------------------

--
-- Структура таблицы `dep`
--

CREATE TABLE `dep` (
  `id` int NOT NULL,
  `Ф.И.О` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Населенный пункт` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Телефон` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Email` text NOT NULL,
  `Facebook` text,
  `VK` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `OK` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Instagram` text,
  `Охват` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `dep`
--

INSERT INTO `dep` (`id`, `Ф.И.О`, `Населенный пункт`, `Телефон`, `Email`, `Facebook`, `VK`, `OK`, `Instagram`, `Охват`) VALUES
(1, 'Касаткин Александр Денисович', 'Симферополь', '89780000988', 'kas1yoda@icloud.com', 'https://vk.com/sashakasatkin0', 'https://vk.com/sashakasatkin0', '', '', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `dep`
--
ALTER TABLE `dep`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `dep`
--
ALTER TABLE `dep`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
