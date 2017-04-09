-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 09 2017 г., 17:47
-- Версия сервера: 5.7.16
-- Версия PHP: 7.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `bl_courses`
--

CREATE TABLE `bl_courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `did` int(10) UNSIGNED DEFAULT NULL,
  `srs_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `price` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf32;

--
-- Дамп данных таблицы `bl_courses`
--

INSERT INTO `bl_courses` (`id`, `did`, `srs_id`, `title`, `alias`, `description`, `price`) VALUES
(1, 4, 4, 'Курс', 'алиас', 'Описание,, мліоваоілви,Юм івлт вю Описание,, мліоваоілви,Юм івлт вю Описание,, мліоваоілви,Юм івлт вю Описание,, мліоваоілви,Юм івлт вю мівмт', 1250),
(2, NULL, NULL, 'Курс', 'алиас', 'Описание,, мліоваоілви,Юм івлт вю Описание,, мліоваоілви,Юм івлт вю Описание,, мліоваоілви,Юм івлт вю Описание,, мліоваоілви,Юм івлт вю мівмт', 452),
(3, 4, 4, 'Курс', 'алиас', 'Описание,, мліоваоілви,Юм івлт вю Описание,, мліоваоілви,Юм івлт вю Описание,, мліоваоілви,Юм івлт вю Описание,, мліоваоілви,Юм івлт вю мівмт', 1250),
(4, NULL, NULL, 'Курс', 'алиас', 'Описание,, мліоваоілви,Юм івлт вю Описание,, мліоваоілви,Юм івлт вю Описание,, мліоваоілви,Юм івлт вю Описание,, мліоваоілви,Юм івлт вю мівмт', 452);

-- --------------------------------------------------------

--
-- Структура таблицы `bl_minicourses`
--

