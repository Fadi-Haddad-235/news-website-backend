-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2023 at 01:11 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `article_categories`
--

CREATE TABLE `article_categories` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(255) NOT NULL,
  `tag_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article_categories`
--

INSERT INTO `article_categories` (`tag_id`, `tag_name`, `tag_description`) VALUES
(1, 'politics', 'politics'),
(2, 'sports', 'sport'),
(3, 'economics', 'economy'),
(4, 'health', 'health'),
(5, 'weather', 'weather');

-- --------------------------------------------------------

--
-- Table structure for table `news_articles`
--

CREATE TABLE `news_articles` (
  `article_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `date_published` date NOT NULL,
  `content` text NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `tag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news_articles`
--

INSERT INTO `news_articles` (`article_id`, `title`, `author`, `date_published`, `content`, `image_url`, `tag`) VALUES
(1, 'Blast in northern Afghanistan kills at least one', 'Abdul Saboor Sirat', '2023-03-12', 'The explosion happened in Mazar-i-Sharif, the capital of the Balkh province, during an award event for journalists.', 'images/pic-2.png', 1),
(2, 'Three years later, what we know: How did COVID start?', 'Erin Hale', '2023-03-11', 'Scientists lean towards a natural spillover from animals, but China’s opacity means a lab leak can’t be ruled out.', 'images/pic-3.webp', 4),
(3, 'Wagner mercenaries boss reveals recruitment drive due to Bakhmut', 'Yevgeny Prigozhin', '2023-03-10', 'Yevgeny Prigozhin says he has opened recruitment centres in 42 Russian cities to replenish ranks due to losses in Bakhmut.', 'images/pic-4.webp', 1),
(4, 'Indonesia’s Merapi volcano erupts, blankets villages in ash', 'Hendra Nurdiyansyah', '2023-03-09', 'At least eight villages near the volcano have been affected by volcanic ash, Indonesia’s Mount Merapi has erupted, spewing out smoke and ash that blanketed villages near the crater and forcing authorities to halt tourism and mining activities on the slopes of the volcano', 'images/pic-5.webp', 5),
(7, 'Hong Kong court sentences 3 Tiananmen vigil organisers to jail', 'Kin Cheung', '2023-03-07', 'The three organisers of a yearly vigil to mark China’s bloody 1989 Tiananmen Square crackdown were sentenced to four and a half months in jail.', 'images/pic-6.webp', 1),
(8, 'Italy launches rescue for hundreds of refugees on boats', 'Ciro De Luca', '2023-03-07', 'An estimated 1,300 people are in danger off Calabria, where 73 people recently drowned in a shipwreck that sparked scrutiny of Italy’s rescue operations.', 'images/pic-7.webp', 1),
(9, 'Iran and Saudi Arabia agree to restore relations', 'Ali Shamkhani', '2023-03-12', 'The regional rivals are expected to reopen embassies within two months as they re-establish ties and a security agreement after Beijing talks.', 'images/pic-8.webp', 1),
(10, 'Football’s Gary Lineker booted by BBC over refugee policy tweets', 'May James', '2023-03-11', 'Lineker was removed as presenter of BBC’s Match of the Day show after criticising the UK government’s asylum-seeker policy.', 'images/pic-9.webp', 2),
(11, 'Djokovic pulls out of Indian Wells tournament amid US visa row', 'Amr Alfiky', '2023-03-10', 'World’s top male tennis player had asked for special permission to enter given US ban on unvaccinated foreigners', 'images/pic-10.webp', 2),
(12, 'Lethal Liverpool smash Manchester United for seven in record win', 'Michael Regan', '2023-03-08', 'Liverpool beat their archrivals 7-0, their biggest-ever margin of victory in the fixture.', 'images/pic-11.webp', 2),
(13, 'NBA’s Morant suspended for at least two games after gun video', 'Troy Taormina', '2023-03-07', 'Grizzlies’ player Morant was seen displaying a gun at a nightclub on his Instagram live account.', 'images/pic-12.webp', 2),
(14, 'Kylian Mbappe becomes PSG’s record goal-scorer', 'Franck Fife', '2023-03-06', 'French footballer scores his 201st goal for the club, going past Edison Cavani’s record.', 'images/pic-13.webp', 2),
(15, 'Brazil’s Amazon deforestation again hits record high for February', 'Michel Dantas', '2023-03-11', 'Spike underscores challenge new President Luiz Inacio Lula da Silva faces to reverse years of environmental destruction.', 'images/pic-15.webp', 5),
(16, 'In war-torn states hurt by climate, scant hope for new funds', 'George Esiri', '2023-03-11', 'Climate vulnerable nations demand ‘innovative ways’ to receive disaster funds, including initiatives on debt relief and help to build government institutions.', 'images/pic-16.webp', 5),
(17, 'The West will not act on climate change until it feels its pain', '\r\nPatrick Gathara', '2023-03-12', 'Pleas from the Global South will not stir Western government into action. Only Western suffering will.', 'images/pic-16.webp', 5),
(18, 'Historic ‘loss and damage’ fund adopted at COP27 climate summit', 'Nariman el-Mofty', '2023-03-11', 'Countries at the COP27 summit agree to set up a compensation fund for poor nations suffering the impact of climate change.', 'images/pic-17.webp', 5),
(19, 'Hyundai reviewing Russia plant after reports of Kazakhstan sale', 'Kim Hong-Ji', '2023-03-07', 'South Korean automaker says it is considering ‘various options’ for Saint Petersburg factory.', 'images/pic-18.webp', 3),
(20, 'Layoffs revised up in January but US labour market still strong', 'Andrew Kelly', '2023-03-06', 'Even as layoffs rose in January and job cuts were higher than initially thought in 2022, job market remains strong with 1.9 opening per every unemployed worker.', 'images/pic-19.webp', 3),
(21, 'Three years later: Lives reshaped by COVID-19', 'Ahmad Yusni', '2023-03-06', 'Al Jazeera spoke to people from across the world on how the pandemic affected their and others’ lives.', 'images/pic-20.webp', 4),
(22, 'WHO urges countries to reveal intelligence on COVID-19 origins', 'Thomas Peter', '2023-03-08', 'WHO Director-General Tedros Adhanom Ghebreyesus says ‘all hypotheses on the origins of the virus remain on the table’.', 'images/pic-21.webp', 4),
(23, 'Biden to propose 25 percent minimum tax on US billionaires', 'Evan Vucci', '2023-03-05', 'US president’s reported budget plan would also nearly double capital gains tax on investments.', 'images/pic-22.webp', 3),
(24, 'Carbon capture projects tackling climate change', 'amanda cerny', '2023-03-09', 'An innovative effort in the Danish North Sea is repurposing an oil and gas well to store carbon dioxide shipped from Belgium using tankers', 'images/pic-23.webp', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article_categories`
--
ALTER TABLE `article_categories`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `news_articles`
--
ALTER TABLE `news_articles`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `fk_news_tag` (`tag`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article_categories`
--
ALTER TABLE `article_categories`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `news_articles`
--
ALTER TABLE `news_articles`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news_articles`
--
ALTER TABLE `news_articles`
  ADD CONSTRAINT `fk_news_tag` FOREIGN KEY (`tag`) REFERENCES `article_categories` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
