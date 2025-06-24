-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2025 at 09:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, '<h3>About us<br></h3><p>Lorem Ipsum is simply dummy text of \r\nthe printing and typesetting industry. Lorem Ipsum has been the \r\nindustry\'s standard dummy text ever since the 1500s, when an unknown \r\nprinter took a galley of type and scrambled it to make a type specimen \r\nbook. Lorem Ipsum is simply dummy text of the printing and typesetting \r\nindustry. Lorem Ipsum has been the industry\'s standard dummy text ever \r\nsince the 1500s, when an unknown printer took a galley of type and \r\nscrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply \r\ndummy text of the printing and typesetting industry. Lorem Ipsum has \r\nbeen the industry\'s standard dummy text ever since the 1500s, when an \r\nunknown printer took a galley of type and scrambled it to make a type \r\nspecimen book.</p><p>Lorem Ipsum is simply dummy text of the printing \r\nand typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. </p><p>Lorem \r\nIpsum is simply dummy text of the printing and typesetting industry. \r\nLorem Ipsum has been the industry\'s standard dummy text ever since the \r\n1500s, when an unknown printer took a galley of type and scrambled it to\r\n make a type specimen book. Lorem Ipsum is simply dummy text of the \r\nprinting and typesetting industry. Lorem Ipsum has been the industry\'s \r\nstandard dummy text ever since the 1500s, when an unknown printer took a\r\n galley of type and scrambled it to make a type specimen book. Lorem \r\nIpsum is simply dummy text of the printing and typesetting industry. \r\nLorem Ipsum has been the industry\'s standard dummy text ever since the \r\n1500s, when an unknown printer took a galley of type and scrambled it to\r\n make a type specimen book. Lorem Ipsum is simply dummy text of the \r\nprinting and typesetting industry. Lorem Ipsum has been the industry\'s \r\nstandard dummy text ever since the 1500s, when an unknown printer took a\r\n galley of type and scrambled it to make a type specimen book.</p><p>Lorem\r\n Ipsum is simply dummy text of the printing and typesetting industry. \r\nLorem Ipsum has been the industry\'s standard dummy text ever since the \r\n1500s, when an unknown printer took a galley of type and scrambled it to\r\n make a type specimen book. Lorem Ipsum is simply dummy text of the \r\nprinting and typesetting industry. Lorem Ipsum has been the industry\'s \r\nstandard dummy text ever since the 1500s, when an unknown printer took a\r\n galley of type and scrambled it to make a type specimen book.<br></p><p></p>', '2023-05-01 05:09:53', '2023-05-01 05:10:34');

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'homepage_secion_banner_one', '{\"banner_one\":{\"banner_url\":\"fsadfasdfsd\",\"status\":1,\"banner_image\":\"uploads\\/media_644cf1a03b212.png\"}}', '2023-04-29 01:18:59', '2023-04-29 04:29:52'),
(2, 'homepage_secion_banner_two', '{\"banner_one\":{\"banner_url\":\"test\",\"status\":1,\"banner_image\":\"uploads\\/media_644cf177be491.png\"},\"banner_two\":{\"banner_url\":\"test\",\"status\":1,\"banner_image\":\"uploads\\/media_644ce7818d45e.png\"}}', '2023-04-29 03:19:52', '2023-04-29 05:12:09'),
(3, 'homepage_secion_banner_three', '{\"banner_one\":{\"banner_url\":\"test\",\"status\":1,\"banner_image\":\"uploads\\/media_644ce82555973.png\"},\"banner_two\":{\"banner_url\":\"test\",\"status\":1,\"banner_image\":\"uploads\\/media_644ce7c48fc61.png\"},\"banner_three\":{\"banner_url\":\"test\",\"status\":1,\"banner_image\":\"uploads\\/media_644ce89a6d389.png\"}}', '2023-04-29 03:47:48', '2023-04-29 03:51:22'),
(4, 'homepage_secion_banner_four', '{\"banner_one\":{\"banner_url\":\"test\",\"status\":1,\"banner_image\":\"uploads\\/media_644ce9ed3b6ca.png\"}}', '2023-04-29 03:57:01', '2023-04-29 03:57:01'),
(5, 'productpage_banner_section', '{\"banner_one\":{\"banner_url\":\"#\",\"status\":1,\"banner_image\":\"uploads\\/media_644cf035b903b.png\"}}', '2023-04-29 04:23:49', '2023-04-29 04:23:49'),
(6, 'cartpage_banner_section', '{\"banner_one\":{\"banner_url\":\"#\",\"status\":1,\"banner_image\":\"uploads\\/media_644cf14006136.png\"},\"banner_two\":{\"banner_url\":\"#\",\"status\":1,\"banner_image\":\"uploads\\/media_644cf14006649.png\"}}', '2023-04-29 04:28:16', '2023-04-29 04:28:16'),
(7, 'cart_page_banner', '{\"banner_one\":{\"banner_url\":\"http:\\/\\/127.0.0.1:8000\\/cart-details\",\"status\":1,\"banner_image\":\"uploads\\/media_685ae0a2f1d98.png\"},\"banner_two\":{\"banner_url\":\"http:\\/\\/127.0.0.1:8000\\/cart-details\",\"status\":1,\"banner_image\":\"uploads\\/media_685ae0a2f2989.png\"}}', '2025-06-24 11:30:11', '2025-06-24 11:30:11'),
(8, 'product_page_banner', '{\"banner_one\":{\"banner_url\":\"http:\\/\\/127.0.0.1:8000\\/\",\"status\":1,\"banner_image\":\"uploads\\/media_685af4f26b147.png\"}}', '2025-06-24 11:30:42', '2025-06-24 12:56:50'),
(9, 'homepage_section_banner_three', '{\"banner_one\":{\"banner_url\":\"http:\\/\\/127.0.0.1:8000\\/cart-details\",\"status\":1,\"banner_image\":\"uploads\\/media_685af54bf2a22.png\"},\"banner_two\":{\"banner_url\":\"http:\\/\\/127.0.0.1:8000\\/cart-details\",\"status\":1,\"banner_image\":\"uploads\\/media_685ae13fc5fa9.png\"},\"banner_three\":{\"banner_url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/advertisement\",\"status\":1,\"banner_image\":\"uploads\\/media_685ae13fc683a.png\"}}', '2025-06-24 11:32:47', '2025-06-24 12:58:19'),
(10, 'homepage_section_banner_one', '{\"banner_one\":{\"banner_url\":\"http:\\/\\/127.0.0.1:8000\\/\",\"status\":1,\"banner_image\":\"uploads\\/media_685af4b553b57.png\"}}', '2025-06-24 11:33:07', '2025-06-24 12:55:49'),
(11, 'homepage_section_banner_two', '{\"banner_one\":{\"banner_url\":\"http:\\/\\/127.0.0.1:8000\\/cart-details\",\"status\":1,\"banner_image\":\"uploads\\/media_685af45540119.png\"},\"banner_two\":{\"banner_url\":\"http:\\/\\/127.0.0.1:8000\\/cart-details\",\"status\":1,\"banner_image\":\"uploads\\/media_685ae1735643a.png\"}}', '2025-06-24 11:33:39', '2025-06-24 12:54:13'),
(12, 'homepage_section_banner_four', '{\"banner_one\":{\"banner_url\":\"http:\\/\\/127.0.0.1:8000\\/cart-details\",\"status\":1,\"banner_image\":\"uploads\\/media_685af58d472c6.png\"}}', '2025-06-24 11:34:07', '2025-06-24 12:59:25');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `category_id`, `image`, `title`, `slug`, `description`, `seo_title`, `seo_description`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 5, 'uploads/media_64522c73b811d.jpg', '5 Eco-Friendly Products That Help Save the Planet', '5-eco-friendly-products-that-help-save-the-planet', '<p><span style=\"font-weight: normal;\">Lorem Ipsum</span> is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p><span style=\"font-weight: normal;\">Lorem Ipsum</span> is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p><span style=\"font-weight: normal;\">Lorem Ipsum</span> is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p><span style=\"font-weight: normal;\">Lorem Ipsum</span> is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p><span style=\"font-weight: normal;\">Lorem Ipsum</span> is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p>', 'with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, '2023-05-03 03:42:11', '2023-05-03 03:42:11'),
(3, 1, 6, 'uploads/media_64587ca20b665.jpg', 'Search Engine Optimization For Grow your site', 'search-engine-optimization-for-grow-your-site', '<p>Transform the websites into Google-trusted industry funds, largely \r\nstream new leads for them. Clients include Cadence Design Systems, \r\nLogitech, Bank, and the majority of clients are in technical B2B \r\nindustries such as SaaS, IT, and manufacturing. So, in order to achieve \r\nsuperior outcomes across various marketing projects such as eCommerce \r\nand SEO, collaborate with the most efficient experts.</p>\r\n<p>Efficiency of business operations grows and that the speed of \r\nprofessional business is enriched. We maintain efficient response to \r\nconfirm the positive outcome as a steady organization for a decade.</p>\r\n<h4><strong>Search Analysis</strong></h4>\r\n<p>We thoroughly examine the keywords that used&nbsp; actual buyers. Our \r\nprofessionals can help you choose and apply one of most suitable words \r\nrelated to your target market is searching for. Selecting keywords with \r\nthe right purpose is crucial for SEO marketing since it may help you \r\ndeliver focused traffic to your site.</p>\r\n<p>Watching the list of responsiveness to your website is the \r\ncompetitive marketing achievement in online SEO analysis. The goal is to\r\n obtain as many backlinks as possible from a variety of trusted and \r\nrelevant websites that Google regards as influential. This can help \r\nGoogle perceive your website as more trustworthy and credible.</p>\r\n<h4><strong>SEO services</strong></h4>\r\n<p>The foundation of our B2B SEO services is a complete analysis of your\r\n business. We\'ll interview your team to understand how you differentiate\r\n yourself in your business sector, investigate your consumers and \r\ncompetitors, and do a comprehensive technical assessment of your website\r\n as part of our onboarding process. We\'ll evaluate our approach to yours\r\n in a full report before going on to the next part of the campaign: \r\nbuilding a marketing plan specific to your organization.</p>\r\n<p>Keywords serve as a link between Google\'s search teams and your \r\nwebsite. We determine which keywords your clients are currently \r\nsearching for and build a publishing schedule that matches each phrase \r\nto its optimum site from various search intent. This calendar will take \r\nyou directly to the heart of our Business - to - business SEO services, \r\nwhich is developing and distributing thought leadership content.</p>\r\n<h4><strong>SEO audit services</strong></h4>\r\n<p>Our group start by thoroughly examining your website for any \r\ntechnical concerns that may be blocking your existing data from ranking \r\nbetter. We\'ll look at the sitemap, smartphone usability, page \r\nperformance, as well as your current meta titles and connection status, \r\nand give you a detailed report on what we found. We\'ll also make a list \r\nof any technical issues with your website, including as 404 errors, \r\nerror messages, similar meta page titles, broken pictures, mixed \r\ninformation,</p><p></p>', NULL, NULL, 1, '2023-05-07 22:37:54', '2023-05-07 22:37:54'),
(4, 1, 7, 'uploads/media_64587cc105e2e.jpg', 'Unlocking the Power of Positive Thinking', 'unlocking-the-power-of-positive-thinking', '<p>A digital marketing audit consists of making an analysis and review \r\nof all the actions and strategies that a company has carried out to \r\nimprove its online presenceTo make the information you extract useful, \r\nour recommendation is that you do digital marketing audits from time to \r\ntime</p>\r\n<p>Throughout this process we will seek to answer a series of questions,\r\n such as What is the business model?, How to capture leads and \r\ncustomers?</p>\r\n<p>It’s a common topic. Should an engineering manager keep writing code \r\nand stay hands-on technically once they take on a leadership role? There\r\n are countless articles out there on the subject.</p>\r\n<p>But what is it that makes an engineer manager ask this question in \r\nthe first place? Why is it even a thing? When your main goal is to lead a\r\n team and enable other engineers to be great</p>\r\n<h4>Benefits of doing a digital marketing audit</h4>\r\n<p>1) They will allow to obtain an objective vision on the results of the business</p>\r\n<p>2) They will favor the fact of making better marketing decisions and, in addition</p>\r\n<p>3) They will enable the fact of improving the presence of the brand on the internet and directing it</p>\r\n<p>4) They will improve the company’s results by identifying possible problems and opportunities</p><p></p>', NULL, NULL, 1, '2023-05-07 22:38:25', '2023-05-07 22:38:25'),
(5, 1, 8, 'uploads/media_64587ced73085.jpg', 'What is and how does indirect marketing work?', 'what-is-and-how-does-indirect-marketing-work', '<p>Indirect marketing is formed by a set of techniques to capture \r\ncustomers in a very subtle way and through the transmission of valuable \r\ncontent. By this we mean that, with these strategies,<br>That is, the \r\nmedia helps them develop the relationship between the company and the \r\ntarget audience. Some example of indirect marketing can be a TV or radio\r\n ad, digital marketing or viral marketing.</p>\r\n<p>Thus, the mode of communication of this technique is not based on \r\none-to-one communication, but first a focus is made to make yourself \r\nknown to increase customer loyalty. Thus, when companies use indirect \r\nmarketing, they use media technology.</p>\r\n<p>We are one of the most popular languages user for creating dynamic \r\nwebsites for many years. It means that PHP developers working in PHP., \r\nthe specific firm, have extensive training and expertise in developing \r\nbased on web projects from the ground up. Being A reputable PHP web \r\ndevelopment firm we assists development companies, web engineers, \r\ncreatives, and marketing companies who collaborate on the advancement of\r\n your project. The result of working with such a company is a working, \r\noperational, and appealing client item that is ready for the final \r\nsuccess.</p>\r\n<p>Our team is internationally known as Drupal developers. We have the \r\nskills and experienced experts to assist you in achieving success with \r\nyour digital experiences.&nbsp;</p>\r\n<h4><strong>Advantages of indirect marketing</strong></h4>\r\n<ul><li>1. Increase brand reputation</li><li>2. Stand out from your competitors</li><li>3. Establish a long-term relationship with your customers</li><li>4. Strengthen your relationship with people who are already customers</li><li>5. Attract new customers</li></ul>\r\n<p>If you’re anything like me, you get real energy from writing code and\r\n producing outputs that you can see. You start to really miss that when \r\nyou don’t code so much anymore. Perhaps you’ve experienced that feeling \r\nof getting to the end of the day or the week and thinking, “What have I \r\nactually done? What have I got to show for all that time I’ve spent \r\nworking.</p><p></p>', NULL, NULL, 1, '2023-05-07 22:39:09', '2023-05-07 22:39:09');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Clothes', 'clothes', 1, '2023-05-03 03:22:55', '2023-05-03 03:22:55'),
(6, 'Entertainment', 'entertainment', 1, '2023-05-03 03:23:03', '2023-05-03 03:23:03'),
(7, 'Fashion', 'fashion', 1, '2023-05-03 03:23:14', '2023-05-03 03:23:14'),
(8, 'Lifestyle', 'lifestyle', 1, '2023-05-03 03:23:24', '2023-05-03 03:23:24');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `logo`, `name`, `slug`, `is_featured`, `status`, `created_at`, `updated_at`) VALUES
(4, 'uploads/media_644897a747a6e.jpg', 'Canon', 'canon', 0, 1, '2023-04-24 09:52:19', '2023-05-07 22:52:54'),
(5, 'uploads/media_644897a20c397.png', 'DJI', 'dji', 0, 1, '2023-04-24 09:53:14', '2023-04-25 21:18:05'),
(6, 'uploads/media_6448979d64984.jpg', 'gopro', 'gopro', 0, 1, '2023-04-24 09:53:46', '2023-05-07 22:51:33'),
(7, 'uploads/media_644897980f6ba.png', 'Pantax', 'pantax', 0, 1, '2023-04-24 09:54:51', '2023-04-25 21:18:08'),
(8, 'uploads/media_64489792ba531.jpg', 'MSI', 'msi', 1, 0, '2023-04-25 03:18:02', '2023-05-07 22:52:00'),
(9, 'uploads/media_64587fc52e0e8.jpg', 'ASUS', 'asus', 1, 1, '2023-04-25 03:18:18', '2023-05-07 22:51:17'),
(10, 'uploads/media_64587fa3a492b.jpg', 'LENOVO', 'lenovo', 1, 1, '2023-04-25 03:18:32', '2023-05-07 22:50:57'),
(11, 'uploads/media_64587f97097b1.jpg', 'Acer', 'acer', 1, 1, '2023-04-25 03:23:59', '2023-05-07 22:50:31'),
(12, 'uploads/media_64578dd29ae43.jpg', 'Apolo fashion', 'apolo-fashion', 1, 1, '2023-05-07 05:38:58', '2023-05-07 05:38:58'),
(13, 'uploads/media_64578e3ab91dc.jpg', 'women fashion', 'women-fashion', 1, 1, '2023-05-07 05:39:27', '2023-05-07 05:40:42'),
(14, 'uploads/media_64578e00ce00f.jpg', 'Indiana', 'indiana', 1, 1, '2023-05-07 05:39:44', '2023-05-07 05:39:44'),
(15, 'uploads/media_64586c94c48c3.jpg', 'Womens Fashion', 'womens-fashion', 1, 1, '2023-05-07 21:29:24', '2023-05-07 21:29:24');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('admin@gmail.com|127.0.0.1', 'i:2;', 1750788967),
('admin@gmail.com|127.0.0.1:timer', 'i:1750788967;', 1750788967),
('footer_info', 'O:21:\"App\\Models\\FooterInfo\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:12:\"footer_infos\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:1;s:4:\"logo\";s:31:\"uploads/media_685ad3dc3e0d1.png\";s:5:\"phone\";s:16:\"+880 1305 592904\";s:5:\"email\";s:27:\"mdnurnabirana.cse@gmail.com\";s:7:\"address\";s:11:\"Chattragram\";s:9:\"copyright\";s:56:\"Copyright © 2025 Md. Nurnabi Rana. All Rights Reserved.\";s:10:\"created_at\";s:19:\"2023-04-26 11:22:10\";s:10:\"updated_at\";s:19:\"2025-06-24 16:35:40\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:1;s:4:\"logo\";s:31:\"uploads/media_685ad3dc3e0d1.png\";s:5:\"phone\";s:16:\"+880 1305 592904\";s:5:\"email\";s:27:\"mdnurnabirana.cse@gmail.com\";s:7:\"address\";s:11:\"Chattragram\";s:9:\"copyright\";s:56:\"Copyright © 2025 Md. Nurnabi Rana. All Rights Reserved.\";s:10:\"created_at\";s:19:\"2023-04-26 11:22:10\";s:10:\"updated_at\";s:19:\"2025-06-24 16:35:40\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:4:\"logo\";i:1;s:5:\"phone\";i:2;s:5:\"email\";i:3;s:7:\"address\";i:4;s:9:\"copyright\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 2066145686),
('footer_social', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:4:{i:0;O:23:\"App\\Models\\FooterSocial\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"footer_socials\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:3;s:4:\"icon\";s:14:\"fab fa-twitter\";s:4:\"name\";s:1:\"X\";s:3:\"url\";s:27:\"https://x.com/mdnurnabisiam\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2023-04-27 04:13:12\";s:10:\"updated_at\";s:19:\"2025-06-24 17:04:02\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:3;s:4:\"icon\";s:14:\"fab fa-twitter\";s:4:\"name\";s:1:\"X\";s:3:\"url\";s:27:\"https://x.com/mdnurnabisiam\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2023-04-27 04:13:12\";s:10:\"updated_at\";s:19:\"2025-06-24 17:04:02\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:23:\"App\\Models\\FooterSocial\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"footer_socials\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:4;s:4:\"icon\";s:17:\"fab fa-facebook-f\";s:4:\"name\";s:8:\"Facebook\";s:3:\"url\";s:44:\"https://www.facebook.com/Md.NuRnabi.Siam.SR/\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2023-04-27 04:21:42\";s:10:\"updated_at\";s:19:\"2025-06-24 17:03:30\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:4;s:4:\"icon\";s:17:\"fab fa-facebook-f\";s:4:\"name\";s:8:\"Facebook\";s:3:\"url\";s:44:\"https://www.facebook.com/Md.NuRnabi.Siam.SR/\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2023-04-27 04:21:42\";s:10:\"updated_at\";s:19:\"2025-06-24 17:03:30\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:23:\"App\\Models\\FooterSocial\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"footer_socials\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:5;s:4:\"icon\";s:18:\"fab fa-linkedin-in\";s:4:\"name\";s:8:\"linkedin\";s:3:\"url\";s:54:\"https://www.linkedin.com/in/md-nurnabi-rana-4a2413187/\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2023-05-08 05:23:54\";s:10:\"updated_at\";s:19:\"2025-06-24 17:02:06\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:5;s:4:\"icon\";s:18:\"fab fa-linkedin-in\";s:4:\"name\";s:8:\"linkedin\";s:3:\"url\";s:54:\"https://www.linkedin.com/in/md-nurnabi-rana-4a2413187/\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2023-05-08 05:23:54\";s:10:\"updated_at\";s:19:\"2025-06-24 17:02:06\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:3;O:23:\"App\\Models\\FooterSocial\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:14:\"footer_socials\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:6;s:4:\"icon\";s:16:\"fab fa-instagram\";s:4:\"name\";s:9:\"instagram\";s:3:\"url\";s:54:\"https://www.linkedin.com/in/md-nurnabi-rana-4a2413187/\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2023-05-08 05:24:19\";s:10:\"updated_at\";s:19:\"2025-06-24 17:01:56\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:6;s:4:\"icon\";s:16:\"fab fa-instagram\";s:4:\"name\";s:9:\"instagram\";s:3:\"url\";s:54:\"https://www.linkedin.com/in/md-nurnabi-rana-4a2413187/\";s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2023-05-08 05:24:19\";s:10:\"updated_at\";s:19:\"2025-06-24 17:01:56\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 2066145686),
('footer_title', 'O:22:\"App\\Models\\FooterTitle\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:13:\"footer_titles\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:1;s:21:\"footer_grid_two_title\";s:7:\"Company\";s:23:\"footer_grid_three_title\";s:16:\"More Information\";s:10:\"created_at\";s:19:\"2025-02-10 16:33:04\";s:10:\"updated_at\";s:19:\"2025-02-10 18:18:55\";}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:1;s:21:\"footer_grid_two_title\";s:7:\"Company\";s:23:\"footer_grid_three_title\";s:16:\"More Information\";s:10:\"created_at\";s:19:\"2025-02-10 16:33:04\";s:10:\"updated_at\";s:19:\"2025-02-10 18:18:55\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:2:{i:0;s:21:\"footer_grid_two_title\";i:1;s:23:\"footer_grid_three_title\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 2066140450),
('sliders', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:3:{i:0;O:17:\"App\\Models\\Slider\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:7:\"sliders\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:6;s:6:\"banner\";s:31:\"uploads/media_6413063a005c8.jpg\";s:4:\"type\";s:12:\"new arrivals\";s:5:\"title\";s:13:\"men\'s fashion\";s:14:\"starting_price\";s:2:\"99\";s:7:\"btn_url\";s:22:\"http://127.0.0.1:8000/\";s:6:\"serial\";i:1;s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2023-03-16 12:06:18\";s:10:\"updated_at\";s:19:\"2025-06-24 17:35:00\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:6;s:6:\"banner\";s:31:\"uploads/media_6413063a005c8.jpg\";s:4:\"type\";s:12:\"new arrivals\";s:5:\"title\";s:13:\"men\'s fashion\";s:14:\"starting_price\";s:2:\"99\";s:7:\"btn_url\";s:22:\"http://127.0.0.1:8000/\";s:6:\"serial\";i:1;s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2023-03-16 12:06:18\";s:10:\"updated_at\";s:19:\"2025-06-24 17:35:00\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:17:\"App\\Models\\Slider\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:7:\"sliders\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:7;s:6:\"banner\";s:31:\"uploads/media_6413066df3a6a.jpg\";s:4:\"type\";s:12:\"new arrivals\";s:5:\"title\";s:13:\"kid\'s fashion\";s:14:\"starting_price\";s:2:\"69\";s:7:\"btn_url\";s:22:\"http://127.0.0.1:8000/\";s:6:\"serial\";i:2;s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2023-03-16 12:07:09\";s:10:\"updated_at\";s:19:\"2025-06-24 17:35:14\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:7;s:6:\"banner\";s:31:\"uploads/media_6413066df3a6a.jpg\";s:4:\"type\";s:12:\"new arrivals\";s:5:\"title\";s:13:\"kid\'s fashion\";s:14:\"starting_price\";s:2:\"69\";s:7:\"btn_url\";s:22:\"http://127.0.0.1:8000/\";s:6:\"serial\";i:2;s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2023-03-16 12:07:09\";s:10:\"updated_at\";s:19:\"2025-06-24 17:35:14\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:17:\"App\\Models\\Slider\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:7:\"sliders\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:8;s:6:\"banner\";s:31:\"uploads/media_6413069181b0f.jpg\";s:4:\"type\";s:9:\"Hot Deals\";s:5:\"title\";s:17:\"winter collection\";s:14:\"starting_price\";s:2:\"40\";s:7:\"btn_url\";s:22:\"http://127.0.0.1:8000/\";s:6:\"serial\";i:3;s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2023-03-16 12:07:45\";s:10:\"updated_at\";s:19:\"2025-06-24 17:35:25\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:8;s:6:\"banner\";s:31:\"uploads/media_6413069181b0f.jpg\";s:4:\"type\";s:9:\"Hot Deals\";s:5:\"title\";s:17:\"winter collection\";s:14:\"starting_price\";s:2:\"40\";s:7:\"btn_url\";s:22:\"http://127.0.0.1:8000/\";s:6:\"serial\";i:3;s:6:\"status\";i:1;s:10:\"created_at\";s:19:\"2023-03-16 12:07:45\";s:10:\"updated_at\";s:19:\"2025-06-24 17:35:25\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 2066147286);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Electronics', 'electronics', 'fas fa-mobile-alt', 1, '2023-04-24 09:43:07', '2023-04-24 09:43:07'),
(11, 'Mens Fashion', 'mens-fashion', 'fas fa-tshirt', 1, '2023-05-07 05:31:57', '2023-05-07 05:31:57'),
(12, 'Womens Fashion', 'womens-fashion', 'fas fa-star', 1, '2023-05-07 21:30:18', '2023-05-07 21:30:18'),
(13, 'Shoes', 'shoes', 'fas fa-shoe-prints', 1, '2023-05-07 21:32:22', '2023-05-07 21:32:22'),
(14, 'Health and Beauty', 'health-and-beauty', 'fas fa-hands-helping', 1, '2023-05-07 22:26:57', '2023-05-07 22:26:57'),
(15, 'Groceries', 'groceries', 'fas fa-layer-group', 1, '2023-05-07 22:27:21', '2023-05-07 22:27:21'),
(16, 'Home and Life', 'home-and-life', 'fas fa-home', 1, '2023-05-07 22:27:49', '2023-05-07 22:27:49'),
(17, 'Sports and Outdoors', 'sports-and-outdoors', 'fab fa-hubspot', 1, '2023-05-07 22:28:39', '2023-05-07 22:28:39'),
(18, 'Automotive', 'automotive', 'fas fa-car-alt', 1, '2023-05-07 22:28:55', '2023-05-07 22:28:55'),
(19, 'Babies and Toys', 'babies-and-toys', 'fas fa-atom', 1, '2023-05-07 22:29:22', '2023-05-08 04:45:26');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `sender_id`, `receiver_id`, `message`, `seen`, `created_at`, `updated_at`) VALUES
(133, 3, 1, 'Hi seller', 1, '2023-12-04 22:52:43', '2023-12-04 22:54:44'),
(134, 1, 3, 'hi', 0, '2023-12-04 22:55:07', '2023-12-04 22:55:07'),
(135, 3, 1, 'how are you', 0, '2023-12-04 22:55:50', '2023-12-04 22:55:50'),
(136, 1, 3, 'great', 0, '2023-12-04 22:56:03', '2023-12-04 22:56:03'),
(137, 3, 2, 'hello', 1, '2023-12-04 22:58:00', '2023-12-04 22:58:31'),
(138, 2, 3, 'hello', 0, '2023-12-04 22:58:35', '2023-12-04 22:58:35');

-- --------------------------------------------------------

--
-- Table structure for table `child_categories`
--

CREATE TABLE `child_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `child_categories`
--

INSERT INTO `child_categories` (`id`, `category_id`, `sub_category_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(11, 10, 13, 'Canon', 'canon', 1, '2023-04-24 09:44:29', '2023-04-24 09:44:29'),
(12, 10, 13, 'DJI', 'dji', 1, '2023-04-24 09:44:44', '2023-04-24 09:44:44'),
(13, 10, 13, 'GoPro', 'gopro', 1, '2023-04-24 09:45:05', '2023-04-24 09:45:05'),
(14, 10, 13, 'Pentax', 'pentax', 1, '2023-04-24 09:45:48', '2023-04-24 09:45:48'),
(15, 10, 14, 'Acer', 'acer', 1, '2023-04-24 09:46:16', '2023-04-24 09:46:16'),
(16, 10, 14, 'ASUS', 'asus', 1, '2023-04-24 09:46:31', '2023-04-24 09:46:31'),
(17, 10, 14, 'Lenovo', 'lenovo', 1, '2023-04-24 09:46:55', '2023-04-24 09:46:55'),
(18, 10, 14, 'MSI', 'msi', 1, '2023-04-24 09:47:15', '2023-04-24 09:47:15'),
(19, 10, 15, 'Google Pixel', 'google-pixel', 1, '2023-04-24 09:49:06', '2023-04-24 09:49:06'),
(20, 10, 15, 'One Plus', 'one-plus', 1, '2023-04-24 09:49:29', '2023-04-24 09:49:29'),
(21, 10, 15, 'SAMSUNG', 'samsung', 1, '2023-04-24 09:49:46', '2023-04-24 09:49:46'),
(22, 10, 15, 'Sony Xperia', 'sony-xperia', 1, '2023-04-24 09:50:05', '2023-05-07 04:39:20');

-- --------------------------------------------------------

--
-- Table structure for table `cod_settings`
--

CREATE TABLE `cod_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cod_settings`
--

INSERT INTO `cod_settings` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-05-06 00:32:51', '2023-05-06 00:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `max_use` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `discount_type` varchar(255) NOT NULL,
  `discount` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `total_used` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `quantity`, `max_use`, `start_date`, `end_date`, `discount_type`, `discount`, `status`, `total_used`, `created_at`, `updated_at`) VALUES
(2, '50% discount', 'OFFER30', 1000, 1, '2025-01-01', '2035-01-01', 'percent', 50, 1, 0, '2023-04-04 04:33:04', '2025-06-24 12:02:41'),
(3, 'Flat 100 discount', 'Flat100', 1000, 2, '2025-01-01', '2035-01-01', 'amount', 100, 1, 0, '2023-04-10 04:57:00', '2025-06-24 12:02:26');

-- --------------------------------------------------------

--
-- Table structure for table `email_configurations`
--

CREATE TABLE `email_configurations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `port` varchar(255) NOT NULL,
  `encryption` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_configurations`
--

INSERT INTO `email_configurations` (`id`, `email`, `host`, `username`, `password`, `port`, `encryption`, `created_at`, `updated_at`) VALUES
(1, 'izybuy@gmail.com', 'sandbox.smtp.mailtrap.io', 'e41988d9c17580', '3a3b98357fcda3', '2525', 'tls', '2023-04-27 03:53:19', '2025-06-24 11:19:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sales`
--

CREATE TABLE `flash_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sales`
--

INSERT INTO `flash_sales` (`id`, `end_date`, `created_at`, `updated_at`) VALUES
(1, '2035-01-01', '2025-06-24 12:39:44', '2025-06-24 12:39:44');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_items`
--

CREATE TABLE `flash_sale_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `flash_sale_id` int(11) DEFAULT NULL,
  `show_at_home` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale_items`
--

INSERT INTO `flash_sale_items` (`id`, `product_id`, `flash_sale_id`, `show_at_home`, `status`, `created_at`, `updated_at`) VALUES
(6, 23, 2, 1, 1, '2023-04-25 21:19:41', '2023-04-25 21:19:41'),
(7, 12, 2, 1, 1, '2023-04-25 21:20:00', '2023-04-25 21:20:00'),
(8, 13, 2, 1, 1, '2023-04-25 21:20:13', '2023-04-25 21:20:13'),
(9, 20, 2, 1, 1, '2023-04-25 21:20:21', '2023-04-25 21:20:21'),
(10, 15, 2, 1, 1, '2023-04-25 21:20:46', '2023-04-25 21:20:46'),
(11, 9, 2, 1, 1, '2025-06-24 12:01:44', '2025-06-24 12:01:44');

-- --------------------------------------------------------

--
-- Table structure for table `footer_grid_threes`
--

CREATE TABLE `footer_grid_threes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_grid_threes`
--

INSERT INTO `footer_grid_threes` (`id`, `name`, `url`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Contact', 'http://127.0.0.1:8000/contact', 1, '2023-04-27 01:07:03', '2025-06-24 13:05:08'),
(3, 'Team Member', 'https://www.linkedin.com/', 1, '2023-05-07 23:40:39', '2023-05-07 23:40:39'),
(4, 'Order History', 'https://www.linkedin.com/', 1, '2023-05-07 23:40:52', '2023-05-07 23:40:52'),
(5, 'Affilate', 'https://www.linkedin.com/', 1, '2023-05-07 23:41:05', '2023-05-07 23:41:05'),
(6, 'Team Member', 'https://www.linkedin.com/', 1, '2023-05-07 23:41:33', '2023-05-07 23:41:33');

-- --------------------------------------------------------

--
-- Table structure for table `footer_grid_twos`
--

CREATE TABLE `footer_grid_twos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_grid_twos`
--

INSERT INTO `footer_grid_twos` (`id`, `name`, `url`, `status`, `created_at`, `updated_at`) VALUES
(2, 'About', 'https://www.skillshare.com/en/classes/Inspiration-To-Reality-Make-A-Vision-Board-For-Your-Goals/783727951', 1, '2023-04-26 23:19:52', '2023-04-26 23:22:26'),
(3, 'Terms andconditions', 'http://ecommerce.test/terms-and-conditions', 1, '2023-05-07 23:35:21', '2023-05-07 23:35:21'),
(4, 'contact', 'http://127.0.0.1:8000/contact', 1, '2023-05-07 23:36:23', '2025-06-24 13:05:50'),
(5, 'Flash Sale', 'http://ecommerce.test/flash-sale', 1, '2023-05-07 23:37:54', '2023-05-07 23:37:54'),
(6, 'Career', 'https://www.linkedin.com/', 1, '2023-05-07 23:40:18', '2025-06-24 13:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `footer_infos`
--

CREATE TABLE `footer_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_infos`
--

INSERT INTO `footer_infos` (`id`, `logo`, `phone`, `email`, `address`, `copyright`, `created_at`, `updated_at`) VALUES
(1, 'uploads/media_685ad3dc3e0d1.png', '+880 1305 592904', 'mdnurnabirana.cse@gmail.com', 'Chattragram', 'Copyright © 2025 Md. Nurnabi Rana. All Rights Reserved.', '2023-04-26 05:22:10', '2025-06-24 10:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `footer_socials`
--

CREATE TABLE `footer_socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_socials`
--

INSERT INTO `footer_socials` (`id`, `icon`, `name`, `url`, `status`, `created_at`, `updated_at`) VALUES
(3, 'fab fa-twitter', 'X', 'https://x.com/mdnurnabisiam', 1, '2023-04-26 22:13:12', '2025-06-24 11:04:02'),
(4, 'fab fa-facebook-f', 'Facebook', 'https://www.facebook.com/Md.NuRnabi.Siam.SR/', 1, '2023-04-26 22:21:42', '2025-06-24 11:03:30'),
(5, 'fab fa-linkedin-in', 'linkedin', 'https://www.linkedin.com/in/md-nurnabi-rana-4a2413187/', 1, '2023-05-07 23:23:54', '2025-06-24 11:02:06'),
(6, 'fab fa-instagram', 'instagram', 'https://www.linkedin.com/in/md-nurnabi-rana-4a2413187/', 1, '2023-05-07 23:24:19', '2025-06-24 11:01:56');

-- --------------------------------------------------------

--
-- Table structure for table `footer_titles`
--

CREATE TABLE `footer_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `footer_grid_two_title` varchar(255) DEFAULT NULL,
  `footer_grid_three_title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_titles`
--

INSERT INTO `footer_titles` (`id`, `footer_grid_two_title`, `footer_grid_three_title`, `created_at`, `updated_at`) VALUES
(1, 'More Links', 'Help Links', '2023-04-27 00:15:52', '2023-04-27 01:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `layout` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `contact_address` varchar(255) DEFAULT NULL,
  `map` text DEFAULT NULL,
  `currency_name` varchar(255) NOT NULL,
  `currency_icon` varchar(255) NOT NULL,
  `time_zone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_name`, `layout`, `contact_email`, `contact_phone`, `contact_address`, `map`, `currency_name`, `currency_icon`, `time_zone`, `created_at`, `updated_at`) VALUES
(1, 'IzyBuy', 'LTR', 'mdnurnabirana.cse@gmail.com', '+8801305592904', 'Bangladesh', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3650.1435090089785!2d90.42196781465853!3d23.81349539228068!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c62fb95f16c1%3A0xb333248370356dee!2sJamuna%20Future%20Park!5e0!3m2!1sen!2sbd!4v1639724859199!5m2!1sen!2sbd', 'USD', '$', 'Asia/Dhaka', '2023-04-04 00:19:00', '2025-06-24 11:17:48');

-- --------------------------------------------------------

--
-- Table structure for table `home_page_settings`
--

CREATE TABLE `home_page_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_page_settings`
--

INSERT INTO `home_page_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'popular_category_section', '[{\"category\":\"10\",\"sub_category\":\"13\",\"child_category\":null},{\"category\":\"11\",\"sub_category\":null,\"child_category\":null},{\"category\":\"12\",\"sub_category\":null,\"child_category\":null},{\"category\":\"10\",\"sub_category\":null,\"child_category\":null}]', '2023-04-17 05:40:26', '2023-05-07 22:15:46'),
(3, 'product_slider_section_one', '{\"category\":\"11\",\"sub_category\":null,\"child_category\":null}', '2023-04-18 03:33:40', '2023-05-08 05:05:36'),
(4, 'product_slider_section_two', '{\"category\":\"12\",\"sub_category\":null,\"child_category\":null}', '2023-04-18 05:22:15', '2023-05-07 21:53:05'),
(5, 'product_slider_section_three', '[{\"category\":\"10\",\"sub_category\":\"14\",\"child_category\":null},{\"category\":\"10\",\"sub_category\":\"13\",\"child_category\":null}]', '2023-04-18 22:06:29', '2023-04-24 10:06:15');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logo_settings`
--

CREATE TABLE `logo_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text NOT NULL,
  `favicon` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logo_settings`
--

INSERT INTO `logo_settings` (`id`, `logo`, `favicon`, `created_at`, `updated_at`) VALUES
(1, 'uploads/media_645627dd32a77.png', 'uploads/media_645627dd34272.png', '2023-05-06 04:11:41', '2023-05-06 04:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_15_042304_create_sliders_table', 2),
(6, '2023_03_17_041346_create_categories_table', 3),
(7, '2023_03_18_040045_create_sub_categories_table', 4),
(8, '2023_03_18_093303_create_child_categories_table', 5),
(9, '2023_03_20_073728_create_brands_table', 6),
(12, '2023_03_21_042848_create_vendors_table', 7),
(15, '2023_03_21_093706_create_products_table', 8),
(17, '2023_03_23_052909_create_product_image_galleries_table', 9),
(18, '2023_03_23_111346_create_product_variants_table', 10),
(19, '2023_03_25_061804_create_product_variant_items_table', 11),
(20, '2023_03_28_060014_add_shop_name_to_vendors_table', 12),
(23, '2023_04_02_045506_create_flash_sales_table', 13),
(24, '2023_04_02_045530_create_flash_sale_items_table', 13),
(25, '2023_04_04_045608_create_general_settings_table', 14),
(27, '2023_04_04_094057_create_coupons_table', 15),
(30, '2023_04_05_042237_create_shipping_rules_table', 16),
(32, '2023_04_05_075356_create_user_addresses_table', 17),
(33, '2023_04_12_070712_create_paypal_settings_table', 18),
(34, '2023_04_13_055255_create_orders_table', 19),
(35, '2023_04_13_061135_create_order_products_table', 19),
(36, '2023_04_13_071626_create_orders_table', 20),
(37, '2023_04_13_073423_create_order_products_table', 20),
(38, '2023_04_13_073819_create_transactions_table', 20),
(39, '2023_04_13_092825_create_stripe_settings_table', 21),
(40, '2023_04_15_035210_create_razorpay_settings_table', 22),
(41, '2023_04_17_091708_create_home_page_settings_table', 23),
(42, '2023_04_26_054246_create_wishlists_table', 24),
(45, '2023_04_26_103843_create_footer_infos_table', 25),
(46, '2023_04_27_032049_create_footer_socials_table', 26),
(47, '2023_04_27_045654_create_footer_grid_twos_table', 27),
(48, '2023_04_27_060549_create_footer_titles_table', 28),
(49, '2023_04_27_065446_create_footer_grid_threes_table', 29),
(50, '2023_04_27_093629_create_email_configurations_table', 30),
(51, '2023_04_27_104025_create_newsletter_subscribers_table', 31),
(52, '2023_04_29_060826_create_adverisements_table', 32),
(53, '2023_04_30_041753_create_product_reviews_table', 33),
(54, '2023_04_30_042756_create_product_review_galleries_table', 33),
(55, '2023_05_01_101558_create_vendor_conditions_table', 34),
(56, '2023_05_01_110235_create_abouts_table', 35),
(57, '2023_05_01_113433_create_terms_and_conditions_table', 36),
(58, '2023_05_03_035158_create_blog_categories_table', 37),
(62, '2023_05_03_053816_create_blogs_table', 38),
(63, '2023_05_03_111615_create_blog_comments_table', 39),
(64, '2023_05_06_063011_create_cod_settings_table', 40),
(65, '2023_05_06_094648_create_logo_settings_table', 41),
(66, '2023_09_24_050156_create_withdraw_methods_table', 42),
(67, '2023_09_24_102346_create_withdraw_requests_table', 43),
(68, '2023_11_28_154734_create_pusher_settings_table', 44),
(69, '2023_11_29_033947_create_chats_table', 45);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscribers`
--

CREATE TABLE `newsletter_subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `verified_token` varchar(255) NOT NULL,
  `is_verified` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletter_subscribers`
--

INSERT INTO `newsletter_subscribers` (`id`, `email`, `verified_token`, `is_verified`, `created_at`, `updated_at`) VALUES
(6, 'test@gmail.com', 'verified', '1', '2023-04-28 21:54:22', '2023-04-28 21:54:41'),
(7, 'testemail@gmail.com', 'O8tpEwFZiMKuruBBbUfqfmA2Q', '0', '2023-04-28 22:00:33', '2023-04-28 22:00:33'),
(10, 'demo@gmail.com', '92TwK2lgRQIqGNAJiLWMVLsCE', '0', '2023-04-28 22:05:52', '2023-04-28 22:05:52'),
(11, 'demo1@gmail.com', 'verified', '1', '2023-04-28 22:10:11', '2023-04-28 22:14:12'),
(12, 'test123@gmail.com', 'W75JjDI4XpEK8bnqoBmRx0UW2', '0', '2023-05-08 04:19:03', '2023-05-08 04:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sub_total` double NOT NULL,
  `amount` double NOT NULL,
  `currency_name` varchar(255) NOT NULL,
  `currency_icon` varchar(255) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `order_address` text NOT NULL,
  `shpping_method` text NOT NULL,
  `coupon` text NOT NULL,
  `order_status` varchar(50) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `user_id`, `sub_total`, `amount`, `currency_name`, `currency_icon`, `product_qty`, `payment_method`, `payment_status`, `order_address`, `shpping_method`, `coupon`, `order_status`, `created_at`, `updated_at`) VALUES
(7, '891778', 3, 3000, 3000, 'USD', '$', 1, 'paypal', 1, '{\"id\":3,\"user_id\":3,\"name\":\"Jhon Deo\",\"email\":\"test@gmail.com\",\"phone\":\"+8801960000000\",\"country\":\"United States\",\"state\":\"test\",\"city\":\"California\",\"zip\":\"423432\",\"address\":\"1731 Arbor Court Rawlins, WY 82301\",\"created_at\":\"2023-04-11T05:28:49.000000Z\",\"updated_at\":\"2023-04-11T05:28:49.000000Z\"}', '{\"id\":3,\"name\":\"Free Shipping\",\"type\":\"min_cost\",\"cost\":0}', 'null', 'delivered', '2023-04-29 23:00:06', '2023-05-02 05:41:14'),
(8, '818716', 3, 250, 200, 'USD', '$', 1, 'stripe', 1, '{\"id\":3,\"user_id\":3,\"name\":\"Jhon Deo\",\"email\":\"test@gmail.com\",\"phone\":\"+8801960000000\",\"country\":\"United States\",\"state\":\"test\",\"city\":\"California\",\"zip\":\"423432\",\"address\":\"1731 Arbor Court Rawlins, WY 82301\",\"created_at\":\"2023-04-11T05:28:49.000000Z\",\"updated_at\":\"2023-04-11T05:28:49.000000Z\"}', '{\"id\":1,\"name\":\"Express\\u00a0Delivery\",\"type\":\"flat_cost\",\"cost\":50}', '{\"coupon_name\":\"Flat 100 discount\",\"coupon_code\":\"Flat100\",\"discount_type\":\"amount\",\"discount\":100}', 'delivered', '2023-05-04 05:20:12', '2023-05-04 05:25:43'),
(9, '909112', 3, 3000, 3000, 'USD', '$', 1, 'COD', 1, '{\"id\":3,\"user_id\":3,\"name\":\"Jhon Deo\",\"email\":\"test@gmail.com\",\"phone\":\"+8801960000000\",\"country\":\"United States\",\"state\":\"test\",\"city\":\"California\",\"zip\":\"423432\",\"address\":\"1731 Arbor Court Rawlins, WY 82301\",\"created_at\":\"2023-04-11T05:28:49.000000Z\",\"updated_at\":\"2023-04-11T05:28:49.000000Z\"}', '{\"id\":3,\"name\":\"Free Shipping\",\"type\":\"min_cost\",\"cost\":0}', 'null', 'delivered', '2023-05-06 00:57:16', '2023-05-08 05:00:24'),
(11, '978743', 3, 560, 510, 'USD', '$', 1, 'paypal', 1, '{\"id\":2,\"user_id\":3,\"name\":\"Erasmus Hutchinson\",\"email\":\"user@gmail.com\",\"phone\":\"+1 (448) 117-4101\",\"country\":\"United States\",\"state\":\"California\",\"city\":\"California\",\"zip\":\"64842\",\"address\":\"Ipsum ad in accusamu\",\"created_at\":\"2023-04-05T10:45:24.000000Z\",\"updated_at\":\"2023-04-05T10:45:24.000000Z\"}', '{\"id\":1,\"name\":\"Express\\u00a0Delivery\",\"type\":\"flat_cost\",\"cost\":50}', '{\"coupon_name\":\"Flat 100 discount\",\"coupon_code\":\"Flat100\",\"discount_type\":\"amount\",\"discount\":100}', 'pending', '2023-05-08 04:33:54', '2023-05-08 04:33:54'),
(12, '66742', 3, 50, 100, 'USD', '$', 1, 'paypal', 1, '{\"id\":3,\"user_id\":3,\"name\":\"Jhon Deo\",\"email\":\"test@gmail.com\",\"phone\":\"+8801960000000\",\"country\":\"United States\",\"state\":\"test\",\"city\":\"California\",\"zip\":\"423432\",\"address\":\"1731 Arbor Court Rawlins, WY 82301\",\"created_at\":\"2023-04-11T05:28:49.000000Z\",\"updated_at\":\"2023-04-11T05:28:49.000000Z\"}', '{\"id\":1,\"name\":\"Express\\u00a0Delivery\",\"type\":\"flat_cost\",\"cost\":50}', 'null', 'pending', '2023-09-26 23:29:11', '2023-09-26 23:29:11'),
(13, '876915', 12, 500, 550, 'USD', '$', 1, 'COD', 0, '{\"id\":7,\"user_id\":12,\"name\":\"Md. Nurnabi Rana\",\"email\":\"mdnurnabirana.cse@gmail.com\",\"phone\":\"01305592904\",\"country\":\"Bangladesh\",\"state\":\"Chattagram\",\"city\":\"Chattagram\",\"zip\":\"4313\",\"address\":\"Banshbaria, Sitakunda,Chattagram\",\"created_at\":\"2025-01-25T18:44:38.000000Z\",\"updated_at\":\"2025-01-25T18:44:38.000000Z\"}', '{\"id\":1,\"name\":\"Express\\u00a0Delivery\",\"type\":\"flat_cost\",\"cost\":50}', 'null', 'pending', '2025-01-25 12:46:27', '2025-01-25 12:46:27');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `variants` text NOT NULL,
  `variant_total` int(11) DEFAULT NULL,
  `unit_price` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `vendor_id`, `product_name`, `variants`, `variant_total`, `unit_price`, `qty`, `created_at`, `updated_at`) VALUES
(12, 7, 23, 1, 'ASUS TUF Gaming F15 (2022) Gaming Laptop, 15.6” FHD 144Hz Display, GeForce RTX', '[]', 0, '3000', 1, '2023-04-29 23:00:06', '2023-04-29 23:00:06'),
(13, 8, 24, 2, 'Wrangler Men\'s Iconic Denim Regular Fit Snap Shirt', '[]', 0, '250', 1, '2023-05-04 05:20:13', '2023-05-04 05:20:13'),
(14, 9, 23, 1, 'ASUS TUF Gaming F15 (2022) Gaming Laptop, 15.6” FHD 144Hz Display, GeForce RTX', '[]', 0, '3000', 1, '2023-05-06 00:57:16', '2023-05-06 00:57:16'),
(16, 11, 12, 1, 'DJI Osmo Action 3 Standard Combo, Waterproof Action Camera with 4K HDR', '[]', 0, '280', 2, '2023-05-08 04:33:54', '2023-05-08 04:33:54'),
(17, 12, 25, 2, 'Amazon Essentials Men\'s Short-Sleeve Chambray ShirtProduct Image', '[]', 0, '50', 1, '2023-09-26 23:29:11', '2023-09-26 23:29:11'),
(18, 13, 15, 1, 'Insta360 ONE RS 4K Edition – Waterproof 4K 60fps Action Camera with FlowSate Stabilization', '[]', 0, '500', 1, '2025-01-25 12:46:28', '2025-01-25 12:46:28');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$MI4UggOQTxHtIVd26olI2ePqcoK29S/gQtG0o3KIa1UZrIIPwQsFO', '2023-11-27 09:24:44'),
('user@gmail.com', '$2y$10$EErrFL5CZyZiaUOeWfaq4erizyyBuYUwuH5ToLMysfTtQuhk22DZm', '2023-11-27 07:51:58');

-- --------------------------------------------------------

--
-- Table structure for table `paypal_settings`
--

CREATE TABLE `paypal_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `mode` tinyint(1) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `currency_name` varchar(255) NOT NULL,
  `currency_rate` double NOT NULL,
  `client_id` text NOT NULL,
  `secret_key` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paypal_settings`
--

INSERT INTO `paypal_settings` (`id`, `status`, `mode`, `country_name`, `currency_name`, `currency_rate`, `client_id`, `secret_key`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'United States', 'USD', 1, 'AZjJDbhZ2wA83eFuGYYDLr0U7GeCongaCv9JBDKI0L1Qi2ele6Vfx2J4UIsGe---c2g9HvnvYlS0A5n8', 'EFJVdW6_xzCU9bRhX3TWF5J8TwTNmcNig-h8cNZwHlgA7wzCJAQaBli-TMWisg_H9Ckut9SfHmH1S2lm', '2023-04-12 01:23:22', '2023-04-12 04:39:46');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `thumb_image` text NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `child_category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `short_description` text NOT NULL,
  `long_description` text NOT NULL,
  `video_link` text DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `offer_price` double DEFAULT NULL,
  `offer_start_date` date DEFAULT NULL,
  `offer_end_date` date DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `is_approved` int(11) NOT NULL DEFAULT 0,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `short_description`, `long_description`, `video_link`, `sku`, `price`, `offer_price`, `offer_start_date`, `offer_end_date`, `product_type`, `status`, `is_approved`, `seo_title`, `seo_description`, `created_at`, `updated_at`) VALUES
(9, 'Canon EOS Rebel SL3 Digital SLR Camera with EF-S 18-55mm Lens kit', 'canon-eos-rebel-sl3-digital-slr-camera-with-ef-s-18-55mm-lens-kit', 'uploads/media_6446a86d168e0.JPG', 1, 10, 13, 11, 4, 1000, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and lightweight camera that is perfect for capturing high-quality photos and videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image Processor, this camera delivers stunning image quality with excellent detail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel CMOS AF, which provides fast and accurate autofocus during both photo and video shooting. This makes it easy to capture the perfect shot, even when your subject is moving.</p><p>This camera is also equipped with a Vari-angle Touchscreen LCD that can be rotated to various angles for easy framing and shooting at different angles. The touchscreen interface is intuitive and user-friendly, making it easy to access the camera\'s many features and settings.</p><p>In addition, the EOS Rebel SL3 offers built-in Wi-Fi and Bluetooth connectivity, allowing you to easily transfer photos and videos to your smart devices or share them on social media. The camera also includes a built-in feature guide to help you learn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p><br></p><p></p>', NULL, 'SIK-43234', 300, 290, '2023-04-24', '2023-08-12', 'featured_product', 1, 1, NULL, NULL, '2023-04-24 10:03:57', '2023-04-25 23:05:19'),
(10, 'Canon EOS Rebel T7 DSLR Camera with 18-55mm Lens _ Built-in Wi-Fi _ 24.1 MP CMOSProduct', 'canon-eos-rebel-t7-dslr-camera-with-18-55mm-lens-built-in-wi-fi-241-mp-cmosproduct', 'uploads/media_6446bb298f833.JPG', 1, 10, 13, 11, 4, 1000, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p></p>', NULL, 'MKV-2342345', 600, 560, '2023-04-24', '2023-07-29', 'top_product', 1, 1, NULL, NULL, '2023-04-24 11:23:53', '2023-04-24 11:23:53'),
(11, 'DJI Action 2 Dual-Screen Combo & Magnetic Protective Case - 4K Action Camera witProduct', 'dji-action-2-dual-screen-combo-magnetic-protective-case-4k-action-camera-witproduct', 'uploads/media_6446bbaec2455.JPG', 1, 10, 13, 12, 4, 1000, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p></p>', NULL, 'MKV-2342345', 200, NULL, '2023-04-24', '2023-04-24', 'new_arrival', 1, 1, NULL, NULL, '2023-04-24 11:26:06', '2023-04-24 11:28:05'),
(12, 'DJI Osmo Action 3 Standard Combo, Waterproof Action Camera with 4K HDR', 'dji-osmo-action-3-standard-combo-waterproof-action-camera-with-4k-hdr', 'uploads/media_6446beb223eaa.JPG', 1, 10, 13, 12, 5, 998, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p></p>', NULL, 'MKV-2342345', 300, 280, '2023-04-24', '2023-10-28', 'new_arrival', 1, 1, NULL, NULL, '2023-04-24 11:38:58', '2023-05-08 04:33:54'),
(13, 'GoPro HERO11 Black - Waterproof Action Camera with 5.3K60 Ultra HD Video, 27MP', 'gopro-hero11-black-waterproof-action-camera-with-53k60-ultra-hd-video-27mp', 'uploads/media_6446bff6ec3ba.JPG', 1, 10, 13, 13, 6, 1000, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p></p>', NULL, 'MKV-2342345', 219, 200, '2023-04-24', '2024-08-30', 'top_product', 1, 1, NULL, NULL, '2023-04-24 11:44:22', '2023-05-07 22:24:04'),
(14, 'GoPro HERO11 Black Mini - Compact Waterproof Action Camera with 5.3K60 Ultra HD Video, 24.7MP', 'gopro-hero11-black-mini-compact-waterproof-action-camera-with-53k60-ultra-hd-video-247mp', 'uploads/media_6446c05641ef8.JPG', 1, 10, 13, 13, 6, 399, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p></p>', NULL, 'MKV-2342345', 170, 160, '2023-04-24', '2023-11-18', 'featured_product', 1, 1, NULL, NULL, '2023-04-24 11:45:58', '2023-04-24 11:45:58'),
(15, 'Insta360 ONE RS 4K Edition – Waterproof 4K 60fps Action Camera with FlowSate Stabilization', 'insta360-one-rs-4k-edition-waterproof-4k-60fps-action-camera-with-flowsate-stabilization', 'uploads/media_6446c23ea57d0.JPG', 1, 10, 13, 13, 6, 398, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p></p>', NULL, 'MKV-2342345', 500, 400, '2023-04-24', '2024-12-28', 'best_product', 1, 1, NULL, NULL, '2023-04-24 11:54:06', '2025-01-25 12:46:28'),
(16, 'Insta360 X3 - Waterproof 360 Action Camera with 1 2_ 48MP Sensors, 5.7K 360 Active HDR Video', 'insta360-x3-waterproof-360-action-camera-with-1-2-48mp-sensors-57k-360-active-hdr-video', 'uploads/media_6446c394b5341.JPG', 1, 10, 13, 13, 6, 200, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p></p>', NULL, 'MKV-2342345', 176, NULL, '2023-04-24', '2023-04-24', 'best_product', 1, 1, NULL, NULL, '2023-04-24 11:59:48', '2023-04-24 11:59:48'),
(17, 'Panasonic LUMIX G7KS 4K Mirrorless Camera, 16 Megapixel Digital Camera', 'panasonic-lumix-g7ks-4k-mirrorless-camera-16-megapixel-digital-camera', 'uploads/media_644798c5250ca.JPG', 1, 10, 13, 14, 7, 299, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p></p>', NULL, 'MKV-2342345', 500, NULL, '2023-04-25', '2023-04-25', 'best_product', 1, 1, NULL, NULL, '2023-04-25 03:09:25', '2023-04-25 03:09:25'),
(18, 'Pentax K-70 Weather-Sealed DSLR Camera with 18-135mm Lens (Black)', 'pentax-k-70-weather-sealed-dslr-camera-with-18-135mm-lens-black', 'uploads/media_64479966b56df.jpg', 1, 10, 13, 14, 7, 50, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p></p>', NULL, 'MKV-2342345', 1200, NULL, '2023-04-25', '2023-04-25', 'new_arrival', 1, 1, NULL, NULL, '2023-04-25 03:12:06', '2023-04-25 03:12:06'),
(19, 'Acer Nitro 5 AN515-57-79TD Gaming Laptop _ Intel Core i7-11800H _ NVIDIA GeForceProduct', 'acer-nitro-5-an515-57-79td-gaming-laptop-intel-core-i7-11800h-nvidia-geforceproduct', 'uploads/media_64479bb095490.JPG', 1, 10, 14, 15, 9, 400, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p></p>', NULL, 'MKV-2342345', 2000, 1900, '2023-04-25', '2024-01-27', 'featured_product', 1, 1, NULL, NULL, '2023-04-25 03:21:52', '2023-04-25 03:21:52'),
(20, 'ASUS ROG Strix G16 (2023) Gaming Laptop, 16” 16_10 FHD 165Hz, GeForce RTX 4070, Intel Core i9-13980H', 'asus-rog-strix-g16-2023-gaming-laptop-16-16-10-fhd-165hz-geforce-rtx-4070-intel-core-i9-13980h', 'uploads/media_64479c79b7dba.JPG', 1, 10, 14, 16, 9, 398, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p></p>', NULL, 'MKV-2342345', 3000, 2000, '2023-04-25', '2024-08-30', 'new_arrival', 1, 1, NULL, NULL, '2023-04-25 03:25:13', '2023-05-07 22:24:25'),
(21, 'ASUS TUF Dash 15 (2021) Ultra Slim Gaming Laptop, 15.6_ 144Hz FHD, GeForce RTX', 'asus-tuf-dash-15-2021-ultra-slim-gaming-laptop-156-144hz-fhd-geforce-rtx', 'uploads/media_64479d709df25.JPG', 1, 10, 14, 16, 9, 1000, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p><br></p><p></p>', NULL, 'MKV-2342345', 2000, NULL, '2023-04-25', '2023-04-25', 'top_product', 1, 1, NULL, NULL, '2023-04-25 03:29:20', '2023-04-25 03:29:20'),
(22, 'ASUS TUF Dash 15 (2022) Gaming Laptop, 15.6_ 144Hz FHD Display, Intel Core i7-12Product', 'asus-tuf-dash-15-2022-gaming-laptop-156-144hz-fhd-display-intel-core-i7-12product', 'uploads/media_64479defd896b.JPG', 1, 10, 14, 16, 9, 297, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p></p>', NULL, 'MKV-2342345', 1400, NULL, '2023-04-25', '2023-04-25', 'featured_product', 1, 1, NULL, NULL, '2023-04-25 03:31:27', '2023-04-25 03:31:27'),
(23, 'ASUS TUF Gaming F15 (2022) Gaming Laptop, 15.6” FHD 144Hz Display, GeForce RTX', 'asus-tuf-gaming-f15-2022-gaming-laptop-156-fhd-144hz-display-geforce-rtx', 'uploads/media_64479e22341ff.JPG', 1, 10, 14, 16, 9, 3090, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p></p>', NULL, 'MKV-2342345', 3000, 2000, '2023-04-25', '2024-05-31', 'best_product', 1, 1, NULL, NULL, '2023-04-25 03:32:18', '2023-05-07 22:23:33'),
(24, 'Wrangler Men\'s Iconic Denim Regular Fit Snap Shirt', 'wrangler-mens-iconic-denim-regular-fit-snap-shirt', 'uploads/media_645392335b97e.jpg', 2, 10, 15, NULL, 8, 1000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>', NULL, 'MKV-2342345', 300, 250, '2023-05-04', '2023-08-31', 'new_arrival', 1, 1, NULL, NULL, '2023-05-04 05:08:35', '2023-05-04 05:10:27'),
(25, 'Amazon Essentials Men\'s Short-Sleeve Chambray ShirtProduct Image', 'amazon-essentials-mens-short-sleeve-chambray-shirtproduct-image', 'uploads/media_64578eb36515a.jpg', 2, 11, NULL, NULL, 12, 999, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting \r\nindustry. Lorem Ipsum has been the industry\'s standard dummy text ever \r\nsince the 1500s, when an unknown printer took a galley of type and \r\nscrambled it to make a type specimen book. It has survived not only five\r\n centuries, but also the leap into electronic typesetting, remaining \r\nessentially unchanged. It was popularised in the 1960s with the release \r\nof Letraset sheets containing Lorem Ipsum passages, and more recently \r\nwith desktop publishing software like Aldus PageMaker including versions\r\n of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing \r\nand typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy \r\ntext of the printing and typesetting industry. Lorem Ipsum has been the \r\nindustry\'s standard dummy text ever since the 1500s, when an unknown \r\nprinter took a galley of type and scrambled it to make a type specimen \r\nbook. It has survived not only five centuries, but also the leap into \r\nelectronic typesetting, remaining essentially unchanged. It was \r\npopularised in the 1960s with the release of Letraset sheets containing \r\nLorem Ipsum passages, and more recently with desktop publishing software\r\n like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem \r\nIpsum is simply dummy text of the printing and typesetting industry. \r\nLorem Ipsum has been the industry\'s standard dummy text ever since the \r\n1500s, when an unknown printer took a galley of type and scrambled it to\r\n make a type specimen book. It has survived not only five centuries, but\r\n also the leap into electronic typesetting, remaining essentially \r\nunchanged. It was popularised in the 1960s with the release of Letraset \r\nsheets containing Lorem Ipsum passages, and more recently with desktop \r\npublishing software like Aldus PageMaker including versions of Lorem \r\nIpsum.</p><p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.<br></p><p></p>', NULL, 'MKV-2342345', 90, 50, '2023-05-07', '2024-05-25', 'top_product', 1, 1, NULL, NULL, '2023-05-07 05:42:43', '2023-09-26 23:29:11');
INSERT INTO `products` (`id`, `name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `short_description`, `long_description`, `video_link`, `sku`, `price`, `offer_price`, `offer_start_date`, `offer_end_date`, `product_type`, `status`, `is_approved`, `seo_title`, `seo_description`, `created_at`, `updated_at`) VALUES
(26, '.Amazon Essentials Men\'s Slim-Fit Short-Sleeve Pocket Oxford Shirt', 'amazon-essentials-mens-slim-fit-short-sleeve-pocket-oxford-shirt', 'uploads/media_64578f4074403.jpg', 2, 11, NULL, NULL, 12, 500, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting \r\nindustry. Lorem Ipsum has been the industry\'s standard dummy text ever \r\nsince the 1500s, when an unknown printer took a galley of type and \r\nscrambled it to make a type specimen book. It has survived not only five\r\n centuries, but also the leap into electronic typesetting, remaining \r\nessentially unchanged. It was popularised in the 1960s with the release \r\nof Letraset sheets containing Lorem Ipsum passages, and more recently \r\nwith desktop publishing software like Aldus PageMaker including versions\r\n of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing \r\nand typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy \r\ntext of the printing and typesetting industry. Lorem Ipsum has been the \r\nindustry\'s standard dummy text ever since the 1500s, when an unknown \r\nprinter took a galley of type and scrambled it to make a type specimen \r\nbook. It has survived not only five centuries, but also the leap into \r\nelectronic typesetting, remaining essentially unchanged. It was \r\npopularised in the 1960s with the release of Letraset sheets containing \r\nLorem Ipsum passages, and more recently with desktop publishing software\r\n like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem \r\nIpsum is simply dummy text of the printing and typesetting industry. \r\nLorem Ipsum has been the industry\'s standard dummy text ever since the \r\n1500s, when an unknown printer took a galley of type and scrambled it to\r\n make a type specimen book. It has survived not only five centuries, but\r\n also the leap into electronic typesetting, remaining essentially \r\nunchanged. It was popularised in the 1960s with the release of Letraset \r\nsheets containing Lorem Ipsum passages, and more recently with desktop \r\npublishing software like Aldus PageMaker including versions of Lorem \r\nIpsum.</p><p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.<br></p><p></p>', NULL, 'MKV-2342345', 30, NULL, '2023-05-07', '2023-05-07', 'best_product', 1, 1, NULL, NULL, '2023-05-07 05:45:04', '2023-05-07 05:48:37'),
(27, 'Amazon Essentials Men\'s Slim-Fit Short-Sleeve Print Shirt', 'amazon-essentials-mens-slim-fit-short-sleeve-print-shirt', 'uploads/media_64578fd279656.jpg', 2, 11, NULL, NULL, 12, 100, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting \r\nindustry. Lorem Ipsum has been the industry\'s standard dummy text ever \r\nsince the 1500s, when an unknown printer took a galley of type and \r\nscrambled it to make a type specimen book. It has survived not only five\r\n centuries, but also the leap into electronic typesetting, remaining \r\nessentially unchanged. It was popularised in the 1960s with the release \r\nof Letraset sheets containing Lorem Ipsum passages, and more recently \r\nwith desktop publishing software like Aldus PageMaker including versions\r\n of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing \r\nand typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy \r\ntext of the printing and typesetting industry. Lorem Ipsum has been the \r\nindustry\'s standard dummy text ever since the 1500s, when an unknown \r\nprinter took a galley of type and scrambled it to make a type specimen \r\nbook. It has survived not only five centuries, but also the leap into \r\nelectronic typesetting, remaining essentially unchanged. It was \r\npopularised in the 1960s with the release of Letraset sheets containing \r\nLorem Ipsum passages, and more recently with desktop publishing software\r\n like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem \r\nIpsum is simply dummy text of the printing and typesetting industry. \r\nLorem Ipsum has been the industry\'s standard dummy text ever since the \r\n1500s, when an unknown printer took a galley of type and scrambled it to\r\n make a type specimen book. It has survived not only five centuries, but\r\n also the leap into electronic typesetting, remaining essentially \r\nunchanged. It was popularised in the 1960s with the release of Letraset \r\nsheets containing Lorem Ipsum passages, and more recently with desktop \r\npublishing software like Aldus PageMaker including versions of Lorem \r\nIpsum.</p><p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.<br></p><p></p>', NULL, 'MKV-2342345', 100, 90, '2023-05-07', '2024-02-24', NULL, 1, 1, NULL, NULL, '2023-05-07 05:47:30', '2023-05-07 21:08:55'),
(28, 'Gildan Men\'s Classic', 'gildan-mens-classic', 'uploads/media_6457921b909a7.jpg', 2, 11, NULL, NULL, 12, 1000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting \r\nindustry. Lorem Ipsum has been the industry\'s standard dummy text ever \r\nsince the 1500s, when an unknown printer took a galley of type and \r\nscrambled it to make a type specimen book. It has survived not only five\r\n centuries, but also the leap into electronic typesetting, remaining \r\nessentially unchanged. It was popularised in the 1960s with the release \r\nof Letraset sheets containing Lorem Ipsum passages, and more recently \r\nwith desktop publishing software like Aldus PageMaker including versions\r\n of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy text of the printing \r\nand typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p><p>Lorem Ipsum is simply dummy \r\ntext of the printing and typesetting industry. Lorem Ipsum has been the \r\nindustry\'s standard dummy text ever since the 1500s, when an unknown \r\nprinter took a galley of type and scrambled it to make a type specimen \r\nbook. It has survived not only five centuries, but also the leap into \r\nelectronic typesetting, remaining essentially unchanged. It was \r\npopularised in the 1960s with the release of Letraset sheets containing \r\nLorem Ipsum passages, and more recently with desktop publishing software\r\n like Aldus PageMaker including versions of Lorem Ipsum.</p><p>Lorem \r\nIpsum is simply dummy text of the printing and typesetting industry. \r\nLorem Ipsum has been the industry\'s standard dummy text ever since the \r\n1500s, when an unknown printer took a galley of type and scrambled it to\r\n make a type specimen book. It has survived not only five centuries, but\r\n also the leap into electronic typesetting, remaining essentially \r\nunchanged. It was popularised in the 1960s with the release of Letraset \r\nsheets containing Lorem Ipsum passages, and more recently with desktop \r\npublishing software like Aldus PageMaker including versions of Lorem \r\nIpsum.</p><p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.<br></p><p></p>', NULL, 'MKV-2342345', 50, NULL, '2023-05-07', '2023-05-07', NULL, 1, 1, NULL, NULL, '2023-05-07 05:57:15', '2023-05-07 05:58:06'),
(29, 'Hanes Sport Men\'s Polo Shirt, Men\'s Cool DRI Moisture-Wicking Performance Polo Shirt, Jersey Knit Pe', 'hanes-sport-mens-polo-shirt-mens-cool-dri-moisture-wicking-performance-polo-shirt-jersey-knit-pe', 'uploads/media_64586910aecb8.JPG', 2, 11, NULL, NULL, 12, 99, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p><br></p>', NULL, 'MKV-2342345', 90, NULL, '2023-05-08', '2023-05-08', 'featured_product', 1, 1, NULL, NULL, '2023-05-07 21:14:24', '2023-05-07 21:21:48'),
(30, 'Lucky Brand Men\'s Venice Burnout Notch Neck Tee Shirt', 'lucky-brand-mens-venice-burnout-notch-neck-tee-shirt', 'uploads/media_6458697a7c32d.jpg', 2, 11, NULL, NULL, 12, 900, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p><br></p><p></p>', NULL, 'MKV-2342345', 200, NULL, '2023-05-08', '2023-05-08', 'featured_product', 1, 1, NULL, NULL, '2023-05-07 21:16:10', '2023-05-07 21:21:52'),
(31, 'Nautica Men\'s Performance Pique Polo Shirt', 'nautica-mens-performance-pique-polo-shirt', 'uploads/media_645869ab41da2.jpg', 2, 11, NULL, NULL, 12, 500, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p><br></p><p></p>', NULL, 'MKV-2342345', 99, NULL, '2023-05-08', '2023-05-08', 'featured_product', 1, 0, NULL, NULL, '2023-05-07 21:16:59', '2023-05-07 21:22:19'),
(32, 'Nike Men\'s Sportswear Americana Statement Tank Top', 'nike-mens-sportswear-americana-statement-tank-top', 'uploads/media_64586b834d253.jpg', 1, 11, NULL, NULL, 12, 899, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p><br></p><p></p>', NULL, 'MKV-2342345', 90, NULL, '2023-05-08', '2023-05-08', 'top_product', 1, 1, NULL, NULL, '2023-05-07 21:24:51', '2023-05-07 21:24:51'),
(33, 'Alex Evenings Women\'s 3 4 Sleeve Stretch Lace Bodice Mock One Piece Gown', 'alex-evenings-womens-3-4-sleeve-stretch-lace-bodice-mock-one-piece-gown', 'uploads/media_64586d9ae3ced.jpg', 1, 12, NULL, NULL, 13, 1000, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p><br></p><p></p>', NULL, 'MKV-2342345', 200, NULL, '2023-05-08', '2023-05-08', 'new_arrival', 1, 1, NULL, NULL, '2023-05-07 21:33:46', '2023-05-07 21:33:46'),
(34, 'Alex Evenings Women\'s Long Ballgown Skirt', 'alex-evenings-womens-long-ballgown-skirt', 'uploads/media_64586e03567bd.jpg', 1, 12, NULL, NULL, 13, 998, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p><br></p><p></p>', NULL, 'MKV-2342345', 2000, NULL, '2023-05-08', '2023-05-08', 'new_arrival', 1, 1, NULL, NULL, '2023-05-07 21:35:31', '2023-05-07 21:35:31'),
(35, 'Amazon Essentials Women\'s Sleeveless Woven Shirt Dress', 'amazon-essentials-womens-sleeveless-woven-shirt-dress', 'uploads/media_64586e82bee01.jpg', 1, 12, NULL, NULL, 14, 888, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p><br></p><p></p>', NULL, 'MKV-2342345', 2000, NULL, '2023-05-08', '2023-05-08', 'new_arrival', 1, 1, NULL, NULL, '2023-05-07 21:37:38', '2023-05-07 21:37:38'),
(36, 'Amoretu Women Summer Tunic Dress V Neck Casual Loose Flowy Swing Shift Dresses', 'amoretu-women-summer-tunic-dress-v-neck-casual-loose-flowy-swing-shift-dresses', 'uploads/media_64586f034b020.JPG', 1, 12, NULL, NULL, 14, 8000, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p><br></p><p></p>', NULL, 'MKV-2342345', 300, NULL, '2023-05-08', '2023-05-08', 'featured_product', 1, 1, NULL, NULL, '2023-05-07 21:39:47', '2023-05-07 21:39:47'),
(37, 'BTFBM Women Summer Bohemian Floral Casual Wrap V Neck Ruffle Cap Sleeveless Belt A-Line Pleated Hem', 'btfbm-women-summer-bohemian-floral-casual-wrap-v-neck-ruffle-cap-sleeveless-belt-a-line-pleated-hem', 'uploads/media_64586f667de7d.JPG', 1, 12, NULL, NULL, 15, 177, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p><br></p><p></p>', NULL, 'MKV-2342345', 1200, NULL, '2023-05-08', '2023-05-08', 'featured_product', 1, 1, NULL, NULL, '2023-05-07 21:41:26', '2023-05-07 21:41:26'),
(38, 'Calvin Klein Sleeveless V-Neck Gown with High-Low Design – Women’s Formal Dresses for Special Occasions', 'calvin-klein-sleeveless-v-neck-gown-with-high-low-design-womens-formal-dresses-for-special-occasions', 'uploads/media_64586ff9ef3d0.JPG', 1, 12, NULL, NULL, 14, 800, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p><br></p><p></p>', NULL, 'MKV-2342345', 90, NULL, '2023-05-08', '2023-05-08', 'top_product', 1, 1, NULL, NULL, '2023-05-07 21:43:54', '2023-05-07 21:43:54'),
(39, 'Dress the Population womens Elisa Sleeveless Plunge Neckline Fit and Flare Midi Dress', 'dress-the-population-womens-elisa-sleeveless-plunge-neckline-fit-and-flare-midi-dress', 'uploads/media_64587078a2da0.JPG', 1, 12, NULL, NULL, 15, 800, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p><br></p><p></p>', NULL, 'MKV-2342345', 99, NULL, '2023-05-08', '2023-05-08', 'top_product', 1, 1, NULL, NULL, '2023-05-07 21:46:00', '2023-05-07 21:46:00'),
(40, 'The Drop Women\'s Britt Tiered Maxi Tent Dress', 'the-drop-womens-britt-tiered-maxi-tent-dress', 'uploads/media_645870b816f94.jpg', 1, 12, NULL, NULL, 14, 788, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p><br></p><p></p>', NULL, 'MKV-2342345', 900, NULL, '2023-05-08', '2023-05-08', 'top_product', 1, 1, NULL, NULL, '2023-05-07 21:47:04', '2023-05-07 21:47:04'),
(41, 'Amazon Collection Diamond 3 Stone Pendant Necklace', 'amazon-collection-diamond-3-stone-pendant-necklace', 'uploads/media_64587137806d0.jpg', 1, 12, NULL, NULL, 14, 1000, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p><br></p><p></p>', NULL, 'MKV-2342345', 800, NULL, '2023-05-08', '2023-05-08', 'best_product', 1, 1, NULL, NULL, '2023-05-07 21:49:11', '2023-05-07 21:49:11');
INSERT INTO `products` (`id`, `name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `short_description`, `long_description`, `video_link`, `sku`, `price`, `offer_price`, `offer_start_date`, `offer_end_date`, `product_type`, `status`, `is_approved`, `seo_title`, `seo_description`, `created_at`, `updated_at`) VALUES
(42, 'Betsey Johnson Woven Mixed Multi-Colored Bead Flower Heart Illusion Necklace', 'betsey-johnson-woven-mixed-multi-colored-bead-flower-heart-illusion-necklace', 'uploads/media_645871721a698.JPG', 1, 12, NULL, NULL, 14, 89, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p><br></p><p></p>', NULL, 'MKV-2342345', 99, NULL, '2023-05-08', '2023-05-08', 'best_product', 1, 1, NULL, NULL, '2023-05-07 21:50:10', '2023-05-07 21:50:10'),
(43, 'Hey Dude Women\'s Wendy Lace-Up Loafers Comfortable & Lightweight Ladies Shoes Multiple Sizes & Colors', 'hey-dude-womens-wendy-lace-up-loafers-comfortable-lightweight-ladies-shoes-multiple-sizes-colors', 'uploads/media_645871c389e55.JPG', 1, 13, NULL, NULL, 14, 700, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p><br></p><p></p>', NULL, 'MKV-2342345', 99, NULL, '2023-05-08', '2023-05-08', 'best_product', 1, 1, NULL, NULL, '2023-05-07 21:51:31', '2023-05-07 21:51:31'),
(44, 'UGG Women\'s Tasman Slipper UGG Women\'s Tasman Slipper', 'ugg-womens-tasman-slipper-ugg-womens-tasman-slipper', 'uploads/media_645872c551cc2.jpg', 1, 12, NULL, NULL, 14, 800, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p><br></p><p></p>', NULL, 'MKV-2342345', 79, NULL, '2023-05-08', '2023-05-08', NULL, 1, 1, NULL, NULL, '2023-05-07 21:55:49', '2023-05-07 22:20:36'),
(45, 'Skechers Women\'s 33492 Sneaker Skechers Women\'s 33492 Sneaker', 'skechers-womens-33492-sneaker-skechers-womens-33492-sneaker', 'uploads/media_645873159a94a.jpg', 1, 12, NULL, NULL, 14, 8798, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p><br></p><p></p>', NULL, 'MKV-2342345', 97, NULL, '2023-05-08', '2023-05-08', NULL, 1, 1, NULL, NULL, '2023-05-07 21:57:09', '2023-05-07 22:20:31'),
(46, 'GoPro HERO11 Black Mini - Compact Waterproof Action Camera with 5.3K60 Ultra HD Video', 'gopro-hero11-black-mini-compact-waterproof-action-camera-with-53k60-ultra-hd-video', 'uploads/media_645874602388a.JPG', 1, 10, 13, NULL, 6, 800, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p><br></p><p></p>', NULL, 'MKV-2342345', 2000, NULL, '2023-05-08', '2023-05-08', NULL, 1, 1, NULL, NULL, '2023-05-07 22:02:40', '2023-05-07 22:02:40'),
(47, 'GoPro HERO11 Black - Waterproof Action Camera with 5.3K60 Ultra HD Video, 27MP Photosr', 'gopro-hero11-black-waterproof-action-camera-with-53k60-ultra-hd-video-27mp-photosr', 'uploads/media_645874c9c6568.JPG', 1, 10, 13, 13, 6, 800, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p><br></p><p></p>', NULL, 'MKV-2342345', 800, NULL, '2023-05-08', '2023-05-08', NULL, 1, 1, NULL, NULL, '2023-05-07 22:04:25', '2023-05-07 22:04:25'),
(48, 'Wrangler Authentics Men\'s Long Sleeve Classic Woven Shirt', 'wrangler-authentics-mens-long-sleeve-classic-woven-shirt', 'uploads/media_645875ee662b5.jpg', 1, 11, NULL, NULL, 12, 800, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p><br></p><p></p>', NULL, 'MKV-2342345', 799, NULL, '2023-05-08', '2023-05-08', NULL, 1, 1, NULL, NULL, '2023-05-07 22:09:18', '2023-05-07 22:09:18'),
(49, 'Nautica Men\'s Performance Pique Polo Shirt', 'nautica-mens-performance-pique-polo-shirt', 'uploads/media_6458762fef383.jpg', 1, 11, NULL, NULL, 12, 799, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p><br></p><p></p>', NULL, 'MKV-2342345', 99, NULL, '2023-05-08', '2023-05-08', 'best_product', 1, 1, NULL, NULL, '2023-05-07 22:10:23', '2023-05-07 22:10:23'),
(50, 'Wrangler Men\'s Iconic Denim Regular Fit Snap Shirt', 'wrangler-mens-iconic-denim-regular-fit-snap-shirt', 'uploads/media_645876a53c0c4.jpg', 1, 11, NULL, NULL, 12, 800, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p><br></p><p></p>', NULL, 'MKV-2342345', 800, 1000, '2023-05-08', '2023-05-08', NULL, 1, 1, NULL, NULL, '2023-05-07 22:12:21', '2023-05-07 22:12:21'),
(51, 'Hanes Sport Men\'s Polo Shirt, Men\'s Cool DRI Moisture-Wicking Performance Polo Shirt', 'hanes-sport-mens-polo-shirt-mens-cool-dri-moisture-wicking-performance-polo-shirt', 'uploads/media_64587721f3057.JPG', 1, 11, NULL, NULL, 12, 876, 'Perfect for beginners, this camera bundle offers the essential tools needed to take your SLR skills to new heights, all in one convenient package. No matter where your next adventure takes you, count on the EOS Rebel t7\'s impressive 24.1 Megapixel', '<p>The Canon EOS Rebel SL3 Digital SLR Camera is a versatile and \r\nlightweight camera that is perfect for capturing high-quality photos and\r\n videos. With its 24.1 Megapixel CMOS (APS-C) sensor and DIGIC 8 Image \r\nProcessor, this camera delivers stunning image quality with excellent \r\ndetail and clarity.</p><p>The EOS Rebel SL3 also features Dual Pixel \r\nCMOS AF, which provides fast and accurate autofocus during both photo \r\nand video shooting. This makes it easy to capture the perfect shot, even\r\n when your subject is moving.</p><p>This camera is also equipped with a \r\nVari-angle Touchscreen LCD that can be rotated to various angles for \r\neasy framing and shooting at different angles. The touchscreen interface\r\n is intuitive and user-friendly, making it easy to access the camera\'s \r\nmany features and settings.</p><p>In addition, the EOS Rebel SL3 offers \r\nbuilt-in Wi-Fi and Bluetooth connectivity, allowing you to easily \r\ntransfer photos and videos to your smart devices or share them on social\r\n media. The camera also includes a built-in feature guide to help you \r\nlearn how to use its various functions and settings.</p><p>Other key features of the Canon EOS Rebel SL3 Digital SLR Camera include:</p><ul><li>9-point AF system</li><li>ISO range of 100-25600 (expandable to 51200)</li><li>5 fps continuous shooting</li><li>Full HD 1080p video recording at up to 60 fps</li><li>Creative Assist mode for easy customization of settings</li><li>EF-S 18-55mm f/4-5.6 IS STM lens included</li></ul><p>Here is a specification table for the Canon EOS Rebel SL3 Digital SLR Camera:<br><br></p><table class=\"table table-bordered\"><tbody><tr><td><h5><b>Specification</b></h5></td><td><h5>Description</h5></td></tr><tr><td>Image sensor</td><td>24.1 Megapixel APS-C CMOS sensor</td></tr><tr><td>Image processor</td><td>DIGIC 8</td></tr><tr><td>Autofocus</td><td>Dual Pixel CMOS AF</td></tr><tr><td>AF points</td><td>9-point AF system</td></tr><tr><td>ISO range</td><td>100-25600 (expandable to 51200)</td></tr><tr><td>Continuous shooting</td><td>Up to 5 fps</td></tr><tr><td>Video recording</td><td>Full HD 1080p at up to 60 fps</td></tr></tbody></table><p><br></p><p></p>', NULL, 'MKV-2342345', 90, 1000, '2023-05-08', '2023-05-08', 'top_product', 1, 1, NULL, NULL, '2023-05-07 22:14:26', '2023-05-07 22:14:26');

-- --------------------------------------------------------

--
-- Table structure for table `product_image_galleries`
--

CREATE TABLE `product_image_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_image_galleries`
--

INSERT INTO `product_image_galleries` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(24, 'uploads/media_6446aaa52bbd3.JPG', 9, '2023-04-24 10:13:25', '2023-04-24 10:13:25'),
(25, 'uploads/media_6446aaa52c043.JPG', 9, '2023-04-24 10:13:25', '2023-04-24 10:13:25'),
(26, 'uploads/media_6446aaa52c36c.JPG', 9, '2023-04-24 10:13:25', '2023-04-24 10:13:25'),
(27, 'uploads/media_6446aaa52c794.JPG', 9, '2023-04-24 10:13:25', '2023-04-24 10:13:25'),
(28, 'uploads/media_6446aaa52cac0.JPG', 9, '2023-04-24 10:13:25', '2023-04-24 10:13:25'),
(29, 'uploads/media_6446aaa52cdd9.JPG', 9, '2023-04-24 10:13:25', '2023-04-24 10:13:25'),
(30, 'uploads/media_6446bc86746a3.JPG', 10, '2023-04-24 11:29:42', '2023-04-24 11:29:42'),
(31, 'uploads/media_6446bc8674b3d.JPG', 10, '2023-04-24 11:29:42', '2023-04-24 11:29:42'),
(32, 'uploads/media_6446bc8674e70.JPG', 10, '2023-04-24 11:29:42', '2023-04-24 11:29:42'),
(33, 'uploads/media_6446bc8675197.JPG', 10, '2023-04-24 11:29:42', '2023-04-24 11:29:42'),
(34, 'uploads/media_6446bc86757b3.JPG', 10, '2023-04-24 11:29:42', '2023-04-24 11:29:42'),
(35, 'uploads/media_6446bc8675d42.JPG', 10, '2023-04-24 11:29:42', '2023-04-24 11:29:42'),
(36, 'uploads/media_6446bca9dba82.JPG', 11, '2023-04-24 11:30:17', '2023-04-24 11:30:17'),
(37, 'uploads/media_6446bca9dc0d3.JPG', 11, '2023-04-24 11:30:17', '2023-04-24 11:30:17'),
(38, 'uploads/media_6446bca9dc47e.JPG', 11, '2023-04-24 11:30:17', '2023-04-24 11:30:17'),
(39, 'uploads/media_6446bca9dc7c2.JPG', 11, '2023-04-24 11:30:17', '2023-04-24 11:30:17'),
(40, 'uploads/media_6446bca9dcae9.JPG', 11, '2023-04-24 11:30:17', '2023-04-24 11:30:17'),
(41, 'uploads/media_6446bef95fcaa.JPG', 12, '2023-04-24 11:40:09', '2023-04-24 11:40:09'),
(42, 'uploads/media_6446bef96014e.JPG', 12, '2023-04-24 11:40:09', '2023-04-24 11:40:09'),
(43, 'uploads/media_6446bef9604a6.JPG', 12, '2023-04-24 11:40:09', '2023-04-24 11:40:09'),
(44, 'uploads/media_6446bef9607ec.JPG', 12, '2023-04-24 11:40:09', '2023-04-24 11:40:09'),
(45, 'uploads/media_6446c0094d81d.JPG', 13, '2023-04-24 11:44:41', '2023-04-24 11:44:41'),
(46, 'uploads/media_6446c0094dc8c.JPG', 13, '2023-04-24 11:44:41', '2023-04-24 11:44:41'),
(47, 'uploads/media_6446c0094dfa7.JPG', 13, '2023-04-24 11:44:41', '2023-04-24 11:44:41'),
(48, 'uploads/media_6446c0094e556.JPG', 13, '2023-04-24 11:44:41', '2023-04-24 11:44:41'),
(49, 'uploads/media_6446c0094e8b3.JPG', 13, '2023-04-24 11:44:41', '2023-04-24 11:44:41'),
(50, 'uploads/media_6446c0094eed4.JPG', 13, '2023-04-24 11:44:41', '2023-04-24 11:44:41'),
(51, 'uploads/media_6446c0d2bf8cf.JPG', 14, '2023-04-24 11:48:02', '2023-04-24 11:48:02'),
(52, 'uploads/media_6446c0d2bff82.JPG', 14, '2023-04-24 11:48:02', '2023-04-24 11:48:02'),
(53, 'uploads/media_6446c0d2c06f2.JPG', 14, '2023-04-24 11:48:02', '2023-04-24 11:48:02'),
(54, 'uploads/media_6446c0d2c0a5f.JPG', 14, '2023-04-24 11:48:02', '2023-04-24 11:48:02'),
(55, 'uploads/media_6446c0d2c0d83.JPG', 14, '2023-04-24 11:48:02', '2023-04-24 11:48:02'),
(56, 'uploads/media_6446c0d2c109f.JPG', 14, '2023-04-24 11:48:02', '2023-04-24 11:48:02'),
(57, 'uploads/media_6446c252735a2.JPG', 15, '2023-04-24 11:54:26', '2023-04-24 11:54:26'),
(58, 'uploads/media_6446c25273b39.JPG', 15, '2023-04-24 11:54:26', '2023-04-24 11:54:26'),
(59, 'uploads/media_6446c25273e8a.JPG', 15, '2023-04-24 11:54:26', '2023-04-24 11:54:26'),
(60, 'uploads/media_6446c252742d5.JPG', 15, '2023-04-24 11:54:26', '2023-04-24 11:54:26'),
(61, 'uploads/media_6446c25274640.JPG', 15, '2023-04-24 11:54:26', '2023-04-24 11:54:26'),
(62, 'uploads/media_6446c3a525306.JPG', 16, '2023-04-24 12:00:05', '2023-04-24 12:00:05'),
(63, 'uploads/media_6446c3a525788.JPG', 16, '2023-04-24 12:00:05', '2023-04-24 12:00:05'),
(64, 'uploads/media_6446c3a525ac9.JPG', 16, '2023-04-24 12:00:05', '2023-04-24 12:00:05'),
(65, 'uploads/media_6446c3a525df9.JPG', 16, '2023-04-24 12:00:05', '2023-04-24 12:00:05'),
(66, 'uploads/media_6446c3a52614a.JPG', 16, '2023-04-24 12:00:05', '2023-04-24 12:00:05'),
(67, 'uploads/media_6446c3a526466.JPG', 16, '2023-04-24 12:00:05', '2023-04-24 12:00:05'),
(68, 'uploads/media_64479bc3dd6fb.JPG', 19, '2023-04-25 03:22:11', '2023-04-25 03:22:11'),
(69, 'uploads/media_64479bc3ddb88.JPG', 19, '2023-04-25 03:22:11', '2023-04-25 03:22:11'),
(70, 'uploads/media_64479bc3ddeb3.JPG', 19, '2023-04-25 03:22:11', '2023-04-25 03:22:11'),
(71, 'uploads/media_64479bc3de1fd.JPG', 19, '2023-04-25 03:22:11', '2023-04-25 03:22:11'),
(72, 'uploads/media_64479bc3de515.JPG', 19, '2023-04-25 03:22:11', '2023-04-25 03:22:11'),
(73, 'uploads/media_64479bc3de846.JPG', 19, '2023-04-25 03:22:11', '2023-04-25 03:22:11'),
(74, 'uploads/media_64479bc3deb7a.JPG', 19, '2023-04-25 03:22:11', '2023-04-25 03:22:11'),
(75, 'uploads/media_64479c87a16d7.JPG', 20, '2023-04-25 03:25:27', '2023-04-25 03:25:27'),
(76, 'uploads/media_64479c87a1ae3.JPG', 20, '2023-04-25 03:25:27', '2023-04-25 03:25:27'),
(77, 'uploads/media_64479c87a1e22.JPG', 20, '2023-04-25 03:25:27', '2023-04-25 03:25:27'),
(78, 'uploads/media_64479c87a2148.JPG', 20, '2023-04-25 03:25:27', '2023-04-25 03:25:27'),
(79, 'uploads/media_64479c87a2658.JPG', 20, '2023-04-25 03:25:27', '2023-04-25 03:25:27'),
(80, 'uploads/media_64479c87a2d8c.JPG', 20, '2023-04-25 03:25:27', '2023-04-25 03:25:27'),
(81, 'uploads/media_64479c87a3122.JPG', 20, '2023-04-25 03:25:27', '2023-04-25 03:25:27'),
(82, 'uploads/media_64479d904aebd.JPG', 21, '2023-04-25 03:29:52', '2023-04-25 03:29:52'),
(83, 'uploads/media_64479d904b5c5.JPG', 21, '2023-04-25 03:29:52', '2023-04-25 03:29:52'),
(84, 'uploads/media_64479d904b97c.JPG', 21, '2023-04-25 03:29:52', '2023-04-25 03:29:52'),
(85, 'uploads/media_64479d904bce5.JPG', 21, '2023-04-25 03:29:52', '2023-04-25 03:29:52'),
(86, 'uploads/media_64479d904c061.JPG', 21, '2023-04-25 03:29:52', '2023-04-25 03:29:52'),
(87, 'uploads/media_64479d904c3b7.JPG', 21, '2023-04-25 03:29:52', '2023-04-25 03:29:52'),
(88, 'uploads/media_64578eee9f3b4.jpg', 25, '2023-05-07 05:43:42', '2023-05-07 05:43:42'),
(89, 'uploads/media_64578eee9f872.jpg', 25, '2023-05-07 05:43:42', '2023-05-07 05:43:42'),
(90, 'uploads/media_64578eee9fc47.jpg', 25, '2023-05-07 05:43:42', '2023-05-07 05:43:42'),
(91, 'uploads/media_64578eee9ffb3.jpg', 25, '2023-05-07 05:43:42', '2023-05-07 05:43:42'),
(92, 'uploads/media_6458693aae7f9.JPG', 29, '2023-05-07 21:15:06', '2023-05-07 21:15:06'),
(93, 'uploads/media_6458693aaedaf.JPG', 29, '2023-05-07 21:15:06', '2023-05-07 21:15:06'),
(94, 'uploads/media_6458693aaf22c.JPG', 29, '2023-05-07 21:15:06', '2023-05-07 21:15:06'),
(95, 'uploads/media_6458693aaf5e8.JPG', 29, '2023-05-07 21:15:06', '2023-05-07 21:15:06'),
(96, 'uploads/media_6458693aaf9b0.JPG', 29, '2023-05-07 21:15:06', '2023-05-07 21:15:06'),
(97, 'uploads/media_64586db840422.jpg', 33, '2023-05-07 21:34:16', '2023-05-07 21:34:16'),
(98, 'uploads/media_64586db840a25.jpg', 33, '2023-05-07 21:34:16', '2023-05-07 21:34:16'),
(99, 'uploads/media_64586db840e1e.jpg', 33, '2023-05-07 21:34:16', '2023-05-07 21:34:16'),
(100, 'uploads/media_64586db8411ae.jpg', 33, '2023-05-07 21:34:16', '2023-05-07 21:34:16'),
(101, 'uploads/media_64586e2f19e09.jpg', 34, '2023-05-07 21:36:15', '2023-05-07 21:36:15'),
(102, 'uploads/media_64586e2f1a370.jpg', 34, '2023-05-07 21:36:15', '2023-05-07 21:36:15'),
(103, 'uploads/media_64586e2f1a71b.jpg', 34, '2023-05-07 21:36:15', '2023-05-07 21:36:15'),
(104, 'uploads/media_64586e2f1aa9a.jpg', 34, '2023-05-07 21:36:15', '2023-05-07 21:36:15'),
(105, 'uploads/media_64586e2f1aed7.jpg', 34, '2023-05-07 21:36:15', '2023-05-07 21:36:15'),
(106, 'uploads/media_64586ec857382.jpg', 35, '2023-05-07 21:38:48', '2023-05-07 21:38:48'),
(107, 'uploads/media_64586ec857867.jpg', 35, '2023-05-07 21:38:48', '2023-05-07 21:38:48'),
(108, 'uploads/media_64586ec857d1f.jpg', 35, '2023-05-07 21:38:48', '2023-05-07 21:38:48'),
(109, 'uploads/media_64586ec858132.jpg', 35, '2023-05-07 21:38:48', '2023-05-07 21:38:48'),
(110, 'uploads/media_64586ec858544.jpg', 35, '2023-05-07 21:38:48', '2023-05-07 21:38:48'),
(111, 'uploads/media_64586ec858951.jpg', 35, '2023-05-07 21:38:48', '2023-05-07 21:38:48'),
(112, 'uploads/media_64586f31666d2.JPG', 36, '2023-05-07 21:40:33', '2023-05-07 21:40:33'),
(113, 'uploads/media_64586f3166b43.JPG', 36, '2023-05-07 21:40:33', '2023-05-07 21:40:33'),
(114, 'uploads/media_64586f3167003.JPG', 36, '2023-05-07 21:40:33', '2023-05-07 21:40:33'),
(115, 'uploads/media_64586f31673d1.JPG', 36, '2023-05-07 21:40:33', '2023-05-07 21:40:33'),
(116, 'uploads/media_64586f31677be.JPG', 36, '2023-05-07 21:40:33', '2023-05-07 21:40:33');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `review` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `user_id`, `vendor_id`, `review`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 23, 3, 1, 'good products', '5', 1, '2023-04-29 23:51:02', '2023-04-29 23:51:02'),
(2, 23, 3, 1, 'test review', '4', 0, '2023-04-29 23:52:17', '2023-04-30 03:11:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_review_galleries`
--

CREATE TABLE `product_review_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_review_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_review_galleries`
--

INSERT INTO `product_review_galleries` (`id`, `product_review_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'uploads/media_644e01c65194e.jpg', '2023-04-29 23:51:02', '2023-04-29 23:51:02'),
(2, 2, 'uploads/media_644e02114e15e.jpg', '2023-04-29 23:52:17', '2023-04-29 23:52:17'),
(3, 2, 'uploads/media_644e02114e6d3.png', '2023-04-29 23:52:17', '2023-04-29 23:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `product_review_image_galleries`
--

CREATE TABLE `product_review_image_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_review_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_review_image_galleries`
--

INSERT INTO `product_review_image_galleries` (`id`, `product_review_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'uploads/media_67ca0cc5213c8.jpg', '2025-03-06 14:59:49', '2025-03-06 14:59:49');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(11, 11, 'Color', 1, '2023-05-08 04:53:28', '2023-05-08 04:53:28');

-- --------------------------------------------------------

--
-- Table structure for table `product_varient_items`
--

CREATE TABLE `product_varient_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_varient_items`
--

INSERT INTO `product_varient_items` (`id`, `product_variant_id`, `name`, `price`, `is_default`, `status`, `created_at`, `updated_at`) VALUES
(14, 11, 'Red', 0, 1, 1, '2023-05-08 04:53:52', '2023-05-08 04:53:52'),
(15, 11, 'Black', 30, 0, 1, '2023-05-08 04:54:07', '2023-05-08 04:54:07');

-- --------------------------------------------------------

--
-- Table structure for table `pusher_settings`
--

CREATE TABLE `pusher_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pusher_app_id` varchar(255) NOT NULL,
  `pusher_key` varchar(255) NOT NULL,
  `pusher_secret` varchar(255) NOT NULL,
  `pusher_cluster` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pusher_settings`
--

INSERT INTO `pusher_settings` (`id`, `pusher_app_id`, `pusher_key`, `pusher_secret`, `pusher_cluster`, `created_at`, `updated_at`) VALUES
(1, '1715951', '7e683f71cce89b04bf45', 'ea6436c0db4edcd98c28', 'mt1', '2023-11-28 09:59:44', '2023-11-28 10:04:08');

-- --------------------------------------------------------

--
-- Table structure for table `razorpay_settings`
--

CREATE TABLE `razorpay_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `currency_name` varchar(255) NOT NULL,
  `currency_rate` double NOT NULL,
  `razorpay_key` text NOT NULL,
  `razorpay_secret_key` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `razorpay_settings`
--

INSERT INTO `razorpay_settings` (`id`, `status`, `country_name`, `currency_name`, `currency_rate`, `razorpay_key`, `razorpay_secret_key`, `created_at`, `updated_at`) VALUES
(1, 1, 'India', 'INR', 81.85, 'rzp_test_K7CipNQYyyMPiS', 'zSBmNMorJrirOrnDrbOd1ALO', '2023-04-14 22:00:50', '2023-04-14 22:51:59');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2ZmaSedG12dfv2LT6XQnxrqZjJSU8gYDDobwz4R1', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTkZDM2Q4cDgzejZKYnRxcWJPamR5ZjZvR1dMNkxQQkFPYm15alpqSyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0MzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluL2Zvb3Rlci1ncmlkLXR3byI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1750791952),
('jqpJtVoC9o3FEsZpf4ZmRbxjAHXl4KuMlhC1cioi', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMFh6R05RTmo2ZVFwaWMycTV5d2dqM0daQWVqUUpqY3EyM3FFSHdQRyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2ZsYXNoLXNhbGUiO31zOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjM1OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvdXNlci93aXNobGlzdCI7fX0=', 1750791966);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_rules`
--

CREATE TABLE `shipping_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `min_cost` double DEFAULT NULL,
  `cost` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_rules`
--

INSERT INTO `shipping_rules` (`id`, `name`, `type`, `min_cost`, `cost`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Express Delivery', 'flat_cost', NULL, 50, 1, '2023-04-04 23:13:04', '2023-04-05 00:37:37'),
(3, 'Free Shipping', 'min_cost', 1000, 0, 1, '2023-04-11 00:58:10', '2023-04-11 00:58:10');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner` text DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `starting_price` varchar(255) DEFAULT NULL,
  `btn_url` varchar(255) DEFAULT NULL,
  `serial` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `banner`, `type`, `title`, `starting_price`, `btn_url`, `serial`, `status`, `created_at`, `updated_at`) VALUES
(6, 'uploads/media_6413063a005c8.jpg', 'new arrivals', 'men\'s fashion', '99', 'http://127.0.0.1:8000/', 1, 1, '2023-03-16 06:06:18', '2025-06-24 11:35:00'),
(7, 'uploads/media_6413066df3a6a.jpg', 'new arrivals', 'kid\'s fashion', '69', 'http://127.0.0.1:8000/', 2, 1, '2023-03-16 06:07:09', '2025-06-24 11:35:14'),
(8, 'uploads/media_6413069181b0f.jpg', 'Hot Deals', 'winter collection', '40', 'http://127.0.0.1:8000/', 3, 1, '2023-03-16 06:07:45', '2025-06-24 11:35:25');

-- --------------------------------------------------------

--
-- Table structure for table `stripe_settings`
--

CREATE TABLE `stripe_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `mode` tinyint(1) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `currency_name` varchar(255) NOT NULL,
  `currency_rate` double NOT NULL,
  `client_id` text NOT NULL,
  `secret_key` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stripe_settings`
--

INSERT INTO `stripe_settings` (`id`, `status`, `mode`, `country_name`, `currency_name`, `currency_rate`, `client_id`, `secret_key`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'United States', 'USD', 1, 'pk_test_51MwNFdKW5d0gpOwDt4kj2AWwubKMI8bzSHHjNenilgX91YyHB3O3tB3yD5do2dAl8qpUCFWM6wuMqQeg12ZMnQv600sfwl8Hoq', 'sk_test_51MwNFdKW5d0gpOwDnak9F1qPBvErrGAOHAMdWQ4wHaaWhRDhOtFRw80i8XgiOnDW0ChbYt2yhKdZbR3llR9IkStD00IEVi0Q9z', '2023-04-13 03:42:51', '2023-04-13 05:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(13, 10, 'Camera', 'camera', 1, '2023-04-24 09:43:34', '2023-04-24 09:43:34'),
(14, 10, 'Laptops', 'laptops', 1, '2023-04-24 09:43:46', '2023-05-07 04:38:57'),
(15, 10, 'Smart Phones', 'smart-phones', 1, '2023-04-24 09:44:03', '2023-05-07 04:38:53');

-- --------------------------------------------------------

--
-- Table structure for table `terms_and_conditions`
--

CREATE TABLE `terms_and_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms_and_conditions`
--

INSERT INTO `terms_and_conditions` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, '<h3>Our Terms and Conditions</h3><p>Lorem Ipsum is simply dummy text of \r\nthe printing and typesetting industry. Lorem Ipsum has been the \r\nindustry\'s standard dummy text ever since the 1500s, when an unknown \r\nprinter took a galley of type and scrambled it to make a type specimen \r\nbook.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting \r\nindustry. Lorem Ipsum has been the industry\'s standard dummy text ever \r\nsince the 1500s, when an unknown printer took a galley of type and \r\nscrambled it to make a type specimen book.</p><p>Lorem Ipsum is simply \r\ndummy text of the printing and typesetting industry. Lorem Ipsum has \r\nbeen the industry\'s standard dummy text ever since the 1500s, when an \r\nunknown printer took a galley of type and scrambled it to make a type \r\nspecimen book.</p><p>Lorem Ipsum is simply dummy text of the printing \r\nand typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book.&nbsp;</p><p>Lorem \r\nIpsum is simply dummy text of the printing and typesetting industry. \r\nLorem Ipsum has been the industry\'s standard dummy text ever since the \r\n1500s, when an unknown printer took a galley of type and scrambled it to\r\n make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the \r\nprinting and typesetting industry. Lorem Ipsum has been the industry\'s \r\nstandard dummy text ever since the 1500s, when an unknown printer took a\r\n galley of type and scrambled it to make a type specimen book.&nbsp;Lorem \r\nIpsum is simply dummy text of the printing and typesetting industry. \r\nLorem Ipsum has been the industry\'s standard dummy text ever since the \r\n1500s, when an unknown printer took a galley of type and scrambled it to\r\n make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the \r\nprinting and typesetting industry. Lorem Ipsum has been the industry\'s \r\nstandard dummy text ever since the 1500s, when an unknown printer took a\r\n galley of type and scrambled it to make a type specimen book.</p><p>Lorem\r\n Ipsum is simply dummy text of the printing and typesetting industry. \r\nLorem Ipsum has been the industry\'s standard dummy text ever since the \r\n1500s, when an unknown printer took a galley of type and scrambled it to\r\n make a type specimen book.&nbsp;Lorem Ipsum is simply dummy text of the \r\nprinting and typesetting industry. Lorem Ipsum has been the industry\'s \r\nstandard dummy text ever since the 1500s, when an unknown printer took a\r\n galley of type and scrambled it to make a type specimen book.<br></p><p></p>', '2023-05-01 05:40:38', '2023-05-01 05:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `amount_real_currency` double NOT NULL,
  `amount_real_currency_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `transaction_id`, `payment_method`, `amount`, `amount_real_currency`, `amount_real_currency_name`, `created_at`, `updated_at`) VALUES
(7, 7, '61L47556S35664905', 'paypal', 3000, 3000, 'USD', '2023-04-29 23:00:06', '2023-04-29 23:00:06'),
(8, 8, 'ch_3N40CkKW5d0gpOwD0ZfUra9r', 'stripe', 200, 200, 'USD', '2023-05-04 05:20:13', '2023-05-04 05:20:13'),
(9, 9, '8Yeu68E4ow', 'COD', 3000, 3000, 'USD', '2023-05-06 00:57:16', '2023-05-06 00:57:16'),
(11, 11, '6HC57725K9940524A', 'paypal', 510, 510, 'USD', '2023-05-08 04:33:54', '2023-05-08 04:33:54'),
(12, 12, '4VJ41701BM666020N', 'paypal', 100, 100, 'USD', '2023-09-26 23:29:11', '2023-09-26 23:29:11'),
(13, 13, 'BrHYDgDUw2', 'COD', 550, 550, 'USD', '2025-01-25 12:46:28', '2025-01-25 12:46:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('admin','vendor','user') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `image`, `phone`, `email`, `role`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Md Nurnabi Rana', 'adminuser', '/uploads/27115441_1782594359_profile-pic(13)(1).png', NULL, 'mdnurnabirana.cse@gmail.com', 'admin', 'active', NULL, '$2y$12$.umbNh6al2bWXIG3tO/drutinPeuh3POCodieO5CFovpq2x3IroTS', 'deuItLQ9LpCo5pDHOgdAe9GH66XOskrvnfqCzmv7hiehAkDzIWgy79g835Va', NULL, '2025-06-24 12:08:44'),
(2, 'Vendor user', 'vendoruser', 'uploads/1782594359_profile-pic(13)(1).png', NULL, 'vendor@gmail.com', 'vendor', 'active', NULL, '$2y$10$FsDMmEhTSpJ8dXOIZ4wKvOeZKIKgDPsWjXhQ/sk8/7S59x72JA4E6', NULL, NULL, '2023-03-14 05:18:24'),
(3, 'Jhon Deo', 'user', 'uploads/2138622900_profile-pic(21)(1).png', NULL, 'user@gmail.com', 'user', 'active', NULL, '$2y$10$tmEjA2Oge.Rpmbhd/A8ImuY/iKz6gIv1sEoC7DVDIFzzc2BOWqGL2', 'vGRscBZSaTfKvxdXBbOVdTEhT7BFFx7TdvTV4A7lBNkgmd181dp4DlUv5ZEc', NULL, '2023-05-01 04:01:46'),
(4, 'test user', NULL, NULL, NULL, 'testuser@gmail.com', 'user', 'active', NULL, '$2y$10$LOuKX3hW/e3BZks78gwkseSZcFv9dposqqGpKbnnoEHyEhv64WnTq', NULL, '2023-02-27 02:03:19', '2023-05-01 04:00:43'),
(6, 'seller', NULL, NULL, NULL, 'seller@gmail.com', 'vendor', 'active', NULL, '$2y$10$rdKu.8vdImqKoGudaOm3OOznu36b77PlxizUvPGau62jcY1Pg4NWe', NULL, '2023-04-30 23:24:41', '2023-05-01 03:34:30'),
(7, 'seller 2', NULL, NULL, NULL, 'seller2@gmail.com', 'vendor', 'active', NULL, '$2y$10$jDvi1GbTLPqOkkqiD9NN3O1QOxk/E9P1nRYRcTqXd.bXLwFOzZo7O', NULL, '2023-05-01 00:57:38', '2023-05-08 05:08:21'),
(8, 'new user', NULL, NULL, NULL, 'newUser@gmail.com', 'user', 'active', NULL, '$2y$10$tRNZhJ4Z3PterH5GhQ8YjeiwwHRROSsqpbpqc9mzooALrT7VvvLhi', NULL, '2023-05-02 01:40:59', '2023-05-02 01:40:59'),
(10, 'User 234', NULL, NULL, NULL, 'user123@gmail.com', 'user', 'active', NULL, '$2y$10$d1jl/ucdr0Lk.fI90jj8UeH.vuygxdmcTo9QFKW1tI7c6WpsqJTAu', NULL, '2023-05-02 01:58:10', '2023-05-08 05:07:51'),
(11, 'Jhone Deo', NULL, NULL, NULL, 'jhonedeo@gmail.com', 'user', 'active', NULL, '$2y$10$CtbZ4DyWF1FobUm/lmTnUOmprguZC9bOrqT8U0Ez7rhd.uZi6JWJ.', NULL, '2023-09-26 22:29:56', '2023-09-26 22:29:56'),
(12, 'user1', NULL, NULL, NULL, 'user1@gmail.com', 'user', 'active', NULL, '$2y$10$VlPp6x3E00q9NXymjgGRnOiquxpxDI.baGLdTb7IxIvJvMxJz0ZC.', NULL, '2025-01-25 12:43:40', '2025-01-25 12:43:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `name`, `email`, `phone`, `country`, `state`, `city`, `zip`, `address`, `created_at`, `updated_at`) VALUES
(2, 3, 'Erasmus Hutchinson', 'user@gmail.com', '+1 (448) 117-4101', 'United States', 'California', 'California', '64842', 'Ipsum ad in accusamu', '2023-04-05 04:45:24', '2023-04-05 04:45:24'),
(3, 3, 'Jhon Deo', 'test@gmail.com', '+8801960000000', 'United States', 'test', 'California', '423432', '1731 Arbor Court Rawlins, WY 82301', '2023-04-10 23:28:49', '2023-04-10 23:28:49'),
(4, 3, 'Neville Valencia', 'cibev@mailinator.com', '+1 (912) 321-1981', 'Liberia', 'Dolor nisi nulla deb', 'Tempore et quo irur', '19380', 'Minima et id dolores', '2023-04-11 00:14:53', '2023-04-11 00:14:53'),
(5, 3, 'Tobias Oneil', 'juheg@mailinator.com', '+1 (695) 824-3125', 'Korea, North', 'Laboris proident qu', 'Officia molestiae ob', '423432', 'Voluptas consequatur', '2023-04-11 00:19:38', '2023-04-11 00:19:38'),
(6, 11, 'Jhone Deo', 'jhonedeo@gmail.com', '+1 (106) 882-8138', 'United States', 'test', 'California', '423432', '7232 Broadway Suite 308, Jackson Heights, 11372, NY, United States', '2023-09-26 22:30:36', '2023-09-26 22:30:36'),
(7, 12, 'Md. Nurnabi Rana', 'mdnurnabirana.cse@gmail.com', '01305592904', 'Bangladesh', 'Chattagram', 'Chattagram', '4313', 'Banshbaria, Sitakunda,Chattagram', '2025-01-25 12:44:38', '2025-01-25 12:44:38');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `description` text NOT NULL,
  `fb_link` text DEFAULT NULL,
  `tw_link` text DEFAULT NULL,
  `insta_link` text DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `banner`, `phone`, `email`, `address`, `description`, `fb_link`, `tw_link`, `insta_link`, `user_id`, `created_at`, `updated_at`, `shop_name`, `status`) VALUES
(1, 'uploads/media_64588c2960e13.jpg', '+880 1305 592904', 'admin@gmail.com', 'Chattragram', '<p>test descdescription&nbsp;<br></p>', 'https://www.facebook.com/', NULL, NULL, 1, '2023-03-20 23:21:13', '2025-06-24 12:03:28', 'Admin Shop', 1),
(2, 'uploads/media_64588c9538ca5.jpg', '12321312', 'vendor@gmail.com', 'Usa', 'is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing', 'https://www.facebook.com/', NULL, NULL, 2, '2023-03-27 22:29:17', '2023-05-07 23:45:57', 'Vendor shop', 1),
(3, 'uploads/media_64588cfc32607.jpg', '+1 (125) 132-4566', 'belij@mailinator.com', 'Iure qui rem quia qu', 'is simply dummy text of the printing and typesetting industry. Lorem \r\nIpsum has been the industry\'s standard dummy text ever since the 1500s, \r\nwhen an unknown printer took a galley of type and scrambled it to make a\r\n type specimen book. It has survived not only five centuries, but also \r\nthe leap into electronic typesetting, remaining essentially unchanged. \r\nIt was popularised in the 1960s with the release of Letraset sheets \r\ncontaining Lorem Ipsum passages, and more recently with desktop \r\npublishing', NULL, NULL, NULL, 6, '2023-04-30 23:27:58', '2023-05-07 23:47:40', 'TopSHop', 1),
(4, 'uploads/media_64588d2172aef.jpg', '23423423412', 'test@gmail.com', 'usa', 'is simply dummy text of the printing and typesetting industry. Lorem \r\nIpsum has been the industry\'s standard dummy text ever since the 1500s, \r\nwhen an unknown printer took a galley of type and scrambled it to make a\r\n type specimen book. It has survived not only five centuries, but also \r\nthe leap into electronic typesetting, remaining essentially unchanged. \r\nIt was popularised in the 1960s with the release of Letraset sheets \r\ncontaining Lorem Ipsum passages, and more recently with desktop \r\npublishing', NULL, NULL, NULL, 7, '2023-05-01 01:06:09', '2023-05-07 23:48:17', 'Daily Need', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_conditions`
--

CREATE TABLE `vendor_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_conditions`
--

INSERT INTO `vendor_conditions` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, '<h3>Vendor Terms and Conditions</h3><p>Lorem Ipsum is simply dummy text of \r\nthe printing and typesetting industry. Lorem Ipsum has been the \r\nindustry\'s standard dummy text ever since the 1500s, when an unknown \r\nprinter took a galley of type and scrambled it to make a type specimen \r\nbook.&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting \r\nindustry. Lorem Ipsum has been the industry\'s standard dummy text ever \r\nsince the 1500s, when an unknown printer took a galley of type and \r\nscrambled it to make a type specimen book.</p><p></p>', '2023-05-01 04:28:03', '2023-05-01 04:32:54');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(10, 12, 3, '2023-04-26 21:16:42', '2023-04-26 21:16:42'),
(11, 20, 3, '2023-11-27 11:16:35', '2023-11-27 11:16:35'),
(12, 13, 3, '2023-12-04 03:04:11', '2023-12-04 03:04:11');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `minimum_amount` double NOT NULL,
  `maximum_amount` double NOT NULL,
  `withdraw_charge` double NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_methods`
--

INSERT INTO `withdraw_methods` (`id`, `name`, `minimum_amount`, `maximum_amount`, `withdraw_charge`, `description`, `created_at`, `updated_at`) VALUES
(2, 'BANK', 100, 1000, 10, '<p>Please provide your Bank Account information :&nbsp;</p>\r\n\r\n<p>Bank Name: Your bank name</p>\r\n\r\n<p><span style=\"background-color:transparent;\">Account Number:&nbsp; Your bank account number</span></p>\r\n\r\n<p>Routing Number: Your bank routing number</p>\r\n\r\n<p>Branch: Your bank branch name</p><p></p>', '2023-09-24 03:16:58', '2023-09-24 03:16:58'),
(3, 'Paypal', 100, 1000, 10, '<p>Please provide your Paypal Email address<br></p>', '2023-09-24 03:19:03', '2023-09-24 03:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_requests`
--

CREATE TABLE `withdraw_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `method` varchar(255) NOT NULL,
  `total_amount` double NOT NULL,
  `withdraw_amount` double NOT NULL,
  `withdraw_charge` double NOT NULL,
  `account_info` text NOT NULL,
  `status` enum('pending','paid','decline') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_requests`
--

INSERT INTO `withdraw_requests` (`id`, `vendor_id`, `method`, `total_amount`, `withdraw_amount`, `withdraw_charge`, `account_info`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'BANK', 100, 90, 10, 'Bank Name: Your bank name\r\nAccount Number:  Your bank account number\r\nRouting Number: Your bank routing number\r\nBranch: Your bank branch name', 'paid', '2023-09-24 22:40:47', '2023-09-25 23:18:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_categories`
--
ALTER TABLE `child_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cod_settings`
--
ALTER TABLE `cod_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_configurations`
--
ALTER TABLE `email_configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `flash_sales`
--
ALTER TABLE `flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sale_items`
--
ALTER TABLE `flash_sale_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_grid_threes`
--
ALTER TABLE `footer_grid_threes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_grid_twos`
--
ALTER TABLE `footer_grid_twos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_infos`
--
ALTER TABLE `footer_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_socials`
--
ALTER TABLE `footer_socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_titles`
--
ALTER TABLE `footer_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page_settings`
--
ALTER TABLE `home_page_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo_settings`
--
ALTER TABLE `logo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `paypal_settings`
--
ALTER TABLE `paypal_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_image_galleries`
--
ALTER TABLE `product_image_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_review_galleries`
--
ALTER TABLE `product_review_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_review_image_galleries`
--
ALTER TABLE `product_review_image_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_varient_items`
--
ALTER TABLE `product_varient_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pusher_settings`
--
ALTER TABLE `pusher_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `razorpay_settings`
--
ALTER TABLE `razorpay_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shipping_rules`
--
ALTER TABLE `shipping_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stripe_settings`
--
ALTER TABLE `stripe_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_conditions`
--
ALTER TABLE `vendor_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdraw_requests_vendor_id_foreign` (`vendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `child_categories`
--
ALTER TABLE `child_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cod_settings`
--
ALTER TABLE `cod_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `email_configurations`
--
ALTER TABLE `email_configurations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_sales`
--
ALTER TABLE `flash_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `flash_sale_items`
--
ALTER TABLE `flash_sale_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `footer_grid_threes`
--
ALTER TABLE `footer_grid_threes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `footer_grid_twos`
--
ALTER TABLE `footer_grid_twos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `footer_infos`
--
ALTER TABLE `footer_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footer_socials`
--
ALTER TABLE `footer_socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `footer_titles`
--
ALTER TABLE `footer_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_page_settings`
--
ALTER TABLE `home_page_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logo_settings`
--
ALTER TABLE `logo_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `paypal_settings`
--
ALTER TABLE `paypal_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `product_image_galleries`
--
ALTER TABLE `product_image_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_review_galleries`
--
ALTER TABLE `product_review_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_review_image_galleries`
--
ALTER TABLE `product_review_image_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_varient_items`
--
ALTER TABLE `product_varient_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pusher_settings`
--
ALTER TABLE `pusher_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `razorpay_settings`
--
ALTER TABLE `razorpay_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_rules`
--
ALTER TABLE `shipping_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `stripe_settings`
--
ALTER TABLE `stripe_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vendor_conditions`
--
ALTER TABLE `vendor_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  ADD CONSTRAINT `withdraw_requests_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
