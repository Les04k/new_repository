-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 17 2025 г., 14:03
-- Версия сервера: 5.7.33
-- Версия PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tur_up`
--

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id_feedback` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otvet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `merop`
--

CREATE TABLE `merop` (
  `id_merop` int(255) NOT NULL,
  `id_grup` int(255) NOT NULL,
  `id_vid` int(255) NOT NULL,
  `name_merop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(255) NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `time_merop` time(6) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_descript` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `adres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `merop`
--

INSERT INTO `merop` (`id_merop`, `id_grup`, `id_vid`, `name_merop`, `price`, `date1`, `date2`, `time_merop`, `image`, `short_descript`, `description`, `adres`) VALUES
(1, 4, 1, 'АЭС в Курчатове и Курская магнитная аномалия', 1000, '2025-04-19', '2025-05-01', '10:00:00.000000', 'АЭС в Курчатове.png', 'Курская атомная станция — одна из самых мощных АЭС в России. Она обеспечивает 96% всей электроэнергии Центрального региона России. На станции проводят экскурсии по записи...', 'Курская атомная станция — одна из самых мощных АЭС в России. Она обеспечивает 96% всей электроэнергии Центрального региона России. На станции проводят экскурсии по записи — нужно заполнить заявку на сайте «Росэнергоатома» минимум за 5 дней до визита и взять с собой паспорт. На станции можно посетить учебно-тренировочный центр, увидеть лаборатории и музейные экспозиции, сделать селфи на фоне АЭС со смотровой площадки. Курская магнитная аномалия — самый крупный на Земле железорудный бассейн глубиной 350 метров и площадью 4 на 6 километров. Она расположена на территории Курской, Орловской и Белгородской областей, но центр освоения рудника находится в Железногорске под Курском. Аномалия местности заключается в том, что компас здесь показывает любое направление, кроме правильного. Во время экскурсии туристы узнают о природе этой аномалии, об истории исследования и освоения КМА и приезжают на смотровую площадку карьера', 'г.Курчатов'),
(2, 5, 1, 'Смоленская АЭС', 2000, '2025-06-02', '2025-06-30', '10:00:00.359000', 'Смоленская АЭС.png', 'АЭС даёт 80% электроэнергии в Смоленской области и 8% в Центральном регионе России. Для экскурсии по территории станции туристам выдают не только спецкостюм, но и индивидуальный накопительный дозиметр, который фиксирует дозу излучения...', 'АЭС даёт 80% электроэнергии в Смоленской области и 8% в Центральном регионе России. Для экскурсии по территории станции туристам выдают не только спецкостюм, но и индивидуальный накопительный дозиметр, который фиксирует дозу излучения. Подавать заявку нужно за 2–3 месяца. Также в Смоленске можно посетить завод бриллиантов «Кристалл». Здесь гости увидят производственный процесс, музейные экспонаты и образцы продукции.', 'г.Смоленск'),
(3, 2, 1, 'Карьер Янтарного комбината', 3000, '2025-07-01', '2025-07-31', '10:00:00.000000', 'Карьер Янтарного комбината.png', 'Янтарный комбинат — достопримечательность Калининградской области и самый большой в мире карьер по добыче солнечного камня. В программу экскурсий входит посещение самого предприятия и музея при комбинате...', 'Янтарный комбинат — достопримечательность Калининградской области и самый большой в мире карьер по добыче солнечного камня. В программу экскурсий входит посещение самого предприятия и музея при комбинате, прогулка по приморскому парку и селфи на смотровой площадке с видом на карьер.', 'Калининградская область'),
(4, 1, 1, 'Тульский молочный комбинат', 1500, '2025-04-01', '2025-05-31', '10:00:00.359000', 'Тульский молочный комбинат.png', 'Также в городе по предварительной записи можно посетить Тульский молочный комбинат, где проводят гастрономическую экскурсию «Сырный день». Туристы могут увидеть все этапы производства сыра, в том числе процесс посолки...', 'Также в городе по предварительной записи можно посетить Тульский молочный комбинат, где проводят гастрономическую экскурсию «Сырный день». Туристы могут увидеть все этапы производства сыра, в том числе процесс посолки, когда в внушительные солильные бассейны опускают порядка 3,2 тонны сыра. Это одна варка, в целом же рассол вмещает 3,8 тонны сыра. Также посетителям показывают, как созревают огромные сырные головы. Премиальные твёрдые и полутвёрдые сыры размещают на деревянных полках из хвойных пород, выращенных на территории горного массива Юра во Франции. Экскурсия включает дегустацию всех пяти сортов сыра.', 'г.Тула'),
(5, 2, 2, 'Магнитогорский металлургический комбинат', 1500, '2025-04-19', '2025-07-31', '10:00:00.000000', 'Магнитогорский металлургический комбинат.png', 'Объект относится к категории опасных, поэтому туристам предоставляют спецодежду, страховку и проводят инструктаж по технике безопасности. На...', 'Объект относится к категории опасных, поэтому туристам предоставляют спецодежду, страховку и проводят инструктаж по технике безопасности. На территории ММК экскурсантов сопровождают гид и технический специалист. Экскурсии проводят по нескольким маршрутам: •	«Укрощение огня» — посещение доменного цеха и прокатного производства. •	«В гости к металлургам» — автобусная экскурсия по объекту. •	«У папы на работе» — автобусная прогулка для детей по территории объекта. •	«Стальная эволюция» — знакомство с оборудованием в музее комбината. •	«Легенды и были стальной реки» — прогулка на катере по Магнитогорскому водохранилищу.', 'г.Магнитогорск'),
(6, 3, 2, 'Выксунский завод', 2000, '2025-04-18', '2025-05-18', '10:00:00.359000', 'Выскунский завод.png', 'Завод Объединённой металлургической компании проводит групповые экскурсии по нескольким направлениям:•	«Рождение труб большого размера». «Удивительные превращения стали»... ', 'Завод Объединённой металлургической компании проводит групповые экскурсии по нескольким направлениям: •	«Рождение труб большого размера». Туристам демонстрируют работу прокатного стана, на котором раскалённые стальные плиты превращаются в лист, и проводят в трубоэлектросварочный цех, где создают трубы. •	«Удивительные превращения стали». Туристы знакомятся с полным циклом стального проката в литейно-прокатном комплексе. •	«Мир горячих колёс». В колёсопрокатном цехе можно увидеть процесс создания цельнокатаных железнодорожных колёс и колёс для высокоскоростных составов.', 'г.Выкса');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id_news` int(11) NOT NULL,
  `name_news` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id_news`, `name_news`, `description`, `image`) VALUES
(3, 'В МАГНИТОГОРСКЕ СОСТОЯЛСЯ ВСЕРОССИЙСКИЙ ФОРУМ ПО ПРОМТУРИЗМУ', 'Мероприятие организовано к пятилетию запуска промышленного туризма в ПАО «ММК» при поддержке правительства Челябинской области, АНО «Центр проектного развития» и АНО «Агентство стратегических инициатив по продвижению новых проектов».', 'Форум Магнитогорск.png'),
(4, 'СТАВРОПОЛЬСКИЙ КРАЙ СДЕЛАЕТ АКЦЕНТ В РАЗВИТИИ ПРОМТУРИЗМА НА ПРЕДПРИЯТИЯХ «ЗЕЛЕНОЙ» ЭНЕРГЕТИКИ', 'Ставропольский край обладает уникальными возможностями с точки зрения привлечения туристов, школьников, студентов и местных жителей на производственные площадки', 'Ставропольский край.png');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id_order` int(75) NOT NULL,
  `id_user` int(75) NOT NULL,
  `id_merop` int(75) NOT NULL,
  `kol` int(75) NOT NULL,
  `price` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id_order`, `id_user`, `id_merop`, `kol`, `price`, `status`) VALUES
(1, 3, 1, 1, 1000, 0),
(2, 3, 3, 2, 3000, 0),
(3, 1, 3, 1, 1500, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `fio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id_user`, `fio`, `email`, `login`, `password`, `avatar`, `role`) VALUES
(1, 'Песоцкий Александр Сергеевич', 'alex@mail.ru', 'alex', '1234', 'img/defolt.png', 'user'),
(2, 'Иванов Иван Иванович', 'ivan@mail.ru', 'inav', '1234', 'img/defolt.png', 'user'),
(3, 'Мальцев Богдан Евгеньевич', 'bogdan@mail.ru', 'bogdan', 'bogdan', 'img/defolt.png', 'user');

-- --------------------------------------------------------

--
-- Структура таблицы `vid_grupp`
--

CREATE TABLE `vid_grupp` (
  `id_grup` int(25) NOT NULL,
  `name_grup` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `vid_grupp`
--

INSERT INTO `vid_grupp` (`id_grup`, `name_grup`) VALUES
(1, 'Туристические группы'),
(2, 'Иностранные группы'),
(3, 'Школьные экскурсии'),
(4, 'Группы студентов'),
(5, 'Индивидуальные туристы');

-- --------------------------------------------------------

--
-- Структура таблицы `vid_merop`
--

CREATE TABLE `vid_merop` (
  `id_vid` int(11) NOT NULL,
  `name_vid` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `vid_merop`
--

INSERT INTO `vid_merop` (`id_vid`, `name_vid`) VALUES
(1, 'Тур'),
(2, 'Экскурсия');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id_feedback`),
  ADD KEY `id_user` (`id_user`);

