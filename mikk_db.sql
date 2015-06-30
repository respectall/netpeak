-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Июн 30 2015 г., 15:42
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `mikk_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `title_en` varchar(100) CHARACTER SET utf8 NOT NULL,
  `img_logo` varchar(100) CHARACTER SET utf8 NOT NULL,
  `keywords` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `title_en`, `img_logo`, `keywords`) VALUES
(1, 'Новинки', 'new', 'nav-new.png', 'new, новинки'),
(2, 'Лидеры продаж', 'hits', 'nav-lider.png', 'hits, лидеры продаж'),
(3, 'Распродажа', 'sale', 'nav-sale.png', 'sale, распродажа');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(100) CHARACTER SET utf8 NOT NULL,
  `comment` text CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 NOT NULL,
  `note_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `time` varchar(10) CHARACTER SET utf8 NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=28 ;

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE IF NOT EXISTS `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `title_en` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `text` text CHARACTER SET utf8 NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `category` varchar(10) CHARACTER SET utf8 NOT NULL,
  `keywords` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=30 ;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `title`, `title_en`, `description`, `text`, `img`, `price`, `category`, `keywords`) VALUES
(1, 'Sony Xperia S 32Gb (черный)', 'sony-xperia-s-black', 'Футуристичный смартфон Sony Xperia S под управлением ОС Android 2.3 Gingerbread с возможностью обновления до версии 4.0 Ice Cream Sandwich – первый из серии Xperia NXT, линейки смартфонов нового поколения. В нем', 'Футуристичный смартфон Sony Xperia S под управлением ОС Android 2.3 Gingerbread с возможностью обновления до версии 4.0 Ice Cream Sandwich – первый из серии Xperia NXT, линейки смартфонов нового поколения. В нем объединились новейшие технологии и лучшие разработки Sony, достойный функционал и минималистичный дизайн.\r\n\r\nВысокая производительность. Мощный двухъядерный процессор 1,5 ГГц Qualcomm Snapdragon MSM8260 гарантирует быстродействие любых игр и приложений. Превосходное качество изображения. 4,3-дюймовый HD 1280*720p экран Reality Display с технологией Mobile BRAVIA Engine обеспечивает потрясающие впечатления от просмотра изображений и видео с высоким разрешением.\r\n\r\nУдобство подключения к другим устройствам. Беспроводная связь на малых расстояниях (NFC) позволяет легко обмениваться информацией с другими пользователями и открывает доступ к многочисленным NFC-приложениям и услугам. Xperia S можно подключить к телевизору посредством Wi-Fi, DLNA, HDMI, а также использовать BRAVIA Sync для управления смартфоном с пульта ДУ телевизора.', 'Sony-Exp.png', '24990', 'new', 'new, sony'),
(2, 'Samsung Galaxy S Advance 8Gb(черный)', 'samsung-galaxy-s', 'Samsung Galaxy S Advance – функциональный смартфон, построенный на платформе Android v2.3, который объединяет множество достоинств и предлагает своему владельцу массу возможностей для работы и развлечений.', 'Samsung Galaxy S Advance – функциональный смартфон, построенный на платформе Android v2.3, который объединяет множество достоинств и предлагает своему владельцу массу возможностей для работы и развлечений. Модель оснащена встроенной памятью объемом 8192 Мб. Телефон несет на борту мощный двухъядерный процессор с тактовой частотой 1000 МГц и оперативную память приличного объема, а это значит, что все приложения и игры будут просто летать. Аппарат может похвастаться 5-мегапиксельной камерой с автофокусом и светодиодной вспышкой, аудио- и видеоплеерами, FM-радио с поддержкой RDS и разъемом 3,5 мм для подключения любых наушников, поэтому скучно с ним точно не будет. Мультисенсорный Super AMOLED-дисплей модели диагональю 4 дюйма и разрешением 800x480 точек порадует невероятно ярким и четким изображением с насыщенными цветами, а также обеспечит удобство управления смартфоном.  В качестве коммуникационных возможностей Samsung Galaxy S Advance предлагает 3G, EDGE, Bluetooth, Wi-Fi и е-mail-клиент, поэтому владелец девайса сможет с удобством обмениваться данными с другими устройствами, заниматься интернет-серфингом и работать с электронной почтой. А 1,3-мегапиксельная фронтальная камера позволяет осуществлять видеозвонки друзьям и коллегам.', 'tel2.jpg', '13990', 'new', 'new, samsung'),
(3, 'Samsung GT-I9001 GalaxyS Plus 8 Гб Black', 'samsung-gt-i9001-galaxy-s', 'Смартфон Samsung GT-I9001 Galaxy S – это отличный Android-девайс, в основе которого лежит мощный процессор Qualcomm MSM8255 с тактовой частотой 1400 МГц. Модель оснащена великолепным 4-дюймовым', 'Смартфон Samsung GT-I9001 Galaxy S – это отличный Android-девайс, в основе которого лежит мощный процессор Qualcomm MSM8255 с тактовой частотой 1400 МГц. Модель оснащена великолепным 4-дюймовым мультисенсорным Super AMOLED-экраном разрешением 800х480 точек.\r\n\r\nСъемка фото и видео. Встроенная 5-мегапиксельная камера позволяет делать достаточно качественные снимки, а также производить запись видео в HD-качестве 720р.\r\n\r\nМир мультимедиа. Для любителей развлечений имеется возможность проигрывания музыки и видео. К мобильному телефону Samsung Galaxy S Plus подойдут любые наушники, ведь он оборудован стандартным разъемом 3,5 мм.\r\n\r\nВсегда на связи. Аппарат радует широким спектром коммуникационных возможностей. Предусмотрено наличие Bluetooth 3.0, GPRS, EDGE, 3G и Wi-Fi. Есть е-mail-клиент. Посредством USB-интерфейса можно с легкостью обмениваться данными с ПК.\r\n\r\nОриентация на местности. Встроенный GPS-приемник и цифровой компас позволят всегда определить свое местоположение и не заблудиться.\r\n\r\nДлительное время автономной работы. Мощный аккумулятор емкостью 1650 мАч обеспечивает 750 часов работы коммуникатора Samsung GT-I9001 Galaxy S в режиме ожидания и 12,8 часа – в режиме разговора.', 'tel3.jpg', '8590', 'hits', 'hits, samsung'),
(4, 'Samsung GT-S5830 GalaxyAce (черный)', 'samsung-gt-s5830-galaxy-ace', 'Samsung GT-S5830 Galaxy Ace — смартфон с одной SIM-картой. Оснащен экраном 3.5 дюйма и разрешением 480x320. Весит 113 г при размерах 112x59x11 миллиметров. Используется процессор с частотой 800 MHz. Основная камера - 5.0МП (2592 x 1944 точек). ', 'Samsung GT-S5830 Galaxy Ace — смартфон с одной SIM-картой. Оснащен экраном 3.5" и разрешением 480x320. Весит 113 г при размерах 112x59x11 миллиметров. Используется процессор с частотой 800 MHz. Основная камера - 5.0МП (2592 x 1944 точек). Фронтальная камера отсутствует. Ресурс памяти: есть поддержка microSD. Дополнительные возможности: FM-радио, GPS-навигатор, сенсор приближения. ', 'tel4.jpg', '11440', 'hits', 'hits, samsung'),
(5, 'Samsung GT-S5230 Star La Fleur (красный)', 'samsung-gt-5230-star-la-fleur', 'Samsung S5230 Star - телефон с сенсорным дисплеем, поддержкой Bluetooth, EDGE, карт памяти microSD (для них предусмотрена ''горячая замена''). Есть также 3 МП фотовидеокамера,', 'Samsung S5230 Star - телефон с сенсорным дисплеем, поддержкой Bluetooth, EDGE, карт памяти microSD (для них предусмотрена "горячая замена"). Есть также 3 МП фотовидеокамера, музыкальный плеер, FM-радио. Особых недостатков пользователи не отмечают, не очень довольны, пожалуй, только выцветающим на солнце дисплеем.\r\n\r\nSamsung S5230 Star - один из первых относительно недорогих сенсорных телефонов, появившихся на рынке. На дизайне, впрочем, его ценовая доступность не отразилась совершенно. Дизайн супер. У меня черного цвета. Строгий, ничего лишнего, но при этом очень приятен взору. Корпус пластиковый, но пластик хорошего качества. Вокруг экрана пластик глянцевый, из-за чего на нем остаются отпечатки (так же как и на экране). Для меня это не является проблемой, т.к. они легко стираются".', 'tel5.jpg', '3240', 'sale', 'sale, samsung'),
(6, 'Nokia XpressMusic 5230 (черный цвет)', 'nokia-xpress-music-5230-black', 'Нокиа 5230 — замечательный смартфон, работающий на платформе S60 5th Edition с процессором ARM 11 434Mhz, оснащенный TFT-дисплеем, отображающим до 16 млн. цветов, с диагональю 3.2" и камерой на 2 Mpx, делающей снимки с разрешением 1600 x 1200 px.', 'Нокиа 5230 — замечательный смартфон, работающий на платформе S60 5th Edition с процессором ARM 11 434Mhz, оснащенный TFT-дисплеем, отображающим до 16 млн. цветов, с диагональю 3.2" и камерой на 2 Mpx, делающей снимки с разрешением 1600 x 1200 px. Оснащен аккумулятором на 1320 mAh, который позволяет аппарату работать до 438 часов в режиме ожидания и до 7 в режиме разговора. Для коммуникации может предложить: Web-браузер, HSDPA, стерео Bluetooth, и, конечно, USB-порт. Для любителей музыки есть аудио выход на 3.5 мм. Также стоит отметить, что он оснащен GPS-приемником, который позволит Вам не заблудиться в любом месте!', 'tel6.jpg', '4290', 'sale', 'sale, nokia'),
(7, 'Explay Q230 QWERTY 3-Sim (черный цвет)', 'explay-q230', 'Мобильный телефон Explay Q230 с 3 активными SIM -картами — сочетание функциональности и стиля. 3 SIM- карты в одном телефоне обеспечивают расширенные возможности связи на отдыхе, работе и в путешествиях. Кроме того Explay Q230 обладает широким функционалом и представляет собой идеальный инструмент', 'Мобильный телефон Explay Q230 с 3 активными SIM -картами — сочетание функциональности и стиля. 3 SIM- карты в одном телефоне обеспечивают расширенные возможности связи на отдыхе, работе и в путешествиях. Кроме того Explay Q230 обладает широким функционалом и представляет собой идеальный инструмент для активного общения в Интернете. TV прием, аудио и видео плееры позволяют наслаждаться фото, видео и музыкой всегда и везде. QWERTY-клавиатура, ссылки на мобильные версии наиболее популярных социальных сетей, встроенный браузер Opera Mini и установленные клиенты ICQ, Skype и Mail Агент облегчат общение в сети.', 'tel7.jpg', '2290', 'sale', 'sale, explay'),
(8, 'HTC Radar C110e (серебристо-белый цвет)', 'htc-radar-c110e', 'Оригинальный внешний вид устройства дополняется отличными техническими характеристиками: сенсорный 3.8-дюймовый Super LCD дисплей, 5-мегапиксельная камера, 1 ГГц процессор Snapdragon MSM 8255 от компании Qualcomm и 512 МБ оперативной памяти. Кроме того,', 'Оригинальный внешний вид устройства дополняется отличными техническими характеристиками: сенсорный 3.8-дюймовый Super LCD дисплей, 5-мегапиксельная камера, 1 ГГц процессор Snapdragon MSM 8255 от компании Qualcomm и 512 МБ оперативной памяти. Кроме того, HTC Radar, оснащенный фронтальной камерой, станет первым смартфоном на Windows Phone, поддерживающим видеоразговоры по Skype.', 'tel8.jpg', '14390', 'hits', 'hits, htc');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `order_content` text CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=20 ;

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `title_en` varchar(100) CHARACTER SET utf8 NOT NULL,
  `text` text CHARACTER SET utf8 NOT NULL,
  `keywords` text CHARACTER SET utf8 NOT NULL,
  `hidden` varchar(10) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `title`, `title_en`, `text`, `keywords`, `hidden`) VALUES
(1, 'Интернет-магазин мобильных телефонов', 'articles', 'статьи', 'интернет-магазин, мобильные телефоны, купить телефон', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `text` text CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `time` varchar(10) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=30 ;

-- --------------------------------------------------------

--
-- Структура таблицы `tech_sections`
--

CREATE TABLE IF NOT EXISTS `tech_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page` varchar(100) CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `keywords` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `tech_sections`
--

INSERT INTO `tech_sections` (`id`, `page`, `title`, `keywords`) VALUES
(1, 'Register', 'Регистрация', 'регистрация на сайте'),
(2, 'password', 'Смена пароля', 'изменение пароля'),
(3, 'avatar', 'Смена аватара', 'смена аватара'),
(4, 'email', 'Сменить email', 'сменить email пользователя'),
(5, 'forgot', 'Восстановление пароля', 'восстановление пароля пользователя'),
(6, 'cart', 'Корзина товаров', 'корзина товаров'),
(7, 'about', 'О магазине', 'о магазине, about'),
(8, 'pay', 'Оплата и доставка', 'pay, оплата и доставка'),
(9, 'review', 'Отзывы', 'отзывы, reviews'),
(10, 'contact_us', 'Контакты', 'contact, контакты');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ip` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `avatar` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'avatar.png',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=14 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `ip`, `status`, `avatar`) VALUES
(1, 'mikk', '10470c3b4b1fed12c3baac014be15fac67c6e815', 'mail_mail@ukr.net', '127.0.0.1', '1', 'ddf82a00bec9769e0bdff738cc004ac0.jpg'),
(12, 'admin', '54da519793f8f2bd7ad6dc181fd0132395b8df93', 'respect_all@ukr.net', '127.0.0.1', '2', 'avatar.png');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