CREATE TABLE `bl_minicourses` (
  `id` int(10) UNSIGNED NOT NULL,
  `did` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `default` tinyint(1) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bl_minicourses`
--

INSERT INTO `bl_minicourses` (`id`, `did`, `title`, `img`, `default`) VALUES
(1, 1, 'Миникурс', 'freereactjs.png', 1),
(2, 25, 'Миникурс2', 'freereactjs.png', 1),
(3, 1, 'Миникурс', 'freereactjs.png', 1),
(4, 25, 'Миникурс2', 'freereactjs.png', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `bl_posts`
--

CREATE TABLE `bl_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_release` tinyint(1) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `intro_text` text NOT NULL,
  `full_text` text NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `meta_desc` varchar(255) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL,
  `hide` tinyint(1) UNSIGNED NOT NULL,
  `no_forms` tinyint(1) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `bl_posts`
--

INSERT INTO `bl_posts` (`id`, `is_release`, `title`, `img`, `intro_text`, `full_text`, `date`, `meta_desc`, `meta_key`, `hits`, `hide`, `no_forms`) VALUES
(1, 1, 'Нечто', 'landing-result.png', 'Немного текста', '  <p>Неделю назад был начат эксперимент, целью которого было выяснить, <a href=\"https://blog.myrusakov.ru/landing-exp.html\">сколько стоит клиент</a> на создание лендингов под заказ. В этом же видео я подвожу итоги, показываю всю статистику.</p>\r\n        <div class=\"center\">\r\n            <iframe class=\"video\" src=\"https://www.youtube.com/embed/t1BKfSQK7jg?vq=hd720&amp;rel=0&amp;fs=1\" allowfullscreen=\"\"></iframe>\r\n        </div>\r\n        <p>Кому некогда смотреть видео, просто сообщаю о результатах. Во-первых, отмечу, что эксперимента по моей ошибке получилось 2. В видео я объяснил этот момент, но тут скажу лишь, что первый эксперимент был проведён по ошибке с очень высокой ценой за клик. Эта цена была установлена ошибочно, и я её не исправил. Поэтому весь бюджет (1000 рублей) был слит менее, чем за сутки. Однако, когда я увидел, сколько я получил заявок, я понял, что эта ошибка действительно была очень полезной. Вот её результаты:</p>\r\n        <ul>\r\n            <li>Бюджет: 1000 рублей</li>\r\n            <li>Срок: часов 10-12</li>\r\n            <li>Количество переходов: 51</li>\r\n            <li>Количество заявок: 3</li>\r\n            <li>Уникальных заявок: 2</li>\r\n            <li>Цена уникальной заявки: 500 рублей</li>\r\n        </ul>\r\n        <p>Учитывая, что цена на создание лендинга у Web-студий начинается с 30 000 рублей, цена заявки в 500 рублей выглядит просто смешной.</p>\r\n        <p>Теперь результаты второй части эксперимента:</p>\r\n        <ul>\r\n            <li>Бюджет: 1000 рублей</li>\r\n            <li>Срок: примерно 4 суток</li>\r\n            <li>Количество переходов: примерно 83</li>\r\n            <li>Количество заявок: 10</li>\r\n            <li>Уникальных заявок: 7</li>\r\n            <li>Цена уникальной заявки: примерно 143 рубля</li>\r\n        </ul>\r\n        <p>Таким образом, мы приходим к выводу, что создание лендингов на заказ как было золотой жилой, так и осталось. Поэтому я сам, кстати, переквалифицировался только на создание лендингов (<a href=\"https://srs.myrusakov.ru/landingorder\">заказать лендинг у меня</a>). Поскольку их создание занимает значительно меньше времени, а прибыль в час значительно больше.</p>\r\n        <p>Что касается курса \"Создание и продвижение лендинга под ключ\", то он в ближайшее время выйдет, поэтому следите за почтой.</p>\r\n    ', 1327571510, 'мета деск', 'мета кей', 1, 0, 0),
(2, 1, 'Нечто', 'landing-exp.png', 'Немного текста', '  <p>Неделю назад был начат эксперимент, целью которого было выяснить, <a href=\"https://blog.myrusakov.ru/landing-exp.html\">сколько стоит клиент</a> на создание лендингов под заказ. В этом же видео я подвожу итоги, показываю всю статистику.</p>\r\n        <div class=\"center\">\r\n            <iframe class=\"video\" src=\"https://www.youtube.com/embed/t1BKfSQK7jg?vq=hd720&amp;rel=0&amp;fs=1\" allowfullscreen=\"\"></iframe>\r\n        </div>\r\n        <p>Кому некогда смотреть видео, просто сообщаю о результатах. Во-первых, отмечу, что эксперимента по моей ошибке получилось 2. В видео я объяснил этот момент, но тут скажу лишь, что первый эксперимент был проведён по ошибке с очень высокой ценой за клик. Эта цена была установлена ошибочно, и я её не исправил. Поэтому весь бюджет (1000 рублей) был слит менее, чем за сутки. Однако, когда я увидел, сколько я получил заявок, я понял, что эта ошибка действительно была очень полезной. Вот её результаты:</p>\r\n        <ul>\r\n            <li>Бюджет: 1000 рублей</li>\r\n            <li>Срок: часов 10-12</li>\r\n            <li>Количество переходов: 51</li>\r\n            <li>Количество заявок: 3</li>\r\n            <li>Уникальных заявок: 2</li>\r\n            <li>Цена уникальной заявки: 500 рублей</li>\r\n        </ul>\r\n        <p>Учитывая, что цена на создание лендинга у Web-студий начинается с 30 000 рублей, цена заявки в 500 рублей выглядит просто смешной.</p>\r\n        <p>Теперь результаты второй части эксперимента:</p>\r\n        <ul>\r\n            <li>Бюджет: 1000 рублей</li>\r\n            <li>Срок: примерно 4 суток</li>\r\n            <li>Количество переходов: примерно 83</li>\r\n            <li>Количество заявок: 10</li>\r\n            <li>Уникальных заявок: 7</li>\r\n            <li>Цена уникальной заявки: примерно 143 рубля</li>\r\n        </ul>\r\n        <p>Таким образом, мы приходим к выводу, что создание лендингов на заказ как было золотой жилой, так и осталось. Поэтому я сам, кстати, переквалифицировался только на создание лендингов (<a href=\"https://srs.myrusakov.ru/landingorder\">заказать лендинг у меня</a>). Поскольку их создание занимает значительно меньше времени, а прибыль в час значительно больше.</p>\r\n        <p>Что касается курса \"Создание и продвижение лендинга под ключ\", то он в ближайшее время выйдет, поэтому следите за почтой.</p>\r\n    ', 1327571510, 'мета деск', 'мета кей', 1, 0, 0),
(3, 0, 'Нечто', 'test.img', 'Немного текста', 'Более подробный текст', 1327571510, 'мета деск', 'мета кей', 1, 0, 0),
(4, 0, 'Нечто', 'test.img', 'Немного текста', 'Более подробный текст', 1327571510, 'мета деск', 'мета кей', 1, 0, 0),
(5, 1, 'Нечто', 'test.img', 'Немного текста', 'Более подробный текст', 1327571510, 'мета деск', 'мета кей', 1, 0, 0),
(6, 1, 'Нечто', 'test.img', 'Немного текста', 'Более подробный текст', 1327571510, 'мета деск', 'мета кей', 1, 0, 0),
(7, 1, 'Нечто', 'test.img', 'Немного текста', 'Более подробный текст', 1327571510, 'мета деск', 'мета кей', 120, 1, 0),
(8, 1, 'Нечто', 'test.img', 'Немного текста', 'Более подробный текст', 1327571510, 'мета деск', 'мета кей', 120, 0, 0),
(9, 1, 'Нечто', 'test.img', 'Немного текста', 'Более подробный текст', 1327571510, 'мета деск', 'мета кей', 120, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `bl_reviews`
--

CREATE TABLE `bl_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `from` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bl_reviews`
--

INSERT INTO `bl_reviews` (`id`, `from`, `video`) VALUES
(5, 'Вадима Петрова', 'CfAIO_uWL9I'),
(3, 'Dainius Zv', 'ltpLVHIAsPU'),
(4, 'Сергея Василюка', 'g4rtr5Zr4Lg'),
(6, 'Павла', 'adfmXL1_dfw'),
(7, 'Георгия', '5bBL9G_je38');

-- --------------------------------------------------------

--
-- Структура таблицы `bl_sef`
--

CREATE TABLE `bl_sef` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` varchar(255) NOT NULL,
  `link_sef` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bl_sef`
--

INSERT INTO `bl_sef` (`id`, `link`, `link_sef`) VALUES
(1, 'site/author', 'author'),
(2, 'site/video', 'video'),
(3, 'site/releases', 'releases'),
(4, 'site/post?id=1', 'firs'),
(5, 'site/post?id=2', 'second'),
(6, 'site/post?id=3', 'tretiy'),
(7, 'site/post?id=4', 'chetvertiy'),
(8, 'site/search', 'search'),
(9, 'site/rev', 'reviews'),
(10, 'site/sites', 'sites');

-- --------------------------------------------------------

--
-- Структура таблицы `bl_sites`
--

CREATE TABLE `bl_sites` (
  `id` int(10) UNSIGNED NOT NULL,
  `address` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bl_sites`
--

INSERT INTO `bl_sites` (`id`, `address`, `description`, `active`) VALUES
(1, 'http://раздолбаи.рф', 'Сайт хорошего настроения', 1),
(2, 'http://myglazik.ru', 'Личный блог + Магазин недорогих товаров!', 1),
(3, 'http://coffee-mir.ru/', 'Мой первый сайт на CSS. Блог по интересу', 1),
(4, 'http://igorchuvakin.ru/', 'Сайт - блог автора.', 1),
(5, 'http://inkrf.ru', 'Интернет-магазин расходных материалов к оргтехнике. Российские чернила к струйным принтерам!', 1),
(6, 'http://vbarcaru.net/new', 'Учеба , учебный материал.Начал с уроков Русакова по создании сайтов на готовых движках и создал на site na Wordpress , потом создал сайт на Joomla.', 1),
(7, 'http://videovirt.ru/', 'Сайт создан на Html5 и Css3, а также адаптирован под мобильные устройства благодаря видеокурсу мастера своего дела Михаила Русакова. Спасибо!', 1),
(8, 'http://равнение.рф', 'Мой первый сайт. Сделан на основе бесплатного урока Михаила Русакова.', 1),
(9, 'http://arspecstroi.ru', 'Парк спецтехники:Аренда экскаватора, аренда JCB, аренда автокранов, манипуляторов и другой спецтехники', 1),
(10, 'http://afina2015.esy.es/', 'Это мой личный сайт. Он еще не валидный. Я еще изучаю ваши уроки и буду исправлять ошибки. Рада буду вашим замечаниям и рекомендациям. ', 1),
(11, 'http://раздолбаи.рф', 'Сайт хорошего настроения', 1),
(12, 'http://myglazik.ru', 'Личный блог + Магазин недорогих товаров!', 1),
(13, 'http://coffee-mir.ru/', 'Мой первый сайт на CSS. Блог по интересу', 1),
(14, 'http://igorchuvakin.ru/', 'Сайт - блог автора.', 1),
(15, 'http://inkrf.ru', 'Интернет-магазин расходных материалов к оргтехнике. Российские чернила к струйным принтерам!', 1),
(16, 'http://vbarcaru.net/new', 'Учеба , учебный материал.Начал с уроков Русакова по создании сайтов на готовых движках и создал на site na Wordpress , потом создал сайт на Joomla.', 1),
(17, 'http://videovirt.ru/', 'Сайт создан на Html5 и Css3, а также адаптирован под мобильные устройства благодаря видеокурсу мастера своего дела Михаила Русакова. Спасибо!', 1),
(18, 'http://равнение.рф', 'Мой первый сайт. Сделан на основе бесплатного урока Михаила Русакова.', 1),
(19, 'http://arspecstroi.ru', 'Парк спецтехники:Аренда экскаватора, аренда JCB, аренда автокранов, манипуляторов и другой спецтехники', 1),
(20, 'http://afina2015.esy.es/', 'Это мой личный сайт. Он еще не валидный. Я еще изучаю ваши уроки и буду исправлять ошибки. Рада буду вашим замечаниям и рекомендациям. ', 1),
(21, 'http://127.0.0.1/', 'dsd', 0),
(22, 'http://127.0.0.1/asdasd', 'dsddasdsad', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `bl_courses`
--
ALTER TABLE `bl_courses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bl_minicourses`
--
ALTER TABLE `bl_minicourses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bl_posts`
--
ALTER TABLE `bl_posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bl_reviews`
--
ALTER TABLE `bl_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bl_sef`
--
ALTER TABLE `bl_sef`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `link` (`link`),
  ADD UNIQUE KEY `link_self` (`link_sef`);

--
-- Индексы таблицы `bl_sites`
--
ALTER TABLE `bl_sites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `bl_courses`
--
ALTER TABLE `bl_courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `bl_minicourses`
--
ALTER TABLE `bl_minicourses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `bl_posts`
--
ALTER TABLE `bl_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `bl_reviews`
--
ALTER TABLE `bl_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `bl_sef`
--
ALTER TABLE `bl_sef`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `bl_sites`
--
ALTER TABLE `bl_sites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