--
-- Индексы таблицы `merop`
--
ALTER TABLE `merop`
  ADD PRIMARY KEY (`id_merop`),
  ADD KEY `id_grup` (`id_grup`),
  ADD KEY `id_vid` (`id_vid`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_merop` (`id_merop`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Индексы таблицы `vid_grupp`
--
ALTER TABLE `vid_grupp`
  ADD PRIMARY KEY (`id_grup`);

--
-- Индексы таблицы `vid_merop`
--
ALTER TABLE `vid_merop`
  ADD PRIMARY KEY (`id_vid`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id_feedback` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `merop`
--
ALTER TABLE `merop`
  MODIFY `id_merop` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(75) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `vid_grupp`
--
ALTER TABLE `vid_grupp`
  MODIFY `id_grup` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `vid_merop`
--
ALTER TABLE `vid_merop`
  MODIFY `id_vid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Ограничения внешнего ключа таблицы `merop`
--
ALTER TABLE `merop`
  ADD CONSTRAINT `merop_ibfk_1` FOREIGN KEY (`id_grup`) REFERENCES `vid_grupp` (`id_grup`),
  ADD CONSTRAINT `merop_ibfk_2` FOREIGN KEY (`id_vid`) REFERENCES `vid_merop` (`id_vid`);

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`id_merop`) REFERENCES `merop` (`id_merop`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
