-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 12 2024 г., 10:39
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `news`
--

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL COMMENT 'Код',
  `img` varchar(255) NOT NULL COMMENT 'Изображение',
  `name` varchar(255) NOT NULL COMMENT 'Наименование',
  `description` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Описание'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `img`, `name`, `description`) VALUES
(1, 'https://www.permaviat.ru/_res/news/1189img.jpg', 'Пермский военный институт войск национальной гвардии Российской Федерации приглашает на обучение', 'В качестве кандидатов рассматриваются лица, имеющие среднее общее и (или) среднее профессиональное образование, из числа:\r\n\r\nграждан, не проходивших военную службу, - в возрасте от 16 до 22 лет;\r\nграждан, прошедших военную службу, и военнослужащих, проходящих военную службу по призыву, - до достижения ими возраста 24 лет;\r\nвоеннослужащих, проходящих военную службу по контракту (кроме офицеров), - до достижения ими возраста 27 лет (возраст определяется по состоянию на 1 августа года приема.\r\n \r\n\r\n\r\nВоенный институт осуществляет прием на обучение на семь факультетов:\r\n\r\n \r\n\r\nфакультет (технического обеспечения) по специальности – 23.05.02 «Транспортные средства специального назначения»;\r\nфакультет (ракетно-артиллерийского вооружения) по специальности – 17.05.02 «Стрелково-пушечное, артиллерийское и ракетное оружие»;\r\nфакультет (связи) по направлению подготовки 11.03.02 «Инфокоммуникационные технологии и системы связи»;\r\nфакультет (информационных технологий и защиты информации) по направлению подготовки 09.03.01 «Информатика и вычислительная техника»;\r\nфакультет (кинологический) по направлению подготовки – 06.03.01 «Биология»;\r\nфакультет (тыла) по специальности – 56.05.01 «Тыловое обеспечение»;\r\nфакультет (инженерного обеспечения) по специальностям: 11.05.02 «Специальные радиотехнические системы»; 23.05.01 «Наземные транспортно-технологические средства»\r\n\r\nБолее подробная информация о правилах приема на 2025 год представлена здесь'),
(2, 'https://www.permaviat.ru/_res/news_gallery/457pic.jpg', 'Слет первых «Будь здоров!»', 'С 15 по 17 ноября 2024 года наше первичное отделение приняло участие в краевом слёте для активистов Движения Первых «Будь здоров!», организованном для обучающихся в учреждениях среднего профессионального образования Пермского края.\r\n\r\nНа мероприятии студенты познакомились с различными формами проведения мероприятий, направленных на поддержание здорового образа жизни. Они узнали, как другие учебные заведения способствуют популяризации ЗОЖ среди своих студентов.\r\n\r\nНаши ребята также посетили конференции, где обсуждали эффективные способы популяризации здорового образа жизни.\r\n\r\nКроме того, студенты представили свой собственный проект на 2025 год. Проект затронул важные аспекты формирования здорового образа жизни и показал высокий уровень подготовки наших студентов.\r\n\r\nОтдельное внимание было уделено вопросам лидерства. Наши студенты продемонстрировали уверенность и готовность брать на себя ответственность за реализацию инициатив, направленных на улучшение здоровья и благополучия окружающих.\r\n\r\nБлагодарим организаторов и всех участников за предоставленную возможность обменяться опытом и знаниями! Уверены, что полученные навыки и знания помогут студентам в дальнейшем развитии и достижении поставленных целей.'),
(3, 'https://www.permaviat.ru/_res/news_gallery/454pic.jpg', 'Встреча с Главой администрации Ленинского района г. Перми', 'Студенты Авиационного техникума посетили главу администрации Ленинского района города Перми!  Уникальное событие, которое дало возможность нашим студентам напрямую задать интересующие их вопросы главе района.  В ходе встречи обсуждались важные темы, касающиеся молодежной политики, образовательных инициатив и возможностей для студентов в нашем районе. Ребята проявили активность и интерес, задавая вопросы о развитии инфраструктуры, поддержке студентов и перспективах трудоустройства после окончания учебы.  Мы благодарим главу администрации за открытость и готовность к диалогу! Такие встречи помогают наладить связь между студентами и представителями власти, а также способствуют улучшению условий обучения и жизни в нашем районе.');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL COMMENT 'Код',
  `login` varchar(255) NOT NULL COMMENT 'Логин',
  `password` varchar(255) NOT NULL COMMENT 'Пароль',
  `roll` int NOT NULL COMMENT 'Роль'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `roll`) VALUES
(1, 'admin', 'admin', 1),
(2, 'user', 'user', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users_tokens`
--

CREATE TABLE `users_tokens` (
  `id` int NOT NULL COMMENT 'Код',
  `id_user` int NOT NULL COMMENT 'Код пользователя',
  `token` varchar(255) NOT NULL COMMENT 'Токен'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users_tokens`
--

INSERT INTO `users_tokens` (`id`, `id_user`, `token`) VALUES
(2, 1, '$2y$10$iVqKrbidYD1EVbrwgc/XMulBjMp2STq0A2OMv7pcYiHA0mNgTKNB.');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users_tokens`
--
ALTER TABLE `users_tokens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'Код', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'Код', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users_tokens`
--
ALTER TABLE `users_tokens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'Код', AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;