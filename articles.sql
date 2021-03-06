-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Янв 17 2019 г., 11:49
-- Версия сервера: 5.7.24-0ubuntu0.16.04.1
-- Версия PHP: 7.1.26-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `articles`
--

-- --------------------------------------------------------

--
-- Структура таблицы `article`
--

CREATE TABLE `article` (
  `id` int(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `intro` text NOT NULL,
  `dateofbirth` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `article`
--

INSERT INTO `article` (`id`, `title`, `intro`, `dateofbirth`) VALUES
(3, 'Чувство долга', 'Ипотечные ставки не вернутся к уровню 2018-го, уверены участники рынка новостроек. По крайней мере — не в обозримой перспективе. Что же остается тем, кто не накопил всю сумму на покупку жилья? «Лента.ру» опросила застройщиков, риелторов и представителей кредитных организаций и выяснила, какие варианты остаются россиянам.\n\n«На рынке недвижимости отсутствуют предпосылки и фундаментальные причины для прироста спроса уже в течение длительного периода, — делится видением ситуации генеральный директор агентства недвижимости «Бон Тон» Наталия Кузнецова. — Снижение реальных доходов населения за счет инфляции, роста тарифов и налоговой нагрузки сопровождается удорожанием ипотеки. И если появление более доступных программ позволяет аккумулировать дополнительный спрос среди заемщиков, то сейчас наблюдается обратная ситуация. Увеличение ставки на каждые 1-1,5 процента приводит к оттоку покупателей». Вспомним еще и о том, что из-за новых правил работы застройщиков рынку новостроек пророчат рост цен (по разным прогнозам, на 8-20 процентов за год), — вот это вкупе с растущей ставкой способно увеличить ипотечный платеж уже не на 2-3 тысячи рублей, а на 7-10. Есть ли рабочие альтернативы ипотеке?', '2019-01-09\r\n\r\n'),
(4, 'США сообщили дату выхода из ДРСМД', 'Соединенные Штаты приостановят свои обязательства по Договору о ракетах средней и меньшей дальности (ДРСМД) и запустят процесс выхода из соглашения 2 февраля без учета согласия со стороны России. Это произойдет в случае, если Москва не предоставит доказательств соблюдения пунктов договора. Об этом 16 января заявила заместитель секретаря по контролю над вооружениями и международной безопасности при Госдепе США Андреа Томпсон. По ее словам, на выход из соглашения потребуется шесть месяцев. С российской стороны в переговорах участвовал замминистра иностранных дел Сергей Рябков.', '2019-01-09\r\n\r\n'),
(5, 'Любит наш народ', 'В последнее время в России все чаще происходят крайне странные события — дети катаются на фекальных горках, а пенсионеры устраивают давку из-за бесплатных конфет. И это только начало нового года. При чтении подобных новостей может показаться, что россияне живут в уникальной, неповторимой стране. Но это не так. На самом деле у России много общего как с европейскими, так, увы, и с африканскими государствами. Тест «Ленты.ру» покажет, насколько вы оторваны от действительности, хорошо ли знаете свою страну и сможете ли отличить российские новости от заграничных.', '2019-01-09\r\n\r\n'),
(7, 'Облако тегов', 'На языке визуального дизайна, облако тегов (или облако слов) это один из видов «взвешенного списка», обычно оно используется на географических картах для отображения относительного размера городов, с помощью размера шрифтов. Одним из первых примеров взвешенного списка английских ключевых слов является список «подсознательных файлов компьютера» в романе Дугласа Коупленда «Рабы Майкрософта» (1995). Список слов немецкого языка появился в 1992[3].\n\nОсобое визуальное представление и распространение термина «облако тегов» началось в первом десятилетии 21 века. Как особенность сайтов и блогов эры Веб 2.0, использовалось, в основном, для визуализации частотного распределения ключевых слов метаданных, описывающих содержание веб-сайта и помогающих в навигации.\n\nПервые облака тегов на известных веб-сайтах появились на сайте сервиса хранения и распространения цифровых фотографий Flickr. Создателем облаков тегов был соучредитель и проектировщик Flickr Стюарт Баттерфилд в 2004. Эта реализация была основана на книге Джеймса Фланагана Search Referral Zeitgeist[4], в котором описывается визуализация ссылок на веб-сайт. Примерно в то же время распространению облака тегов способствовали сайты Delicious и Technorati.\n\nПеренасыщение облаками тегов и двоякие чувства в отношение их полезности как помощников в навигации по веб-сайтам привели к заметному снижению их использования на сайтах-первопроходцах[5]. (Создатели Flickr впоследствии «извинились» перед веб-сообществом в своей речи на премии Webby Awards, где они просто сказали «простите за облака тегов»[6].)\n\nВторое поколение развития программного обеспечения выявило широкий круг применения облаков тегов как основных методов визуализации текстовых данных. Также были предложены некоторые расширения для этих элементов навигации. Например, параллельные облака тегов[7], sparkClouds[8], и префиксные облака тегов[9].\n\nВ данный момент облако тегов не имеет такой популярности, а в некоторых случаях даже негативно сказывается на поисковом продвижении сайта. Так что если и делать облако, то для некой конкретной цели, чтобы оно несло смысловую нагрузку для пользователей интернет ресурса.[источник не указан 750 дней]\n\nТипы применения тегов\n\nОблако данных показывает население всех стран мира. Создано с помощью языка программирования R с помощью пакета облако слов. Данные получены из списка, содержащего название стран и количество жителей. Обратите внимание, что относительные размеры Китая и Индии были разделены пополам.\nСуществует три основных типа применения облаков тегов в социальном программном обеспечении, различающихся скорее по назначению, чем по внешнему виду:\n\nв первом типе есть тег для частоты каждого элемента,\nво втором типе есть глобальные облака тегов, где частоты агрегированы по всем элементам и пользователям,\nв третьем типе облако содержит категории, размер которых обозначает количество подкатегорий.\nВ первом типе облаков тегов размер представляет собой количество применений тега к элементу[10]. Это полезно в качестве способа отображения метаданных о предмете, за который сколько-то раз «проголосовали», и когда точные данные не предусмотрены. Примером такого применения является Last.fm (для определения жанра музыки группы) и LibraryThing (для определения ключевых слов книги).\n\nВо втором типе размер соответствует числу предметов, к которым был применен тег, что обозначает популярность тега. Примеры данного типа облаков тегов можно найти на сайте сервиса хранения и распространения цифровых фотографий Flickr, RSS-агрегатора Technorati и введя в поисковый запрос Google DeeperWeb.\n\nКатегоризация путём создания кластера тегов\nВ третьем типе теги используются как способ категоризации элементов. Теги представлены в облаке, где бо́льшие теги представляют количество элементов в этой категории.\n\nЕсть несколько подходов для построения кластера тегов вместо облака тегов, например, применяя теги совместной встречаемости в документах[11].\n\nБолее обще, то же самое визуальное представление может быть использовано для отображения не тегов[12] например, облако тегов или облака данных.\n\nТермин облако ключевых слов иногда используется как термин поисковый маркетинг, где он обозначает группы ключеву слов, относящихся к некоторому веб-сайту. В последние годы облака тегов стали популярны из-за своей значимости в поисковом маркетинге веб-страниц, наряду с помощью пользователям в эффективной навигации по сайтам[13]. Облака тегов, как средства навигации, позволяют связать ресурсы веб-сайта более тесно[14],обход таких ресурсов поисковым роботом может улучшить позицию сайта в результатах выдачи поисковой системы[15]. С точки зрения пользовательского интерфейса облака тегов часто используются, чтобы помочь пользователю найти информацию в конкретной системе более быстро, обобщая результаты поиска[16].\n\n\nВизуальное представление\n\nОблако данных показывает изменение цены на акции. Цвет указывает на рост или падение цены, размер шрифта указывает на процентное изменение.\nОблака тегов обычно представлены в виде встроенных HTML элементов. Теги могут быть распределены в алфавитном порядке, в случайном порядке, по весу, и т. д. Иногда изменяют прочие визуальные свойства, такие как цвет, яркость, или ширина, в дополнение к размеру шрифта[17]. Наиболее распространено представление в виде прямоугольника, в котором теги упорядочены по алфавиту и выводятся построчно. Выбор расположения тега в строках соответствует целям пользователя. Иногда предпочтение отдается семантической кластеризации тегов (похожие по смыслу теги будут выводиться рядом)[18][19][20]. Допускается применение эвристик для уменьшения размера облака тегов, независимо от того — выполняется', '2019-01-02');

-- --------------------------------------------------------

--
-- Структура таблицы `article_tags`
--

CREATE TABLE `article_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `articleid` int(11) NOT NULL,
  `tagid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `tag`) VALUES
(1, 'Шаблоны'),
(2, 'PHP'),
(3, 'Patterns'),
(4, 'Adapter'),
(5, 'Mysql'),
(6, 'Linux'),
(7, 'Mask');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `article`
--
ALTER TABLE `article`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `article_tags`
--
ALTER TABLE `article_tags`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `article`
--
ALTER TABLE `article`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `article_tags`
--
ALTER TABLE `article_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
