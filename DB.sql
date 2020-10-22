-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Сен 30 2020 г., 05:12
-- Версия сервера: 5.7.21-20-beget-5.7.21-20-1-log
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ozerova5_family`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--
-- Создание: Июл 17 2020 г., 07:26
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--
-- Создание: Авг 11 2020 г., 19:53
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-06-10 10:52:38', '2020-06-10 07:52:38', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--
-- Создание: Июл 17 2020 г., 07:26
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--
-- Создание: Июл 17 2020 г., 07:26
-- Последнее обновление: Сен 30 2020 г., 01:54
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://xn----dtbfcayavl9a1i.xn--p1ai', 'yes'),
(2, 'home', 'https://xn----dtbfcayavl9a1i.xn--p1ai', 'yes'),
(3, 'blogname', 'Поселок &quot;Семейный&quot;', 'yes'),
(4, 'blogdescription', 'Поселок &quot;Семейный&quot; - строительство каменных домов', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'dev4@e2.group', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:51:\"image-map-pro-wordpress/image-map-pro-wordpress.php\";i:2;s:21:\"safe-svg/safe-svg.php\";i:3;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:121:\"/Users/mihailzavalko/Yandex.Disk.localized/WORK/sites/kpd-stroi.loc/wp-content/plugins/advanced-custom-fields-pro/acf.php\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'kpd-stroi', 'yes'),
(41, 'stylesheet', 'kpd-stroi', 'yes'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '48748', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '9', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1607327558', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'ru_RU', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:8:{i:1601434359;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1601449793;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601452359;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1601452370;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601452373;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601538759;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1601622589;a:1:{s:16:\"wpseo_ryte_fetch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'nonce_key', 'V2mErNpG|yja[}:1gzG;2%O2QQD7flq8(#5I_Uw;38A[cGNj&h5PH<F+0HP{gEqp', 'no'),
(112, 'nonce_salt', '.ikB$:P164`h[ 6-fUXDCGtC=5G1S`;I|{bA(Tf}A$}Q`iq$<N[Ep<7[G:)00sKJ', 'no'),
(113, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1592288904;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(130, 'auth_key', ';2!5>]Yna|r9:!Rgscm,;H?g>U&HxoI/$L`1-Sa~G7Xk0A^uz%S&EmxvD+*O]lXr', 'no'),
(131, 'auth_salt', 'n]vGHa3!vI{o_a:i)IqU9dH<d#7;)ewSAWOd1$d3}(7R?3(XvUe}Dhr}wSBZ*afJ', 'no'),
(132, 'logged_in_key', 'Fb,a8E^?f+ogup!Qx_q,(IG,{I:S5o3Sa#o=9j fGSh){08I}29xxNH+B&P#<@X<', 'no'),
(133, 'logged_in_salt', 'hu>uv+H)r]snzQXr=t(4#YU0tElbeN%HQj@ {Nn+Kbl&h<A>H-VbmRm<O]Py_[U4', 'no'),
(152, 'dismissed_update_core', 'a:1:{s:11:\"5.4.1|ru_RU\";b:1;}', 'no'),
(154, 'recently_activated', 'a:0:{}', 'yes'),
(160, 'acf_version', '5.8.11', 'yes'),
(184, '_transient_health-check-site-status-result', '{\"good\":11,\"recommended\":6,\"critical\":3}', 'yes'),
(213, 'current_theme', 'KPD-STROI', 'yes'),
(214, 'theme_mods_kpd-stroi', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(215, 'theme_switched', '', 'yes'),
(285, 'new_admin_email', 'dev4@e2.group', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(442, 'image-map-pro-wordpress-admin-options', 'a:3:{s:13:\"purchase_code\";s:0:\"\";s:5:\"saves\";a:1:{i:2308;a:2:{s:4:\"json\";s:57701:\"{\\\"id\\\":2308,\\\"editor\\\":{\\\"selected_shape\\\":\\\"poly-9766\\\",\\\"tool\\\":\\\"select\\\",\\\"shapeCounter\\\":{\\\"spots\\\":3,\\\"polys\\\":1,\\\"texts\\\":2}},\\\"general\\\":{\\\"name\\\":\\\"MAP\\\",\\\"shortcode\\\":\\\"map\\\",\\\"width\\\":1920,\\\"height\\\":765,\\\"naturalWidth\\\":1920,\\\"naturalHeight\\\":765},\\\"image\\\":{\\\"url\\\":\\\"https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/07/map.png\\\"},\\\"tooltips\\\":{\\\"tooltip_animation\\\":\\\"grow\\\",\\\"fullscreen_tooltips\\\":\\\"none\\\"},\\\"spots\\\":[{\\\"id\\\":\\\"text-4019\\\",\\\"title\\\":\\\"22\\\",\\\"type\\\":\\\"text\\\",\\\"x\\\":9.8,\\\"y\\\":22,\\\"x_image_background\\\":79.815,\\\"y_image_background\\\":75.134,\\\"text\\\":{\\\"text\\\":\\\"БРОНЬ\\\",\\\"font_size\\\":14,\\\"font_weight\\\":700,\\\"text_color\\\":\\\"#26B04D\\\"},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-403761\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"Text 0\\\"}}}]}}]}}},{\\\"id\\\":\\\"poly-5052\\\",\\\"title\\\":\\\"Polygon 22\\\",\\\"type\\\":\\\"poly\\\",\\\"x\\\":6.858,\\\"y\\\":18.887,\\\"width\\\":8.367,\\\"height\\\":27.772,\\\"x_image_background\\\":6.858,\\\"y_image_background\\\":18.887,\\\"width_image_background\\\":8.367,\\\"height_image_background\\\":27.772,\\\"default_style\\\":{\\\"background_opacity\\\":0,\\\"stroke_color\\\":\\\"#000000\\\",\\\"stroke_opacity\\\":0},\\\"mouseover_style\\\":{\\\"background_color\\\":\\\"#000000\\\",\\\"background_opacity\\\":0.14506740196078433},\\\"tooltip_style\\\":{\\\"border_radius\\\":3,\\\"padding\\\":10,\\\"background_color\\\":\\\"EDF11F\\\",\\\"background_opacity\\\":0.9416666666666667,\\\"width\\\":205,\\\"auto_width\\\":0,\\\"offset_x\\\":0.995234513274335,\\\"offset_y\\\":0.27308764585712386},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-757591\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"11.75 соток\\\",\\\"heading\\\":\\\"h2\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"20\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-865671\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Ширина: 32.6-24.7м.<br>Длина: 41.5-40.8м.\\\"},\\\"font\\\":{\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-935991\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Статус:\\\"},\\\"layout\\\":{\\\"box_model\\\":{\\\"padding\\\":{\\\"bottom\\\":0}}},\\\"font\\\":{\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}},{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"ЗАБРОНИРОВАН\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"18\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}}]}},\\\"points\\\":[{\\\"x\\\":23.1012658227848,\\\"y\\\":0.00008892885691322103},{\\\"x\\\":100,\\\"y\\\":0},{\\\"x\\\":98.73417721518987,\\\"y\\\":100},{\\\"x\\\":0,\\\"y\\\":100}]},{\\\"id\\\":\\\"text-1027\\\",\\\"title\\\":\\\"20\\\",\\\"type\\\":\\\"text\\\",\\\"x\\\":17.2,\\\"y\\\":22,\\\"x_image_background\\\":79.815,\\\"y_image_background\\\":75.134,\\\"text\\\":{\\\"text\\\":\\\"БРОНЬ\\\",\\\"font_size\\\":14,\\\"font_weight\\\":700,\\\"text_color\\\":\\\"#26B04D\\\"},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-403761\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"Text 0\\\"}}}]}}]}}},{\\\"id\\\":\\\"poly-9544\\\",\\\"title\\\":\\\"Polygon 20\\\",\\\"type\\\":\\\"poly\\\",\\\"x\\\":15.845,\\\"y\\\":18.887,\\\"width\\\":6.644,\\\"height\\\":27.639,\\\"x_image_background\\\":16.055,\\\"y_image_background\\\":18.887,\\\"width_image_background\\\":8.367,\\\"height_image_background\\\":27.772,\\\"default_style\\\":{\\\"background_opacity\\\":0,\\\"stroke_color\\\":\\\"#000000\\\",\\\"stroke_opacity\\\":0,\\\"icon_is_pin\\\":0},\\\"mouseover_style\\\":{\\\"background_color\\\":\\\"#000000\\\",\\\"background_opacity\\\":0.14506740196078433},\\\"tooltip_style\\\":{\\\"border_radius\\\":3,\\\"padding\\\":10,\\\"background_color\\\":\\\"EDF11F\\\",\\\"background_opacity\\\":0.9416666666666667,\\\"width\\\":203,\\\"auto_width\\\":0,\\\"offset_x\\\":0.16595039012403845,\\\"offset_y\\\":0.5267361054243791},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-352001\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"10 соток\\\",\\\"heading\\\":\\\"h2\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"20\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\",\\\"text_decoration\\\":\\\"Ширина: 24.5м.<br>Длина: 40.8м.\\\"}}}]}},{\\\"id\\\":\\\"sq-container-368241\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Ширина: 24.5м.<br>Длина: 40.8м.\\\"},\\\"font\\\":{\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-112311\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Статус:\\\"},\\\"layout\\\":{\\\"box_model\\\":{\\\"padding\\\":{\\\"bottom\\\":0}}},\\\"font\\\":{\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}},{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"ЗАБРОНИРОВАН\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"18\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}}]}},\\\"points\\\":[{\\\"x\\\":0.7658475525647918,\\\"y\\\":0.00008935678621853685},{\\\"x\\\":100,\\\"y\\\":0},{\\\"x\\\":97.99952750744939,\\\"y\\\":100},{\\\"x\\\":0,\\\"y\\\":99.28000289446068}]},{\\\"id\\\":\\\"text-6269\\\",\\\"title\\\":\\\"18\\\",\\\"type\\\":\\\"text\\\",\\\"x\\\":24.5,\\\"y\\\":22,\\\"x_image_background\\\":79.815,\\\"y_image_background\\\":75.134,\\\"text\\\":{\\\"text\\\":\\\"БРОНЬ\\\",\\\"font_size\\\":14,\\\"font_weight\\\":700,\\\"text_color\\\":\\\"#26B04D\\\"},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-403761\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"Text 0\\\"}}}]}}]}}},{\\\"id\\\":\\\"poly-1855\\\",\\\"title\\\":\\\"Polygon 18\\\",\\\"type\\\":\\\"poly\\\",\\\"x\\\":23.115,\\\"y\\\":18.887,\\\"width\\\":6.354,\\\"height\\\":27.542,\\\"x_image_background\\\":23.115,\\\"y_image_background\\\":18.887,\\\"width_image_background\\\":6.354,\\\"height_image_background\\\":27.542,\\\"default_style\\\":{\\\"background_opacity\\\":0,\\\"stroke_color\\\":\\\"#000000\\\",\\\"stroke_opacity\\\":0,\\\"icon_is_pin\\\":0},\\\"mouseover_style\\\":{\\\"background_color\\\":\\\"#000000\\\",\\\"background_opacity\\\":0.14506740196078433},\\\"tooltip_style\\\":{\\\"border_radius\\\":3,\\\"padding\\\":10,\\\"background_color\\\":\\\"EDF11F\\\",\\\"background_opacity\\\":0.9416666666666667,\\\"width\\\":203,\\\"auto_width\\\":0,\\\"offset_x\\\":0.16595039012403845,\\\"offset_y\\\":0.5267361054243791},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-109451\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"10 соток\\\",\\\"heading\\\":\\\"h2\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"20\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\",\\\"text_decoration\\\":\\\"Ширина: 24.5м.<br>Длина: 40.8м.\\\"}}}]}},{\\\"id\\\":\\\"sq-container-290151\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Ширина: 24.6м.<br>Длина: 40.8м.\\\"},\\\"font\\\":{\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-483831\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Статус:\\\"},\\\"layout\\\":{\\\"box_model\\\":{\\\"padding\\\":{\\\"bottom\\\":0}}},\\\"font\\\":{\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}},{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"ЗАБРОНИРОВАН\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"18\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}}]}},\\\"points\\\":[{\\\"x\\\":0.7658475525648113,\\\"y\\\":0.00008967149133302375},{\\\"x\\\":100,\\\"y\\\":0},{\\\"x\\\":99.81970638709788,\\\"y\\\":100},{\\\"x\\\":0,\\\"y\\\":99.6296565245806}]},{\\\"id\\\":\\\"text-2762\\\",\\\"title\\\":\\\"16\\\",\\\"type\\\":\\\"text\\\",\\\"x\\\":31.5,\\\"y\\\":22,\\\"x_image_background\\\":79.815,\\\"y_image_background\\\":75.134,\\\"text\\\":{\\\"text\\\":\\\"БРОНЬ\\\",\\\"font_size\\\":14,\\\"font_weight\\\":700,\\\"text_color\\\":\\\"#26B04D\\\"},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-403761\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"Text 0\\\"}}}]}}]}}},{\\\"id\\\":\\\"poly-9466\\\",\\\"title\\\":\\\"Polygon 16\\\",\\\"type\\\":\\\"poly\\\",\\\"x\\\":30.095,\\\"y\\\":19.081,\\\"width\\\":6.528,\\\"height\\\":27.542,\\\"x_image_background\\\":30.095,\\\"y_image_background\\\":19.081,\\\"width_image_background\\\":6.528,\\\"height_image_background\\\":27.542,\\\"default_style\\\":{\\\"background_opacity\\\":0,\\\"stroke_color\\\":\\\"#000000\\\",\\\"stroke_opacity\\\":0,\\\"icon_is_pin\\\":0},\\\"mouseover_style\\\":{\\\"background_color\\\":\\\"#000000\\\",\\\"background_opacity\\\":0.14506740196078433},\\\"tooltip_style\\\":{\\\"border_radius\\\":3,\\\"padding\\\":10,\\\"background_color\\\":\\\"EDF11F\\\",\\\"background_opacity\\\":0.9416666666666667,\\\"width\\\":203,\\\"auto_width\\\":0,\\\"offset_x\\\":0.16595039012403845,\\\"offset_y\\\":0.5267361054243791},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-736651\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"10 соток\\\",\\\"heading\\\":\\\"h2\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"20\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\",\\\"text_decoration\\\":\\\"Ширина: 24.5м.<br>Длина: 40.8м.\\\"}}}]}},{\\\"id\\\":\\\"sq-container-773151\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Ширина: 24.6-24.4м.<br>Длина: 40.8м.\\\"},\\\"font\\\":{\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-68531\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Статус:\\\"},\\\"layout\\\":{\\\"box_model\\\":{\\\"padding\\\":{\\\"bottom\\\":0}}},\\\"font\\\":{\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}},{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"ЗАБРОНИРОВАН\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"18\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}}]}},\\\"points\\\":[{\\\"x\\\":0.7658475525648113,\\\"y\\\":0.00008967149133302375},{\\\"x\\\":100,\\\"y\\\":0},{\\\"x\\\":99.81970638709788,\\\"y\\\":100},{\\\"x\\\":0,\\\"y\\\":99.6296565245806}]},{\\\"id\\\":\\\"text-6292\\\",\\\"title\\\":\\\"14\\\",\\\"type\\\":\\\"text\\\",\\\"x\\\":37.7,\\\"y\\\":22,\\\"x_image_background\\\":79.815,\\\"y_image_background\\\":75.134,\\\"text\\\":{\\\"text\\\":\\\"ПРОДАНО\\\",\\\"font_size\\\":14,\\\"font_weight\\\":700,\\\"text_color\\\":\\\"#D20A0A\\\"},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-403761\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"Text 0\\\"}}}]}}]}}},{\\\"id\\\":\\\"poly-2834\\\",\\\"title\\\":\\\"Polygon 14\\\",\\\"type\\\":\\\"poly\\\",\\\"x\\\":37.191,\\\"y\\\":18.887,\\\"width\\\":6.605,\\\"height\\\":27.542,\\\"x_image_background\\\":37.191,\\\"y_image_background\\\":18.887,\\\"width_image_background\\\":6.605,\\\"height_image_background\\\":27.542,\\\"default_style\\\":{\\\"background_opacity\\\":0,\\\"stroke_color\\\":\\\"#000000\\\",\\\"stroke_opacity\\\":0,\\\"icon_is_pin\\\":0},\\\"mouseover_style\\\":{\\\"background_color\\\":\\\"#000000\\\",\\\"background_opacity\\\":0.14506740196078433},\\\"tooltip\\\":{\\\"enable_tooltip\\\":0},\\\"tooltip_style\\\":{\\\"border_radius\\\":3,\\\"padding\\\":10,\\\"background_color\\\":\\\"D20A0A\\\",\\\"background_opacity\\\":0.9416666666666667,\\\"width\\\":180,\\\"auto_width\\\":0,\\\"offset_x\\\":0.16595039012403845,\\\"offset_y\\\":0.5267361054243791},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-464401\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"10 соток\\\",\\\"heading\\\":\\\"h2\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"20\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\",\\\"text_decoration\\\":\\\"Ширина: 24.5м.<br>Длина: 40.8м.\\\"}}}]}},{\\\"id\\\":\\\"sq-container-867851\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Ширина: 24.4-24.7м.<br>Длина: 40.7м.\\\"},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-819561\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Статус:\\\"},\\\"layout\\\":{\\\"box_model\\\":{\\\"padding\\\":{\\\"bottom\\\":0}}},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}},{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"ПРОДАН\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"18\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\"}}}]}}]}},\\\"points\\\":[{\\\"x\\\":0.7658475525648113,\\\"y\\\":0.00008967149133302375},{\\\"x\\\":100,\\\"y\\\":0},{\\\"x\\\":99.81970638709788,\\\"y\\\":100},{\\\"x\\\":0,\\\"y\\\":99.6296565245806}]},{\\\"id\\\":\\\"text-1728\\\",\\\"title\\\":\\\"12\\\",\\\"type\\\":\\\"text\\\",\\\"x\\\":44.9,\\\"y\\\":22,\\\"x_image_background\\\":79.815,\\\"y_image_background\\\":75.134,\\\"text\\\":{\\\"text\\\":\\\"ПРОДАНО\\\",\\\"font_size\\\":14,\\\"font_weight\\\":700,\\\"text_color\\\":\\\"#D20A0A\\\"},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-403761\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"Text 0\\\"}}}]}}]}}},{\\\"id\\\":\\\"poly-2422\\\",\\\"title\\\":\\\"Polygon 12\\\",\\\"type\\\":\\\"poly\\\",\\\"x\\\":44.344,\\\"y\\\":18.886,\\\"width\\\":6.605,\\\"height\\\":27.542,\\\"x_image_background\\\":44.344,\\\"y_image_background\\\":18.886,\\\"width_image_background\\\":6.605,\\\"height_image_background\\\":27.542,\\\"default_style\\\":{\\\"background_opacity\\\":0,\\\"stroke_color\\\":\\\"#000000\\\",\\\"stroke_opacity\\\":0,\\\"icon_is_pin\\\":0},\\\"mouseover_style\\\":{\\\"background_color\\\":\\\"#000000\\\",\\\"background_opacity\\\":0.14506740196078433},\\\"tooltip\\\":{\\\"enable_tooltip\\\":0},\\\"tooltip_style\\\":{\\\"border_radius\\\":3,\\\"padding\\\":10,\\\"background_color\\\":\\\"D20A0A\\\",\\\"background_opacity\\\":0.9416666666666667,\\\"width\\\":180,\\\"auto_width\\\":0,\\\"offset_x\\\":0.16595039012403845,\\\"offset_y\\\":0.5267361054243791},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-208671\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"10 соток\\\",\\\"heading\\\":\\\"h2\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"20\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\",\\\"text_decoration\\\":\\\"Ширина: 24.5м.<br>Длина: 40.8м.\\\"}}}]}},{\\\"id\\\":\\\"sq-container-626541\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Ширина: 24.6-24.8м.<br>Длина: 40.6м.\\\"},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-308311\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Статус:\\\"},\\\"layout\\\":{\\\"box_model\\\":{\\\"padding\\\":{\\\"bottom\\\":0}}},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}},{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"ПРОДАН\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"18\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\"}}}]}}]}},\\\"points\\\":[{\\\"x\\\":0.7658475525648113,\\\"y\\\":0.00008967149133302375},{\\\"x\\\":100,\\\"y\\\":0},{\\\"x\\\":99.81970638709788,\\\"y\\\":100},{\\\"x\\\":0,\\\"y\\\":99.6296565245806}]},{\\\"id\\\":\\\"text-72\\\",\\\"title\\\":\\\"10\\\",\\\"type\\\":\\\"text\\\",\\\"x\\\":52.1,\\\"y\\\":22,\\\"x_image_background\\\":79.815,\\\"y_image_background\\\":75.134,\\\"text\\\":{\\\"text\\\":\\\"ПРОДАНО\\\",\\\"font_size\\\":14,\\\"font_weight\\\":700,\\\"text_color\\\":\\\"#D20A0A\\\"},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-403761\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"Text 0\\\"}}}]}}]}}},{\\\"id\\\":\\\"poly-2261\\\",\\\"title\\\":\\\"Polygon 10\\\",\\\"type\\\":\\\"poly\\\",\\\"x\\\":51.556,\\\"y\\\":18.886,\\\"width\\\":6.605,\\\"height\\\":27.542,\\\"x_image_background\\\":51.556,\\\"y_image_background\\\":18.886,\\\"width_image_background\\\":6.605,\\\"height_image_background\\\":27.542,\\\"default_style\\\":{\\\"background_opacity\\\":0,\\\"stroke_color\\\":\\\"#000000\\\",\\\"stroke_opacity\\\":0,\\\"icon_is_pin\\\":0},\\\"mouseover_style\\\":{\\\"background_color\\\":\\\"#000000\\\",\\\"background_opacity\\\":0.14506740196078433},\\\"tooltip\\\":{\\\"enable_tooltip\\\":0},\\\"tooltip_style\\\":{\\\"border_radius\\\":3,\\\"padding\\\":10,\\\"background_color\\\":\\\"D20A0A\\\",\\\"background_opacity\\\":0.9416666666666667,\\\"width\\\":159,\\\"auto_width\\\":0,\\\"offset_x\\\":0.16595039012403845,\\\"offset_y\\\":0.5267361054243791},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-197901\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"10 соток\\\",\\\"heading\\\":\\\"h2\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"20\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\",\\\"text_decoration\\\":\\\"Ширина: 24.5м.<br>Длина: 40.8м.\\\"}}}]}},{\\\"id\\\":\\\"sq-container-688721\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Ширина: 24.6м.<br>Длина: 40.6м.\\\"},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-785441\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Статус:\\\"},\\\"layout\\\":{\\\"box_model\\\":{\\\"padding\\\":{\\\"bottom\\\":0}}},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}},{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"ПРОДАН\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"18\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\"}}}]}}]}},\\\"points\\\":[{\\\"x\\\":0.7658475525648113,\\\"y\\\":0.00008967149133302375},{\\\"x\\\":100,\\\"y\\\":0},{\\\"x\\\":99.81970638709788,\\\"y\\\":100},{\\\"x\\\":0,\\\"y\\\":99.6296565245806}]},{\\\"id\\\":\\\"text-341\\\",\\\"title\\\":\\\"8\\\",\\\"type\\\":\\\"text\\\",\\\"x\\\":59.2,\\\"y\\\":22,\\\"x_image_background\\\":79.815,\\\"y_image_background\\\":75.134,\\\"text\\\":{\\\"text\\\":\\\"ПРОДАНО\\\",\\\"font_size\\\":14,\\\"font_weight\\\":700,\\\"text_color\\\":\\\"#D20A0A\\\"},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-403761\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"Text 0\\\"}}}]}}]}}},{\\\"id\\\":\\\"poly-2992\\\",\\\"title\\\":\\\"Polygon 8\\\",\\\"type\\\":\\\"poly\\\",\\\"x\\\":58.652,\\\"y\\\":18.887,\\\"width\\\":6.605,\\\"height\\\":27.542,\\\"x_image_background\\\":58.652,\\\"y_image_background\\\":18.887,\\\"width_image_background\\\":6.605,\\\"height_image_background\\\":27.542,\\\"default_style\\\":{\\\"background_opacity\\\":0,\\\"stroke_color\\\":\\\"#000000\\\",\\\"stroke_opacity\\\":0,\\\"icon_is_pin\\\":0},\\\"mouseover_style\\\":{\\\"background_color\\\":\\\"#000000\\\",\\\"background_opacity\\\":0.14506740196078433},\\\"tooltip\\\":{\\\"enable_tooltip\\\":0},\\\"tooltip_style\\\":{\\\"border_radius\\\":3,\\\"padding\\\":10,\\\"background_color\\\":\\\"D20A0A\\\",\\\"background_opacity\\\":0.9416666666666667,\\\"width\\\":180,\\\"auto_width\\\":0,\\\"offset_x\\\":0.16595039012403845,\\\"offset_y\\\":0.5267361054243791},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-679101\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"10 соток\\\",\\\"heading\\\":\\\"h2\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"20\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\",\\\"text_decoration\\\":\\\"Ширина: 24.5м.<br>Длина: 40.8м.\\\"}}}]}},{\\\"id\\\":\\\"sq-container-237521\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Ширина: 24.8-24.4м.<br>Длина: 40.5м.\\\"},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-393461\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Статус:\\\"},\\\"layout\\\":{\\\"box_model\\\":{\\\"padding\\\":{\\\"bottom\\\":0}}},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}},{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"ПРОДАН\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"18\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\"}}}]}}]}},\\\"points\\\":[{\\\"x\\\":0.7658475525648113,\\\"y\\\":0.00008967149133302375},{\\\"x\\\":100,\\\"y\\\":0},{\\\"x\\\":99.81970638709788,\\\"y\\\":100},{\\\"x\\\":0,\\\"y\\\":99.6296565245806}]},{\\\"id\\\":\\\"text-7749\\\",\\\"title\\\":\\\"6\\\",\\\"type\\\":\\\"text\\\",\\\"x\\\":67.2,\\\"y\\\":22,\\\"x_image_background\\\":79.815,\\\"y_image_background\\\":75.134,\\\"text\\\":{\\\"text\\\":\\\"БРОНЬ\\\",\\\"font_size\\\":14,\\\"font_weight\\\":700,\\\"text_color\\\":\\\"#26B04D\\\"},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-403761\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"Text 0\\\"}}}]}}]}}},{\\\"id\\\":\\\"poly-3984\\\",\\\"title\\\":\\\"Polygon 6\\\",\\\"type\\\":\\\"poly\\\",\\\"x\\\":65.807,\\\"y\\\":18.887,\\\"width\\\":6.586,\\\"height\\\":27.542,\\\"x_image_background\\\":65.807,\\\"y_image_background\\\":18.887,\\\"width_image_background\\\":6.586,\\\"height_image_background\\\":27.542,\\\"default_style\\\":{\\\"background_opacity\\\":0,\\\"stroke_color\\\":\\\"#000000\\\",\\\"stroke_opacity\\\":0,\\\"icon_is_pin\\\":0},\\\"mouseover_style\\\":{\\\"background_color\\\":\\\"#000000\\\",\\\"background_opacity\\\":0.14506740196078433},\\\"tooltip_style\\\":{\\\"border_radius\\\":3,\\\"padding\\\":10,\\\"background_color\\\":\\\"EDF11F\\\",\\\"background_opacity\\\":0.9416666666666667,\\\"width\\\":203,\\\"auto_width\\\":0,\\\"offset_x\\\":0.16595039012403845,\\\"offset_y\\\":0.5267361054243791},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-929831\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"10 соток\\\",\\\"heading\\\":\\\"h2\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"20\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\",\\\"text_decoration\\\":\\\"Ширина: 24.5м.<br>Длина: 40.8м.\\\"}}}]}},{\\\"id\\\":\\\"sq-container-395221\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Ширина: 24.6-24.8м.<br>Длина: 40.5м.\\\"},\\\"font\\\":{\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-849611\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Статус:\\\"},\\\"layout\\\":{\\\"box_model\\\":{\\\"padding\\\":{\\\"bottom\\\":0}}},\\\"font\\\":{\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}},{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"ЗАБРОНИРОВАН\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"18\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}}]}},\\\"points\\\":[{\\\"x\\\":0.7658475525648113,\\\"y\\\":0.00008967149133302375},{\\\"x\\\":100,\\\"y\\\":0},{\\\"x\\\":99.81970638709788,\\\"y\\\":100},{\\\"x\\\":0,\\\"y\\\":99.6296565245806}]},{\\\"id\\\":\\\"text-8532\\\",\\\"title\\\":\\\"4\\\",\\\"type\\\":\\\"text\\\",\\\"x\\\":74.5,\\\"y\\\":22,\\\"x_image_background\\\":79.815,\\\"y_image_background\\\":75.134,\\\"text\\\":{\\\"text\\\":\\\"ПРОДАНО\\\",\\\"font_size\\\":14,\\\"font_weight\\\":700,\\\"text_color\\\":\\\"#D20A0A\\\"},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-403761\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"Text 0\\\"}}}]}}]}}},{\\\"id\\\":\\\"poly-6494\\\",\\\"title\\\":\\\"Polygon 4\\\",\\\"type\\\":\\\"poly\\\",\\\"x\\\":73.134,\\\"y\\\":18.887,\\\"width\\\":8.635,\\\"height\\\":27.542,\\\"x_image_background\\\":73.134,\\\"y_image_background\\\":18.887,\\\"width_image_background\\\":8.635,\\\"height_image_background\\\":27.542,\\\"default_style\\\":{\\\"background_opacity\\\":0,\\\"stroke_color\\\":\\\"#000000\\\",\\\"stroke_opacity\\\":0,\\\"icon_is_pin\\\":0},\\\"mouseover_style\\\":{\\\"background_color\\\":\\\"#000000\\\",\\\"background_opacity\\\":0.14506740196078433},\\\"tooltip\\\":{\\\"enable_tooltip\\\":0},\\\"tooltip_style\\\":{\\\"border_radius\\\":3,\\\"padding\\\":10,\\\"background_color\\\":\\\"D20A0A\\\",\\\"background_opacity\\\":0.9416666666666667,\\\"width\\\":159,\\\"auto_width\\\":0,\\\"offset_x\\\":0.16595039012403845,\\\"offset_y\\\":0.5267361054243791},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-391381\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"13 соток\\\",\\\"heading\\\":\\\"h2\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"20\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\",\\\"text_decoration\\\":\\\"Ширина: 24.5м.<br>Длина: 40.8м.\\\"}}}]}},{\\\"id\\\":\\\"sq-container-375921\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Ширина: 32.1м.<br>Длина: 40.4м.\\\"},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-567621\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Статус:\\\"},\\\"layout\\\":{\\\"box_model\\\":{\\\"padding\\\":{\\\"bottom\\\":0}}},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}},{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"ПРОДАН\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"18\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\"}}}]}}]}},\\\"points\\\":[{\\\"x\\\":0.7658475525648113,\\\"y\\\":0.00008967149133302375},{\\\"x\\\":100,\\\"y\\\":0},{\\\"x\\\":99.81970638709788,\\\"y\\\":100},{\\\"x\\\":0,\\\"y\\\":99.6296565245806}]},{\\\"id\\\":\\\"poly-5656\\\",\\\"title\\\":\\\"Polygon 2\\\",\\\"type\\\":\\\"poly\\\",\\\"x\\\":82.511,\\\"y\\\":18.887,\\\"width\\\":10.452,\\\"height\\\":27.542,\\\"x_image_background\\\":82.511,\\\"y_image_background\\\":18.887,\\\"width_image_background\\\":10.452,\\\"height_image_background\\\":27.542,\\\"default_style\\\":{\\\"background_opacity\\\":0,\\\"stroke_color\\\":\\\"#000000\\\",\\\"stroke_opacity\\\":0,\\\"icon_is_pin\\\":0},\\\"mouseover_style\\\":{\\\"background_color\\\":\\\"#000000\\\",\\\"background_opacity\\\":0.14506740196078433},\\\"tooltip\\\":{\\\"enable_tooltip\\\":0},\\\"tooltip_style\\\":{\\\"border_radius\\\":3,\\\"padding\\\":10,\\\"background_color\\\":\\\"D20A0A\\\",\\\"background_opacity\\\":0.9416666666666667,\\\"width\\\":180,\\\"auto_width\\\":0,\\\"offset_x\\\":0.16595039012403845,\\\"offset_y\\\":0.5267361054243791},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-498451\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"14.63 соток\\\",\\\"heading\\\":\\\"h2\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"20\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\",\\\"text_decoration\\\":\\\"Ширина: 24.5м.<br>Длина: 40.8м.\\\"}}}]}},{\\\"id\\\":\\\"sq-container-951791\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Ширина: 31.8-40.6м.<br>Длина: 40.4-41.2м.\\\"},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-570051\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Статус:\\\"},\\\"layout\\\":{\\\"box_model\\\":{\\\"padding\\\":{\\\"bottom\\\":0}}},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}},{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"ПРОДАН\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"18\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\"}}}]}}]}},\\\"points\\\":[{\\\"x\\\":0.7658475525647714,\\\"y\\\":0.00008967149133302375},{\\\"x\\\":100,\\\"y\\\":0},{\\\"x\\\":78.73283306141856,\\\"y\\\":100},{\\\"x\\\":0,\\\"y\\\":99.6296565245806}]},{\\\"id\\\":\\\"text-5890\\\",\\\"title\\\":\\\"2\\\",\\\"type\\\":\\\"text\\\",\\\"x\\\":84.4,\\\"y\\\":22,\\\"x_image_background\\\":79.815,\\\"y_image_background\\\":75.134,\\\"text\\\":{\\\"text\\\":\\\"ПРОДАНО\\\",\\\"font_size\\\":14,\\\"font_weight\\\":700,\\\"text_color\\\":\\\"#D20A0A\\\"},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-403761\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"Text 0\\\"}}}]}}]}}},{\\\"id\\\":\\\"poly-8511\\\",\\\"title\\\":\\\"Polygon 25\\\",\\\"type\\\":\\\"poly\\\",\\\"x\\\":4.461,\\\"y\\\":53.535,\\\"width\\\":5.969,\\\"height\\\":27.142,\\\"x_image_background\\\":4.461,\\\"y_image_background\\\":53.535,\\\"width_image_background\\\":5.969,\\\"height_image_background\\\":27.093,\\\"default_style\\\":{\\\"background_opacity\\\":0,\\\"stroke_color\\\":\\\"#000000\\\",\\\"stroke_opacity\\\":0},\\\"mouseover_style\\\":{\\\"background_color\\\":\\\"#000000\\\",\\\"background_opacity\\\":0.14506740196078433},\\\"tooltip_style\\\":{\\\"border_radius\\\":3,\\\"padding\\\":10,\\\"background_color\\\":\\\"26B04D\\\",\\\"background_opacity\\\":0.9416666666666667,\\\"position\\\":\\\"bottom\\\",\\\"width\\\":180,\\\"auto_width\\\":0,\\\"offset_x\\\":-0.28102059164733184,\\\"offset_y\\\":-0.3250293586885675},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-982361\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"8.5 соток\\\",\\\"heading\\\":\\\"h2\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"20\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-478921\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Ширина: 16.9-24.6м.<br>Длина: 41.3-41.6м.\\\"},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-271201\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Статус:\\\"},\\\"layout\\\":{\\\"box_model\\\":{\\\"padding\\\":{\\\"bottom\\\":0}}},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}},{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"СВОБОДЕН\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"18\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\"}}}]}}]}},\\\"points\\\":[{\\\"x\\\":31.846449270598516,\\\"y\\\":0.00008876831186370068},{\\\"x\\\":100,\\\"y\\\":0},{\\\"x\\\":99.705864264947,\\\"y\\\":99.81946798319944},{\\\"x\\\":0,\\\"y\\\":100}]},{\\\"id\\\":\\\"poly-2736\\\",\\\"title\\\":\\\"Polygon 23\\\",\\\"type\\\":\\\"poly\\\",\\\"x\\\":11.035,\\\"y\\\":53.535,\\\"width\\\":5.408,\\\"height\\\":27.191,\\\"x_image_background\\\":10.474,\\\"y_image_background\\\":53.535,\\\"width_image_background\\\":5.969,\\\"height_image_background\\\":27.093,\\\"default_style\\\":{\\\"background_opacity\\\":0,\\\"stroke_color\\\":\\\"#000000\\\",\\\"stroke_opacity\\\":0},\\\"mouseover_style\\\":{\\\"background_color\\\":\\\"#000000\\\",\\\"background_opacity\\\":0.14506740196078433},\\\"tooltip_style\\\":{\\\"border_radius\\\":3,\\\"padding\\\":10,\\\"background_color\\\":\\\"26B04D\\\",\\\"background_opacity\\\":0.9416666666666667,\\\"position\\\":\\\"bottom\\\",\\\"width\\\":165,\\\"auto_width\\\":0,\\\"offset_x\\\":-0.28102059164733184,\\\"offset_y\\\":-0.3250293586885675},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-691721\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"8.49 соток\\\",\\\"heading\\\":\\\"h2\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"20\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-301671\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Ширина: 20.8м.<br>Длина: 40.9-41.3м.\\\"},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-401571\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Статус:\\\"},\\\"layout\\\":{\\\"box_model\\\":{\\\"padding\\\":{\\\"bottom\\\":0}}},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}},{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"СВОБОДЕН\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"18\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\"}}}]}}]}},\\\"points\\\":[{\\\"x\\\":1.1818520148303522,\\\"y\\\":0.00008860834543064118},{\\\"x\\\":100,\\\"y\\\":0},{\\\"x\\\":99.67535203355565,\\\"y\\\":99.63958662792837},{\\\"x\\\":0,\\\"y\\\":100}]},{\\\"id\\\":\\\"text-38\\\",\\\"title\\\":\\\"21\\\",\\\"type\\\":\\\"text\\\",\\\"x\\\":18,\\\"y\\\":75.134,\\\"x_image_background\\\":79.815,\\\"y_image_background\\\":75.134,\\\"text\\\":{\\\"text\\\":\\\"БРОНЬ\\\",\\\"font_size\\\":14,\\\"font_weight\\\":700,\\\"text_color\\\":\\\"#26B04D\\\"},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-403761\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"Text 0\\\"}}}]}}]}}},{\\\"id\\\":\\\"poly-8817\\\",\\\"title\\\":\\\"Polygon 21\\\",\\\"type\\\":\\\"poly\\\",\\\"x\\\":17.086,\\\"y\\\":53.535,\\\"width\\\":5.389,\\\"height\\\":27.142,\\\"x_image_background\\\":17.067,\\\"y_image_background\\\":53.535,\\\"width_image_background\\\":5.969,\\\"height_image_background\\\":27.093,\\\"default_style\\\":{\\\"background_opacity\\\":0,\\\"stroke_color\\\":\\\"#000000\\\",\\\"stroke_opacity\\\":0},\\\"mouseover_style\\\":{\\\"background_color\\\":\\\"#000000\\\",\\\"background_opacity\\\":0.14506740196078433},\\\"tooltip_style\\\":{\\\"border_radius\\\":3,\\\"padding\\\":10,\\\"background_color\\\":\\\"EDF11F\\\",\\\"background_opacity\\\":0.9416666666666667,\\\"position\\\":\\\"bottom\\\",\\\"width\\\":205,\\\"auto_width\\\":0,\\\"offset_x\\\":0.047419566898689425,\\\"offset_y\\\":-0.2765026007309359},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-93381\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"8.49 соток\\\",\\\"heading\\\":\\\"h2\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"20\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-287011\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Ширина: 20.7м.<br>Длина: 41м.\\\"},\\\"font\\\":{\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-764901\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Статус:\\\"},\\\"layout\\\":{\\\"box_model\\\":{\\\"padding\\\":{\\\"bottom\\\":0}}},\\\"font\\\":{\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}},{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"ЗАБРОНИРОВАН\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"18\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}}]}},\\\"points\\\":[{\\\"x\\\":0.8334488209691422,\\\"y\\\":0.00008876831186370072},{\\\"x\\\":100,\\\"y\\\":0},{\\\"x\\\":99.67420742205772,\\\"y\\\":99.8194679831995},{\\\"x\\\":0,\\\"y\\\":100}]},{\\\"id\\\":\\\"poly-1658\\\",\\\"title\\\":\\\"Polygon 19\\\",\\\"type\\\":\\\"poly\\\",\\\"x\\\":23.099,\\\"y\\\":53.535,\\\"width\\\":6.375,\\\"height\\\":27.142,\\\"x_image_background\\\":23.099,\\\"y_image_background\\\":53.535,\\\"width_image_background\\\":6.375,\\\"height_image_background\\\":27.142,\\\"default_style\\\":{\\\"background_opacity\\\":0,\\\"stroke_color\\\":\\\"#000000\\\",\\\"stroke_opacity\\\":0},\\\"mouseover_style\\\":{\\\"background_color\\\":\\\"#000000\\\",\\\"background_opacity\\\":0.14506740196078433},\\\"tooltip_style\\\":{\\\"border_radius\\\":3,\\\"padding\\\":10,\\\"background_color\\\":\\\"26B04D\\\",\\\"background_opacity\\\":0.9416666666666667,\\\"position\\\":\\\"bottom\\\",\\\"width\\\":159,\\\"auto_width\\\":0,\\\"offset_x\\\":0.047419566898689425,\\\"offset_y\\\":-0.2765026007309359},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-589741\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"10 соток\\\",\\\"heading\\\":\\\"h2\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"20\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-918411\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Ширина: 24.3м.<br>Длина: 41м.\\\"},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-474371\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Статус:\\\"},\\\"layout\\\":{\\\"box_model\\\":{\\\"padding\\\":{\\\"bottom\\\":0}}},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}},{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"СВОБОДЕН\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"18\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\"}}}]}}]}},\\\"points\\\":[{\\\"x\\\":0.8334488209691422,\\\"y\\\":0.00008876831186370072},{\\\"x\\\":100,\\\"y\\\":0},{\\\"x\\\":99.67420742205772,\\\"y\\\":99.8194679831995},{\\\"x\\\":0,\\\"y\\\":100}]},{\\\"id\\\":\\\"poly-4011\\\",\\\"title\\\":\\\"Polygon 17\\\",\\\"type\\\":\\\"poly\\\",\\\"x\\\":30.04,\\\"y\\\":53.535,\\\"width\\\":6.607,\\\"height\\\":27.142,\\\"x_image_background\\\":30.04,\\\"y_image_background\\\":53.535,\\\"width_image_background\\\":6.607,\\\"height_image_background\\\":27.142,\\\"default_style\\\":{\\\"background_opacity\\\":0,\\\"stroke_color\\\":\\\"#000000\\\",\\\"stroke_opacity\\\":0},\\\"mouseover_style\\\":{\\\"background_color\\\":\\\"#000000\\\",\\\"background_opacity\\\":0.14506740196078433},\\\"tooltip_style\\\":{\\\"border_radius\\\":3,\\\"padding\\\":10,\\\"background_color\\\":\\\"26B04D\\\",\\\"background_opacity\\\":0.9416666666666667,\\\"position\\\":\\\"bottom\\\",\\\"width\\\":159,\\\"auto_width\\\":0,\\\"offset_x\\\":0.047419566898689425,\\\"offset_y\\\":-0.2765026007309359},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-139061\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"10 соток\\\",\\\"heading\\\":\\\"h2\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"20\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-180521\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Ширина: 24.4м.<br>Длина: 41м.\\\"},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-555311\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Статус:\\\"},\\\"layout\\\":{\\\"box_model\\\":{\\\"padding\\\":{\\\"bottom\\\":0}}},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}},{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"СВОБОДЕН\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"18\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\"}}}]}}]}},\\\"points\\\":[{\\\"x\\\":0.8334488209691422,\\\"y\\\":0.00008876831186370072},{\\\"x\\\":100,\\\"y\\\":0},{\\\"x\\\":99.67420742205772,\\\"y\\\":99.8194679831995},{\\\"x\\\":0,\\\"y\\\":100}]},{\\\"id\\\":\\\"poly-8623\\\",\\\"title\\\":\\\"Polygon 15\\\",\\\"type\\\":\\\"poly\\\",\\\"x\\\":37.175,\\\"y\\\":53.535,\\\"width\\\":6.646,\\\"height\\\":27.142,\\\"x_image_background\\\":37.175,\\\"y_image_background\\\":53.535,\\\"width_image_background\\\":6.646,\\\"height_image_background\\\":27.142,\\\"default_style\\\":{\\\"background_opacity\\\":0,\\\"stroke_color\\\":\\\"#000000\\\",\\\"stroke_opacity\\\":0},\\\"mouseover_style\\\":{\\\"background_color\\\":\\\"#000000\\\",\\\"background_opacity\\\":0.14506740196078433},\\\"tooltip_style\\\":{\\\"border_radius\\\":3,\\\"padding\\\":10,\\\"background_color\\\":\\\"26B04D\\\",\\\"background_opacity\\\":0.9416666666666667,\\\"position\\\":\\\"bottom\\\",\\\"width\\\":159,\\\"auto_width\\\":0,\\\"offset_x\\\":0.047419566898689425,\\\"offset_y\\\":-0.2765026007309359},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-826281\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"10 соток\\\",\\\"heading\\\":\\\"h2\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"20\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-650471\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Ширина: 24.4м.<br>Длина: 41м.\\\"},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-817051\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Статус:\\\"},\\\"layout\\\":{\\\"box_model\\\":{\\\"padding\\\":{\\\"bottom\\\":0}}},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}},{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"СВОБОДЕН\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"18\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\"}}}]}}]}},\\\"points\\\":[{\\\"x\\\":0.8334488209691422,\\\"y\\\":0.00008876831186370072},{\\\"x\\\":100,\\\"y\\\":0},{\\\"x\\\":99.67420742205772,\\\"y\\\":99.8194679831995},{\\\"x\\\":0,\\\"y\\\":100}]},{\\\"id\\\":\\\"poly-4265\\\",\\\"title\\\":\\\"Polygon 13\\\",\\\"type\\\":\\\"poly\\\",\\\"x\\\":44.329,\\\"y\\\":53.535,\\\"width\\\":6.646,\\\"height\\\":27.142,\\\"x_image_background\\\":44.329,\\\"y_image_background\\\":53.535,\\\"width_image_background\\\":6.646,\\\"height_image_background\\\":27.142,\\\"default_style\\\":{\\\"background_opacity\\\":0,\\\"stroke_color\\\":\\\"#000000\\\",\\\"stroke_opacity\\\":0},\\\"mouseover_style\\\":{\\\"background_color\\\":\\\"#000000\\\",\\\"background_opacity\\\":0.14506740196078433},\\\"tooltip_style\\\":{\\\"border_radius\\\":3,\\\"padding\\\":10,\\\"background_color\\\":\\\"26B04D\\\",\\\"background_opacity\\\":0.9416666666666667,\\\"position\\\":\\\"bottom\\\",\\\"width\\\":180,\\\"auto_width\\\":0,\\\"offset_x\\\":0.047419566898689425,\\\"offset_y\\\":-0.2765026007309359},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-619781\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"10 соток\\\",\\\"heading\\\":\\\"h2\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"20\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-173951\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Ширина: 24.4м.<br>Длина: 41м.\\\"},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-574991\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Статус:\\\"},\\\"layout\\\":{\\\"box_model\\\":{\\\"padding\\\":{\\\"bottom\\\":0}}},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}},{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"СВОБОДЕН\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"18\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\"}}}]}}]}},\\\"points\\\":[{\\\"x\\\":0.8334488209691422,\\\"y\\\":0.00008876831186370072},{\\\"x\\\":100,\\\"y\\\":0},{\\\"x\\\":99.67420742205772,\\\"y\\\":99.8194679831995},{\\\"x\\\":0,\\\"y\\\":100}]},{\\\"id\\\":\\\"text-9682\\\",\\\"title\\\":\\\"11\\\",\\\"type\\\":\\\"text\\\",\\\"x\\\":53,\\\"y\\\":75.134,\\\"x_image_background\\\":79.815,\\\"y_image_background\\\":75.134,\\\"text\\\":{\\\"text\\\":\\\"БРОНЬ\\\",\\\"font_size\\\":14,\\\"font_weight\\\":700,\\\"text_color\\\":\\\"#26B04D\\\"},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-403761\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"Text 0\\\"}}}]}}]}}},{\\\"id\\\":\\\"poly-4637\\\",\\\"title\\\":\\\"Polygon 11\\\",\\\"type\\\":\\\"poly\\\",\\\"x\\\":51.56,\\\"y\\\":53.535,\\\"width\\\":6.221,\\\"height\\\":27.142,\\\"x_image_background\\\":51.56,\\\"y_image_background\\\":53.535,\\\"width_image_background\\\":6.221,\\\"height_image_background\\\":27.142,\\\"default_style\\\":{\\\"background_opacity\\\":0,\\\"stroke_color\\\":\\\"#000000\\\",\\\"stroke_opacity\\\":0},\\\"mouseover_style\\\":{\\\"background_color\\\":\\\"#000000\\\",\\\"background_opacity\\\":0.14506740196078433},\\\"tooltip_style\\\":{\\\"border_radius\\\":3,\\\"padding\\\":10,\\\"background_color\\\":\\\"EDF11F\\\",\\\"background_opacity\\\":0.9416666666666667,\\\"position\\\":\\\"bottom\\\",\\\"width\\\":205,\\\"auto_width\\\":0,\\\"offset_x\\\":0.047419566898689425,\\\"offset_y\\\":-0.2765026007309359},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-238421\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"10 соток\\\",\\\"heading\\\":\\\"h2\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"20\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-985491\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Ширина: 24.3м.<br>Длина: 41м.\\\"},\\\"font\\\":{\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-319211\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Статус:\\\"},\\\"layout\\\":{\\\"box_model\\\":{\\\"padding\\\":{\\\"bottom\\\":0}}},\\\"font\\\":{\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}},{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"ЗАБРОНИРОВАН\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"18\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}}]}},\\\"points\\\":[{\\\"x\\\":0.8334488209691422,\\\"y\\\":0.00008876831186370072},{\\\"x\\\":100,\\\"y\\\":0},{\\\"x\\\":99.67420742205772,\\\"y\\\":99.8194679831995},{\\\"x\\\":0,\\\"y\\\":100}]},{\\\"id\\\":\\\"poly-7745\\\",\\\"title\\\":\\\"Polygon 9\\\",\\\"type\\\":\\\"poly\\\",\\\"x\\\":58.482,\\\"y\\\":53.535,\\\"width\\\":6.337,\\\"height\\\":27.142,\\\"x_image_background\\\":58.482,\\\"y_image_background\\\":53.535,\\\"width_image_background\\\":6.337,\\\"height_image_background\\\":27.142,\\\"default_style\\\":{\\\"background_opacity\\\":0.00980392156862745,\\\"stroke_color\\\":\\\"#000000\\\",\\\"stroke_opacity\\\":0},\\\"mouseover_style\\\":{\\\"background_color\\\":\\\"#000000\\\",\\\"background_opacity\\\":0.14506740196078433},\\\"tooltip_style\\\":{\\\"border_radius\\\":3,\\\"padding\\\":10,\\\"background_color\\\":\\\"EDF11F\\\",\\\"background_opacity\\\":0.9416666666666667,\\\"position\\\":\\\"bottom\\\",\\\"width\\\":205,\\\"auto_width\\\":0,\\\"offset_x\\\":0.047419566898689425,\\\"offset_y\\\":-0.2765026007309359},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-181191\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"10 соток\\\",\\\"heading\\\":\\\"h2\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"20\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-379211\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Ширина: 24.4м.<br>Длина: 41м.\\\"},\\\"font\\\":{\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-598541\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Статус:\\\"},\\\"layout\\\":{\\\"box_model\\\":{\\\"padding\\\":{\\\"bottom\\\":0}}},\\\"font\\\":{\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}},{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"ЗАБРОНИРОВАН\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"18\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}}]}},\\\"points\\\":[{\\\"x\\\":0.8334488209691422,\\\"y\\\":0.00008876831186370072},{\\\"x\\\":100,\\\"y\\\":0},{\\\"x\\\":99.67420742205772,\\\"y\\\":99.8194679831995},{\\\"x\\\":0,\\\"y\\\":100}]},{\\\"id\\\":\\\"poly-9766\\\",\\\"title\\\":\\\"Polygon 7\\\",\\\"type\\\":\\\"poly\\\",\\\"x\\\":65.539,\\\"y\\\":53.535,\\\"width\\\":6.376,\\\"height\\\":27.142,\\\"x_image_background\\\":65.539,\\\"y_image_background\\\":53.535,\\\"width_image_background\\\":6.376,\\\"height_image_background\\\":27.142,\\\"default_style\\\":{\\\"background_opacity\\\":0,\\\"stroke_color\\\":\\\"#000000\\\",\\\"stroke_opacity\\\":0},\\\"mouseover_style\\\":{\\\"background_color\\\":\\\"#000000\\\",\\\"background_opacity\\\":0.14506740196078433},\\\"tooltip_style\\\":{\\\"border_radius\\\":3,\\\"padding\\\":10,\\\"background_color\\\":\\\"26B04D\\\",\\\"background_opacity\\\":0.9416666666666667,\\\"position\\\":\\\"bottom\\\",\\\"width\\\":180,\\\"auto_width\\\":0,\\\"offset_x\\\":0.047419566898689425,\\\"offset_y\\\":-0.2765026007309359},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-119801\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"10 соток\\\",\\\"heading\\\":\\\"h2\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"20\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-509711\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Ширина: 24.4м.<br>Длина: 41м.\\\"},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-284721\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Статус:\\\"},\\\"layout\\\":{\\\"box_model\\\":{\\\"padding\\\":{\\\"bottom\\\":0}}},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}},{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"СВОБОДЕН\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"18\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\"}}}]}}]}},\\\"points\\\":[{\\\"x\\\":0.8334488209691422,\\\"y\\\":0.00008876831186370072},{\\\"x\\\":100,\\\"y\\\":0},{\\\"x\\\":99.67420742205772,\\\"y\\\":99.8194679831995},{\\\"x\\\":0,\\\"y\\\":100}]},{\\\"id\\\":\\\"text-8106\\\",\\\"title\\\":\\\"5\\\",\\\"type\\\":\\\"text\\\",\\\"x\\\":73.5,\\\"y\\\":75.134,\\\"x_image_background\\\":79.815,\\\"y_image_background\\\":75.134,\\\"text\\\":{\\\"text\\\":\\\"БРОНЬ\\\",\\\"font_size\\\":14,\\\"font_weight\\\":700,\\\"text_color\\\":\\\"#26B04D\\\"},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-403761\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"Text 0\\\"}}}]}}]}}},{\\\"id\\\":\\\"poly-3797\\\",\\\"title\\\":\\\"Polygon 5\\\",\\\"type\\\":\\\"poly\\\",\\\"x\\\":72.634,\\\"y\\\":53.535,\\\"width\\\":5.139,\\\"height\\\":27.142,\\\"x_image_background\\\":72.634,\\\"y_image_background\\\":53.535,\\\"width_image_background\\\":5.139,\\\"height_image_background\\\":27.142,\\\"default_style\\\":{\\\"background_opacity\\\":0,\\\"stroke_color\\\":\\\"#000000\\\",\\\"stroke_opacity\\\":0},\\\"mouseover_style\\\":{\\\"background_color\\\":\\\"#000000\\\",\\\"background_opacity\\\":0.14506740196078433},\\\"tooltip_style\\\":{\\\"border_radius\\\":3,\\\"padding\\\":10,\\\"background_color\\\":\\\"EDF11F\\\",\\\"background_opacity\\\":0.9416666666666667,\\\"position\\\":\\\"bottom\\\",\\\"width\\\":205,\\\"auto_width\\\":0,\\\"offset_x\\\":0.047419566898689425,\\\"offset_y\\\":-0.2765026007309359},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-316381\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"8.2 соток\\\",\\\"heading\\\":\\\"h2\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"20\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-728951\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Ширина: 19.9-20.1м.<br>Длина: 41м.\\\"},\\\"font\\\":{\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-669321\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Статус:\\\"},\\\"layout\\\":{\\\"box_model\\\":{\\\"padding\\\":{\\\"bottom\\\":0}}},\\\"font\\\":{\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}},{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"ЗАБРОНИРОВАН\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"18\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}}]}},\\\"points\\\":[{\\\"x\\\":0.8334488209691422,\\\"y\\\":0.00008876831186370072},{\\\"x\\\":100,\\\"y\\\":0},{\\\"x\\\":99.67420742205772,\\\"y\\\":99.8194679831995},{\\\"x\\\":0,\\\"y\\\":100}]},{\\\"id\\\":\\\"text-3680\\\",\\\"title\\\":\\\"3\\\",\\\"type\\\":\\\"text\\\",\\\"x\\\":78.55,\\\"y\\\":55,\\\"x_image_background\\\":79.815,\\\"y_image_background\\\":75.134,\\\"text\\\":{\\\"text\\\":\\\"ПРОДАНО\\\",\\\"font_size\\\":14,\\\"font_weight\\\":700,\\\"text_color\\\":\\\"#D20A0A\\\"},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-403761\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"Text 0\\\"}}}]}}]}}},{\\\"id\\\":\\\"poly-5582\\\",\\\"title\\\":\\\"Polygon 3\\\",\\\"type\\\":\\\"poly\\\",\\\"x\\\":78.558,\\\"y\\\":53.535,\\\"width\\\":5.158,\\\"height\\\":27.142,\\\"x_image_background\\\":78.558,\\\"y_image_background\\\":53.535,\\\"width_image_background\\\":5.158,\\\"height_image_background\\\":27.142,\\\"default_style\\\":{\\\"background_opacity\\\":0,\\\"stroke_color\\\":\\\"#000000\\\",\\\"stroke_opacity\\\":0},\\\"mouseover_style\\\":{\\\"background_color\\\":\\\"#000000\\\",\\\"background_opacity\\\":0.14506740196078433},\\\"tooltip\\\":{\\\"enable_tooltip\\\":0},\\\"tooltip_style\\\":{\\\"border_radius\\\":3,\\\"padding\\\":10,\\\"background_color\\\":\\\"EDF11F\\\",\\\"background_opacity\\\":0.9416666666666667,\\\"position\\\":\\\"bottom\\\",\\\"width\\\":203,\\\"auto_width\\\":0,\\\"offset_x\\\":0.047419566898689425,\\\"offset_y\\\":-0.2765026007309359},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-565211\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"8.2 соток\\\",\\\"heading\\\":\\\"h2\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"20\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-854901\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Ширина: 20м.<br>Длина: 41м.\\\"},\\\"font\\\":{\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-395101\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Статус:\\\"},\\\"layout\\\":{\\\"box_model\\\":{\\\"padding\\\":{\\\"bottom\\\":0}}},\\\"font\\\":{\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}},{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"ЗАБРОНИРОВАН\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"18\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_color\\\":\\\"#000000\\\",\\\"text_align\\\":\\\"center\\\"}}}]}}]}},\\\"points\\\":[{\\\"x\\\":0.8334488209691422,\\\"y\\\":0.00008876831186370072},{\\\"x\\\":100,\\\"y\\\":0},{\\\"x\\\":99.67420742205772,\\\"y\\\":99.8194679831995},{\\\"x\\\":0,\\\"y\\\":100}]},{\\\"id\\\":\\\"text-3633\\\",\\\"title\\\":\\\"1\\\",\\\"type\\\":\\\"text\\\",\\\"x\\\":84.7,\\\"y\\\":55,\\\"x_image_background\\\":79.815,\\\"y_image_background\\\":75.134,\\\"text\\\":{\\\"text\\\":\\\"ПРОДАНО\\\",\\\"font_size\\\":14,\\\"font_weight\\\":700,\\\"text_color\\\":\\\"#D20A0A\\\"},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-403761\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"Text 0\\\"}}}]}}]}}},{\\\"id\\\":\\\"poly-4635\\\",\\\"title\\\":\\\"Polygon 1\\\",\\\"type\\\":\\\"poly\\\",\\\"x\\\":84.252,\\\"y\\\":53.536,\\\"width\\\":5.987,\\\"height\\\":27.105,\\\"x_image_background\\\":84.252,\\\"y_image_background\\\":53.536,\\\"width_image_background\\\":5.987,\\\"height_image_background\\\":27.154,\\\"default_style\\\":{\\\"background_opacity\\\":0,\\\"stroke_color\\\":\\\"#000000\\\",\\\"stroke_opacity\\\":0,\\\"icon_is_pin\\\":0},\\\"mouseover_style\\\":{\\\"background_color\\\":\\\"#000000\\\",\\\"background_opacity\\\":0.14506740196078433},\\\"tooltip\\\":{\\\"enable_tooltip\\\":0},\\\"tooltip_style\\\":{\\\"border_radius\\\":3,\\\"padding\\\":10,\\\"background_color\\\":\\\"26B04D\\\",\\\"background_opacity\\\":0.9416666666666667,\\\"position\\\":\\\"bottom\\\",\\\"width\\\":180,\\\"auto_width\\\":0,\\\"offset_x\\\":-0.9944124129930287,\\\"offset_y\\\":-0.5195314589873163},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-108521\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"8.16 соток\\\",\\\"heading\\\":\\\"h2\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"20\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\",\\\"text_decoration\\\":\\\"Ширина: 24.5м.<br>Длина: 40.8м.\\\"}}}]}},{\\\"id\\\":\\\"sq-container-763001\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Ширина: 15.7-24.1м.<br>Длина: 41-41.8м.\\\"},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}}]}},{\\\"id\\\":\\\"sq-container-927321\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Paragraph\\\",\\\"iconClass\\\":\\\"fa fa-paragraph\\\"},\\\"options\\\":{\\\"text\\\":{\\\"text\\\":\\\"Статус:\\\"},\\\"layout\\\":{\\\"box_model\\\":{\\\"padding\\\":{\\\"bottom\\\":0}}},\\\"font\\\":{\\\"text_align\\\":\\\"center\\\"}}},{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"СВОБОДЕН\\\"},\\\"font\\\":{\\\"font_size\\\":\\\"18\\\",\\\"font_weight\\\":\\\"bold\\\",\\\"text_align\\\":\\\"center\\\"}}}]}}]}},\\\"points\\\":[{\\\"x\\\":0.7658475525648881,\\\"y\\\":0.000089833598056113},{\\\"x\\\":100,\\\"y\\\":0},{\\\"x\\\":64.61008554193339,\\\"y\\\":100},{\\\"x\\\":0,\\\"y\\\":99.8097654775304}]},{\\\"id\\\":\\\"text-1257\\\",\\\"title\\\":\\\"9\\\",\\\"type\\\":\\\"text\\\",\\\"x\\\":60,\\\"y\\\":75.134,\\\"x_image_background\\\":79.815,\\\"y_image_background\\\":75.134,\\\"text\\\":{\\\"text\\\":\\\"БРОНЬ\\\",\\\"font_size\\\":14,\\\"font_weight\\\":700,\\\"text_color\\\":\\\"#26B04D\\\"},\\\"tooltip_content\\\":{\\\"squares_settings\\\":{\\\"containers\\\":[{\\\"id\\\":\\\"sq-container-403761\\\",\\\"settings\\\":{\\\"elements\\\":[{\\\"settings\\\":{\\\"name\\\":\\\"Heading\\\",\\\"iconClass\\\":\\\"fa fa-header\\\"},\\\"options\\\":{\\\"heading\\\":{\\\"text\\\":\\\"Text 0\\\"}}}]}}]}}}]}\";s:4:\"meta\";a:2:{s:4:\"name\";s:3:\"MAP\";s:9:\"shortcode\";s:3:\"map\";}}}s:12:\"last_save_id\";s:4:\"2308\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(762, 'secure_auth_key', 'prrGucOs-YDR43:~^^}:5A#`VKR]}1QE,1vR=u3DRMaO@s%wY|R>~):h%0h9S0NK', 'no'),
(763, 'secure_auth_salt', 'G>28VOa:kRb2p=oPQXZZ.&(,DC[~o1rvlj,aU<aUuzL$GcHdrgTl6/P{$PXaQy[T', 'no'),
(932, 'wpseo', 'a:30:{s:8:\"tracking\";b:0;s:22:\"license_server_version\";s:1:\"2\";s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:25:\"ignore_indexation_warning\";b:0;s:29:\"indexation_warning_hide_until\";b:0;s:18:\"indexation_started\";b:0;s:28:\"indexables_indexation_reason\";s:0:\"\";s:31:\"indexables_indexation_completed\";b:1;s:7:\"version\";s:4:\"15.0\";s:16:\"previous_version\";s:4:\"14.9\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1595574589;s:13:\"myyoast-oauth\";b:0;}', 'yes'),
(933, 'wpseo_titles', 'a:70:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:45:\"%%name%%, Автор в %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:64:\"Вы искали %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:57:\"Страница не найдена %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:84:\"Сообщение %%POSTLINK%% появились сначала на %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:54:\"Ошибка 404: страница не найдена\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:19:\"Архивы для\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:31:\"Главная страница\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:17:\"Вы искали\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:14:\"person_logo_id\";i:0;s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:15:\"company_logo_id\";i:0;s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:18:\"title-tax-category\";s:57:\"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:57:\"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:57:\"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;}', 'yes'),
(934, 'wpseo_social', 'a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(935, 'wpseo_flush_rewrite', '1', 'yes'),
(936, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:4:\"15.0\";}', 'yes'),
(937, '_transient_timeout_wpseo_link_table_inaccessible', '1627110593', 'no'),
(938, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(939, '_transient_timeout_wpseo_meta_table_inaccessible', '1627110593', 'no'),
(940, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(949, 'wpseo_ryte', 'a:2:{s:6:\"status\";i:1;s:10:\"last_fetch\";i:1601019427;}', 'yes'),
(1663, 'disallowed_keys', '', 'no'),
(1664, 'comment_previously_approved', '1', 'yes'),
(1665, 'auto_plugin_theme_update_emails', 'a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.1\";}', 'no'),
(1666, 'finished_updating_comment_type', '1', 'yes'),
(1667, 'db_upgraded', '', 'yes'),
(1670, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:13:\"dev4@e2.group\";s:7:\"version\";s:5:\"5.5.1\";s:9:\"timestamp\";i:1598990819;}', 'no'),
(1690, 'can_compress_scripts', '1', 'no'),
(3402, 'rewrite_rules', 'a:100:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=9&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(3416, '_transient_timeout_acf_plugin_updates', '1601582700', 'no'),
(3417, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.5.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.8.11\";}}', 'no'),
(3418, '_site_transient_timeout_theme_roots', '1601411700', 'no'),
(3419, '_site_transient_theme_roots', 'a:2:{s:9:\"kpd-stroi\";s:7:\"/themes\";s:14:\"kpd-stroi_v0.1\";s:7:\"/themes\";}', 'no'),
(3421, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.5.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1601409905;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}', 'no'),
(3422, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1601409906;s:7:\"checked\";a:2:{s:9:\"kpd-stroi\";s:3:\"1.0\";s:14:\"kpd-stroi_v0.1\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(3423, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1601409907;s:7:\"checked\";a:4:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.8.11\";s:51:\"image-map-pro-wordpress/image-map-pro-wordpress.php\";s:5:\"5.3.0\";s:21:\"safe-svg/safe-svg.php\";s:5:\"1.9.9\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"15.0\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.5.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:21:\"safe-svg/safe-svg.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/safe-svg\";s:4:\"slug\";s:8:\"safe-svg\";s:6:\"plugin\";s:21:\"safe-svg/safe-svg.php\";s:11:\"new_version\";s:5:\"1.9.9\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/safe-svg/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/safe-svg.1.9.9.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:61:\"https://ps.w.org/safe-svg/assets/icon-256x256.png?rev=1706191\";s:2:\"1x\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=1706191\";s:3:\"svg\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=1706191\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/safe-svg/assets/banner-1544x500.png?rev=1706191\";s:2:\"1x\";s:63:\"https://ps.w.org/safe-svg/assets/banner-772x250.png?rev=1706191\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"15.0\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.15.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=2363699\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--
-- Создание: Июл 17 2020 г., 07:26
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(10, 9, '_edit_lock', '1595575572:1'),
(11, 13, '_edit_last', '1'),
(12, 13, '_edit_lock', '1595575312:1'),
(13, 19, '_wp_attached_file', '2020/06/1.jpg'),
(14, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:13:\"2020/06/1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:14:\"1-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:13:\"1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 20, '_wp_attached_file', '2020/06/2.jpg'),
(16, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:705;s:4:\"file\";s:13:\"2020/06/2.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"2-768x541.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:541;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:13:\"2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 21, '_wp_attached_file', '2020/06/3.jpg'),
(18, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:705;s:4:\"file\";s:13:\"2020/06/3.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"3-768x541.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:541;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:13:\"3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 9, '_edit_last', '1'),
(20, 9, 'slider_text', 'Современный коттеджный Поселок'),
(21, 9, '_slider_text', 'field_5eeaf8b348b95'),
(22, 9, 'slider_head', '«Семейный»'),
(23, 9, '_slider_head', 'field_5eeaf90148b96'),
(24, 9, 'slider_bottom_text', '(с. Тополево, 15 минут от города, 26 домов)'),
(25, 9, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(26, 9, 'slider_imgs_0_slider_img', '19'),
(27, 9, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(28, 9, 'slider_imgs_1_slider_img', '20'),
(29, 9, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(30, 9, 'slider_imgs_2_slider_img', '21'),
(31, 9, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(32, 9, 'slider_imgs', '3'),
(33, 9, '_slider_imgs', 'field_5eeaf9e56adb8'),
(34, 22, 'slider_text', 'Современный коттеджный Поселок'),
(35, 22, '_slider_text', 'field_5eeaf8b348b95'),
(36, 22, 'slider_head', '«Семейный»'),
(37, 22, '_slider_head', 'field_5eeaf90148b96'),
(38, 22, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(39, 22, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(40, 22, 'slider_imgs_0_slider_img', '19'),
(41, 22, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(42, 22, 'slider_imgs_1_slider_img', '20'),
(43, 22, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(44, 22, 'slider_imgs_2_slider_img', '21'),
(45, 22, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(46, 22, 'slider_imgs', '3'),
(47, 22, '_slider_imgs', 'field_5eeaf9e56adb8'),
(48, 23, 'slider_text', 'Современный коттеджный Поселок'),
(49, 23, '_slider_text', 'field_5eeaf8b348b95'),
(50, 23, 'slider_head', '«Семейный»'),
(51, 23, '_slider_head', 'field_5eeaf90148b96'),
(52, 23, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(53, 23, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(54, 23, 'slider_imgs_0_slider_img', '19'),
(55, 23, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(56, 23, 'slider_imgs_1_slider_img', '20'),
(57, 23, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(58, 23, 'slider_imgs_2_slider_img', '21'),
(59, 23, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(60, 23, 'slider_imgs', '3'),
(61, 23, '_slider_imgs', 'field_5eeaf9e56adb8'),
(62, 24, 'slider_text', 'Современный коттеджный Поселок'),
(63, 24, '_slider_text', 'field_5eeaf8b348b95'),
(64, 24, 'slider_head', '«Семейный»'),
(65, 24, '_slider_head', 'field_5eeaf90148b96'),
(66, 24, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(67, 24, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(68, 24, 'slider_imgs_0_slider_img', '19'),
(69, 24, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(70, 24, 'slider_imgs_1_slider_img', '20'),
(71, 24, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(72, 24, 'slider_imgs_2_slider_img', '21'),
(73, 24, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(74, 24, 'slider_imgs', '3'),
(75, 24, '_slider_imgs', 'field_5eeaf9e56adb8'),
(76, 9, 'head_our_homes', 'Наши дома'),
(77, 9, '_head_our_homes', 'field_5eeb17ccfd87e'),
(78, 9, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(79, 9, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(80, 9, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(81, 9, '_text_our_homes', 'field_5eeb181afd880'),
(82, 9, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(83, 9, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(84, 29, 'slider_text', 'Современный коттеджный Поселок'),
(85, 29, '_slider_text', 'field_5eeaf8b348b95'),
(86, 29, 'slider_head', '«Семейный»'),
(87, 29, '_slider_head', 'field_5eeaf90148b96'),
(88, 29, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(89, 29, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(90, 29, 'slider_imgs_0_slider_img', '19'),
(91, 29, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(92, 29, 'slider_imgs_1_slider_img', '20'),
(93, 29, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(94, 29, 'slider_imgs_2_slider_img', '21'),
(95, 29, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(96, 29, 'slider_imgs', '3'),
(97, 29, '_slider_imgs', 'field_5eeaf9e56adb8'),
(98, 29, 'head_our_homes', 'Наши дома'),
(99, 29, '_head_our_homes', 'field_5eeb17ccfd87e'),
(100, 29, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(101, 29, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(102, 29, 'text_our_homes', 'ООО «Завод КПД-100» - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(103, 29, '_text_our_homes', 'field_5eeb181afd880'),
(104, 29, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(105, 29, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(106, 30, 'slider_text', 'Современный коттеджный Поселок'),
(107, 30, '_slider_text', 'field_5eeaf8b348b95'),
(108, 30, 'slider_head', '«Семейный»'),
(109, 30, '_slider_head', 'field_5eeaf90148b96'),
(110, 30, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(111, 30, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(112, 30, 'slider_imgs_0_slider_img', '19'),
(113, 30, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(114, 30, 'slider_imgs_1_slider_img', '20'),
(115, 30, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(116, 30, 'slider_imgs_2_slider_img', '21'),
(117, 30, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(118, 30, 'slider_imgs', '3'),
(119, 30, '_slider_imgs', 'field_5eeaf9e56adb8'),
(120, 30, 'head_our_homes', 'Наши дома'),
(121, 30, '_head_our_homes', 'field_5eeb17ccfd87e'),
(122, 30, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(123, 30, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(124, 30, 'text_our_homes', 'ООО «Завод КПД-100» - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(125, 30, '_text_our_homes', 'field_5eeb181afd880'),
(126, 30, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(127, 30, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(128, 31, 'slider_text', 'Современный коттеджный Поселок'),
(129, 31, '_slider_text', 'field_5eeaf8b348b95'),
(130, 31, 'slider_head', '«Семейный»'),
(131, 31, '_slider_head', 'field_5eeaf90148b96'),
(132, 31, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(133, 31, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(134, 31, 'slider_imgs_0_slider_img', '19'),
(135, 31, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(136, 31, 'slider_imgs_1_slider_img', '20'),
(137, 31, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(138, 31, 'slider_imgs_2_slider_img', '21'),
(139, 31, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(140, 31, 'slider_imgs', '3'),
(141, 31, '_slider_imgs', 'field_5eeaf9e56adb8'),
(142, 31, 'head_our_homes', 'Наши дома'),
(143, 31, '_head_our_homes', 'field_5eeb17ccfd87e'),
(144, 31, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(145, 31, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(146, 31, 'text_our_homes', '<a href=\"#\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(147, 31, '_text_our_homes', 'field_5eeb181afd880'),
(148, 31, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(149, 31, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(150, 32, 'slider_text', 'Современный коттеджный Поселок'),
(151, 32, '_slider_text', 'field_5eeaf8b348b95'),
(152, 32, 'slider_head', '«Семейный»'),
(153, 32, '_slider_head', 'field_5eeaf90148b96'),
(154, 32, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(155, 32, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(156, 32, 'slider_imgs_0_slider_img', '19'),
(157, 32, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(158, 32, 'slider_imgs_1_slider_img', '20'),
(159, 32, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(160, 32, 'slider_imgs_2_slider_img', '21'),
(161, 32, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(162, 32, 'slider_imgs', '3'),
(163, 32, '_slider_imgs', 'field_5eeaf9e56adb8'),
(164, 32, 'head_our_homes', 'Наши дома'),
(165, 32, '_head_our_homes', 'field_5eeb17ccfd87e'),
(166, 32, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(167, 32, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(168, 32, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(169, 32, '_text_our_homes', 'field_5eeb181afd880'),
(170, 32, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(171, 32, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(172, 9, 'contact_phone', '+7 (4212) 69-81-00'),
(173, 9, '_contact_phone', 'field_5eebffb6b1a86'),
(174, 9, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(175, 9, '_address', 'field_5eebffe6b1a87'),
(176, 9, 'instagram_links', '2'),
(177, 9, '_instagram_links', 'field_5eec001eb1a88'),
(178, 38, 'slider_text', 'Современный коттеджный Поселок'),
(179, 38, '_slider_text', 'field_5eeaf8b348b95'),
(180, 38, 'slider_head', '«Семейный»'),
(181, 38, '_slider_head', 'field_5eeaf90148b96'),
(182, 38, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(183, 38, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(184, 38, 'slider_imgs_0_slider_img', '19'),
(185, 38, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(186, 38, 'slider_imgs_1_slider_img', '20'),
(187, 38, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(188, 38, 'slider_imgs_2_slider_img', '21'),
(189, 38, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(190, 38, 'slider_imgs', '3'),
(191, 38, '_slider_imgs', 'field_5eeaf9e56adb8'),
(192, 38, 'head_our_homes', 'Наши дома'),
(193, 38, '_head_our_homes', 'field_5eeb17ccfd87e'),
(194, 38, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(195, 38, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(196, 38, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(197, 38, '_text_our_homes', 'field_5eeb181afd880'),
(198, 38, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(199, 38, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(200, 38, 'contact_phone', '+7 (4212) 69-81-00'),
(201, 38, '_contact_phone', 'field_5eebffb6b1a86'),
(202, 38, 'address', ''),
(203, 38, '_address', 'field_5eebffe6b1a87'),
(204, 38, 'instagram_links', ''),
(205, 38, '_instagram_links', 'field_5eec001eb1a88'),
(206, 9, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(207, 9, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(208, 9, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(209, 9, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(210, 9, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(211, 9, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(212, 9, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(213, 9, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(214, 39, 'slider_text', 'Современный коттеджный Поселок'),
(215, 39, '_slider_text', 'field_5eeaf8b348b95'),
(216, 39, 'slider_head', '«Семейный»'),
(217, 39, '_slider_head', 'field_5eeaf90148b96'),
(218, 39, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(219, 39, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(220, 39, 'slider_imgs_0_slider_img', '19'),
(221, 39, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(222, 39, 'slider_imgs_1_slider_img', '20'),
(223, 39, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(224, 39, 'slider_imgs_2_slider_img', '21'),
(225, 39, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(226, 39, 'slider_imgs', '3'),
(227, 39, '_slider_imgs', 'field_5eeaf9e56adb8'),
(228, 39, 'head_our_homes', 'Наши дома'),
(229, 39, '_head_our_homes', 'field_5eeb17ccfd87e'),
(230, 39, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(231, 39, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(232, 39, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(233, 39, '_text_our_homes', 'field_5eeb181afd880'),
(234, 39, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(235, 39, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(236, 39, 'contact_phone', '+7 (4212) 69-81-00'),
(237, 39, '_contact_phone', 'field_5eebffb6b1a86'),
(238, 39, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(239, 39, '_address', 'field_5eebffe6b1a87'),
(240, 39, 'instagram_links', '2'),
(241, 39, '_instagram_links', 'field_5eec001eb1a88'),
(242, 39, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(243, 39, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(244, 39, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(245, 39, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(246, 39, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(247, 39, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(248, 39, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(249, 39, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(250, 40, 'slider_text', 'Современный коттеджный Поселок'),
(251, 40, '_slider_text', 'field_5eeaf8b348b95'),
(252, 40, 'slider_head', '«Семейный»'),
(253, 40, '_slider_head', 'field_5eeaf90148b96'),
(254, 40, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(255, 40, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(256, 40, 'slider_imgs_0_slider_img', '19'),
(257, 40, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(258, 40, 'slider_imgs_1_slider_img', '20'),
(259, 40, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(260, 40, 'slider_imgs_2_slider_img', '21'),
(261, 40, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(262, 40, 'slider_imgs', '3'),
(263, 40, '_slider_imgs', 'field_5eeaf9e56adb8'),
(264, 40, 'head_our_homes', 'Наши дома'),
(265, 40, '_head_our_homes', 'field_5eeb17ccfd87e'),
(266, 40, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(267, 40, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(268, 40, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(269, 40, '_text_our_homes', 'field_5eeb181afd880'),
(270, 40, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(271, 40, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(272, 40, 'contact_phone', '+7 (4212) 69-81-00'),
(273, 40, '_contact_phone', 'field_5eebffb6b1a86'),
(274, 40, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(275, 40, '_address', 'field_5eebffe6b1a87'),
(276, 40, 'instagram_links', '2'),
(277, 40, '_instagram_links', 'field_5eec001eb1a88'),
(278, 40, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(279, 40, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(280, 40, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(281, 40, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(282, 40, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(283, 40, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(284, 40, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(285, 40, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(286, 41, 'slider_text', 'Современный коттеджный Поселок'),
(287, 41, '_slider_text', 'field_5eeaf8b348b95'),
(288, 41, 'slider_head', '«Семейный»'),
(289, 41, '_slider_head', 'field_5eeaf90148b96'),
(290, 41, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(291, 41, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(292, 41, 'slider_imgs_0_slider_img', '19'),
(293, 41, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(294, 41, 'slider_imgs_1_slider_img', '20'),
(295, 41, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(296, 41, 'slider_imgs_2_slider_img', '21'),
(297, 41, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(298, 41, 'slider_imgs', '3'),
(299, 41, '_slider_imgs', 'field_5eeaf9e56adb8'),
(300, 41, 'head_our_homes', 'Наши дома'),
(301, 41, '_head_our_homes', 'field_5eeb17ccfd87e'),
(302, 41, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(303, 41, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(304, 41, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(305, 41, '_text_our_homes', 'field_5eeb181afd880'),
(306, 41, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(307, 41, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(308, 41, 'contact_phone', '+7 (4212) 69-81-00'),
(309, 41, '_contact_phone', 'field_5eebffb6b1a86'),
(310, 41, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(311, 41, '_address', 'field_5eebffe6b1a87'),
(312, 41, 'instagram_links', '2'),
(313, 41, '_instagram_links', 'field_5eec001eb1a88'),
(314, 41, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(315, 41, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(316, 41, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(317, 41, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(318, 41, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(319, 41, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(320, 41, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(321, 41, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(322, 42, 'slider_text', 'Современный коттеджный Поселок'),
(323, 42, '_slider_text', 'field_5eeaf8b348b95'),
(324, 42, 'slider_head', '«Семейный»'),
(325, 42, '_slider_head', 'field_5eeaf90148b96'),
(326, 42, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(327, 42, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(328, 42, 'slider_imgs_0_slider_img', '19'),
(329, 42, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(330, 42, 'slider_imgs_1_slider_img', '20'),
(331, 42, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(332, 42, 'slider_imgs_2_slider_img', '21'),
(333, 42, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(334, 42, 'slider_imgs', '3'),
(335, 42, '_slider_imgs', 'field_5eeaf9e56adb8'),
(336, 42, 'head_our_homes', 'Наши дома'),
(337, 42, '_head_our_homes', 'field_5eeb17ccfd87e'),
(338, 42, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(339, 42, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(340, 42, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(341, 42, '_text_our_homes', 'field_5eeb181afd880'),
(342, 42, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(343, 42, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(344, 42, 'contact_phone', '+7 (4212) 69-81-00'),
(345, 42, '_contact_phone', 'field_5eebffb6b1a86'),
(346, 42, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(347, 42, '_address', 'field_5eebffe6b1a87'),
(348, 42, 'instagram_links', '2'),
(349, 42, '_instagram_links', 'field_5eec001eb1a88'),
(350, 42, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(351, 42, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(352, 42, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(353, 42, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(354, 42, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(355, 42, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(356, 42, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(357, 42, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(358, 43, 'slider_text', 'Современный коттеджный Поселок'),
(359, 43, '_slider_text', 'field_5eeaf8b348b95'),
(360, 43, 'slider_head', '«Семейный»'),
(361, 43, '_slider_head', 'field_5eeaf90148b96'),
(362, 43, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(363, 43, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(364, 43, 'slider_imgs_0_slider_img', '19'),
(365, 43, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(366, 43, 'slider_imgs_1_slider_img', '20'),
(367, 43, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(368, 43, 'slider_imgs_2_slider_img', '21'),
(369, 43, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(370, 43, 'slider_imgs', '3'),
(371, 43, '_slider_imgs', 'field_5eeaf9e56adb8'),
(372, 43, 'head_our_homes', 'Наши дома'),
(373, 43, '_head_our_homes', 'field_5eeb17ccfd87e'),
(374, 43, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(375, 43, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(376, 43, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(377, 43, '_text_our_homes', 'field_5eeb181afd880'),
(378, 43, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(379, 43, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(380, 43, 'contact_phone', '+7 (4212) 69-81-00'),
(381, 43, '_contact_phone', 'field_5eebffb6b1a86'),
(382, 43, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(383, 43, '_address', 'field_5eebffe6b1a87'),
(384, 43, 'instagram_links', '2'),
(385, 43, '_instagram_links', 'field_5eec001eb1a88'),
(386, 43, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(387, 43, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(388, 43, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(389, 43, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(390, 43, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(391, 43, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(392, 43, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(393, 43, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(394, 44, 'slider_text', 'Современный коттеджный Поселок'),
(395, 44, '_slider_text', 'field_5eeaf8b348b95'),
(396, 44, 'slider_head', '«Семейный»'),
(397, 44, '_slider_head', 'field_5eeaf90148b96'),
(398, 44, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(399, 44, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(400, 44, 'slider_imgs_0_slider_img', '19'),
(401, 44, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(402, 44, 'slider_imgs_1_slider_img', '20'),
(403, 44, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(404, 44, 'slider_imgs_2_slider_img', '21'),
(405, 44, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(406, 44, 'slider_imgs', '3'),
(407, 44, '_slider_imgs', 'field_5eeaf9e56adb8'),
(408, 44, 'head_our_homes', 'Наши дома'),
(409, 44, '_head_our_homes', 'field_5eeb17ccfd87e'),
(410, 44, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(411, 44, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(412, 44, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(413, 44, '_text_our_homes', 'field_5eeb181afd880'),
(414, 44, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(415, 44, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(416, 44, 'contact_phone', '+7 (4212) 69-81-00'),
(417, 44, '_contact_phone', 'field_5eebffb6b1a86'),
(418, 44, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(419, 44, '_address', 'field_5eebffe6b1a87'),
(420, 44, 'instagram_links', '2'),
(421, 44, '_instagram_links', 'field_5eec001eb1a88'),
(422, 44, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(423, 44, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(424, 44, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(425, 44, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(426, 44, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(427, 44, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(428, 44, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(429, 44, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(430, 45, 'slider_text', 'Современный коттеджный Поселок'),
(431, 45, '_slider_text', 'field_5eeaf8b348b95'),
(432, 45, 'slider_head', '«Семейный»'),
(433, 45, '_slider_head', 'field_5eeaf90148b96'),
(434, 45, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(435, 45, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(436, 45, 'slider_imgs_0_slider_img', '19'),
(437, 45, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(438, 45, 'slider_imgs_1_slider_img', '20'),
(439, 45, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(440, 45, 'slider_imgs_2_slider_img', '21'),
(441, 45, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(442, 45, 'slider_imgs', '3'),
(443, 45, '_slider_imgs', 'field_5eeaf9e56adb8'),
(444, 45, 'head_our_homes', 'Наши дома'),
(445, 45, '_head_our_homes', 'field_5eeb17ccfd87e'),
(446, 45, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(447, 45, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(448, 45, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(449, 45, '_text_our_homes', 'field_5eeb181afd880'),
(450, 45, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(451, 45, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(452, 45, 'contact_phone', '+7 (4212) 69-81-00'),
(453, 45, '_contact_phone', 'field_5eebffb6b1a86'),
(454, 45, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(455, 45, '_address', 'field_5eebffe6b1a87'),
(456, 45, 'instagram_links', '2'),
(457, 45, '_instagram_links', 'field_5eec001eb1a88'),
(458, 45, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(459, 45, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(460, 45, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(461, 45, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(462, 45, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(463, 45, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(464, 45, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(465, 45, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(466, 46, 'slider_text', 'Современный коттеджный Поселок'),
(467, 46, '_slider_text', 'field_5eeaf8b348b95'),
(468, 46, 'slider_head', '«Семейный»'),
(469, 46, '_slider_head', 'field_5eeaf90148b96'),
(470, 46, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(471, 46, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(472, 46, 'slider_imgs_0_slider_img', '19'),
(473, 46, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(474, 46, 'slider_imgs_1_slider_img', '20'),
(475, 46, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(476, 46, 'slider_imgs_2_slider_img', '21'),
(477, 46, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(478, 46, 'slider_imgs', '3'),
(479, 46, '_slider_imgs', 'field_5eeaf9e56adb8'),
(480, 46, 'head_our_homes', 'Наши дома'),
(481, 46, '_head_our_homes', 'field_5eeb17ccfd87e'),
(482, 46, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(483, 46, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(484, 46, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(485, 46, '_text_our_homes', 'field_5eeb181afd880'),
(486, 46, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(487, 46, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(488, 46, 'contact_phone', '+7 (4212) 69-81-00'),
(489, 46, '_contact_phone', 'field_5eebffb6b1a86'),
(490, 46, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(491, 46, '_address', 'field_5eebffe6b1a87'),
(492, 46, 'instagram_links', '2'),
(493, 46, '_instagram_links', 'field_5eec001eb1a88'),
(494, 46, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(495, 46, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(496, 46, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(497, 46, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(498, 46, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(499, 46, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(500, 46, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(501, 46, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(502, 47, 'slider_text', 'Современный коттеджный Поселок'),
(503, 47, '_slider_text', 'field_5eeaf8b348b95'),
(504, 47, 'slider_head', '«Семейный»'),
(505, 47, '_slider_head', 'field_5eeaf90148b96'),
(506, 47, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(507, 47, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(508, 47, 'slider_imgs_0_slider_img', '19'),
(509, 47, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(510, 47, 'slider_imgs_1_slider_img', '20'),
(511, 47, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(512, 47, 'slider_imgs_2_slider_img', '21'),
(513, 47, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(514, 47, 'slider_imgs', '3'),
(515, 47, '_slider_imgs', 'field_5eeaf9e56adb8'),
(516, 47, 'head_our_homes', 'Наши дома'),
(517, 47, '_head_our_homes', 'field_5eeb17ccfd87e'),
(518, 47, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(519, 47, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(520, 47, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(521, 47, '_text_our_homes', 'field_5eeb181afd880'),
(522, 47, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(523, 47, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(524, 47, 'contact_phone', '+7 (4212) 69-81-00'),
(525, 47, '_contact_phone', 'field_5eebffb6b1a86'),
(526, 47, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(527, 47, '_address', 'field_5eebffe6b1a87'),
(528, 47, 'instagram_links', '2'),
(529, 47, '_instagram_links', 'field_5eec001eb1a88'),
(530, 47, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(531, 47, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(532, 47, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(533, 47, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(534, 47, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(535, 47, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(536, 47, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(537, 47, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(538, 48, 'slider_text', 'Современный коттеджный Поселок'),
(539, 48, '_slider_text', 'field_5eeaf8b348b95'),
(540, 48, 'slider_head', '«Семейный»'),
(541, 48, '_slider_head', 'field_5eeaf90148b96'),
(542, 48, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(543, 48, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(544, 48, 'slider_imgs_0_slider_img', '19'),
(545, 48, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(546, 48, 'slider_imgs_1_slider_img', '20'),
(547, 48, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(548, 48, 'slider_imgs_2_slider_img', '21'),
(549, 48, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(550, 48, 'slider_imgs', '3'),
(551, 48, '_slider_imgs', 'field_5eeaf9e56adb8'),
(552, 48, 'head_our_homes', 'Наши дома'),
(553, 48, '_head_our_homes', 'field_5eeb17ccfd87e'),
(554, 48, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(555, 48, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(556, 48, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(557, 48, '_text_our_homes', 'field_5eeb181afd880'),
(558, 48, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(559, 48, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(560, 48, 'contact_phone', '+7 (4212) 69-81-00'),
(561, 48, '_contact_phone', 'field_5eebffb6b1a86'),
(562, 48, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(563, 48, '_address', 'field_5eebffe6b1a87'),
(564, 48, 'instagram_links', '2'),
(565, 48, '_instagram_links', 'field_5eec001eb1a88'),
(566, 48, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(567, 48, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(568, 48, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(569, 48, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(570, 48, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(571, 48, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(572, 48, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(573, 48, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(574, 49, 'slider_text', 'Современный коттеджный Поселок'),
(575, 49, '_slider_text', 'field_5eeaf8b348b95'),
(576, 49, 'slider_head', '«Семейный»'),
(577, 49, '_slider_head', 'field_5eeaf90148b96'),
(578, 49, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(579, 49, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(580, 49, 'slider_imgs_0_slider_img', '19'),
(581, 49, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(582, 49, 'slider_imgs_1_slider_img', '20'),
(583, 49, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(584, 49, 'slider_imgs_2_slider_img', '21'),
(585, 49, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(586, 49, 'slider_imgs', '3'),
(587, 49, '_slider_imgs', 'field_5eeaf9e56adb8'),
(588, 49, 'head_our_homes', 'Наши дома'),
(589, 49, '_head_our_homes', 'field_5eeb17ccfd87e'),
(590, 49, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(591, 49, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(592, 49, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(593, 49, '_text_our_homes', 'field_5eeb181afd880'),
(594, 49, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(595, 49, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(596, 49, 'contact_phone', '+7 (4212) 69-81-00'),
(597, 49, '_contact_phone', 'field_5eebffb6b1a86'),
(598, 49, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(599, 49, '_address', 'field_5eebffe6b1a87'),
(600, 49, 'instagram_links', '2'),
(601, 49, '_instagram_links', 'field_5eec001eb1a88'),
(602, 49, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(603, 49, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(604, 49, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(605, 49, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(606, 49, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(607, 49, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(608, 49, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(609, 49, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(610, 50, 'slider_text', 'Современный коттеджный Поселок'),
(611, 50, '_slider_text', 'field_5eeaf8b348b95'),
(612, 50, 'slider_head', '«Семейный»'),
(613, 50, '_slider_head', 'field_5eeaf90148b96'),
(614, 50, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(615, 50, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(616, 50, 'slider_imgs_0_slider_img', '19'),
(617, 50, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(618, 50, 'slider_imgs_1_slider_img', '20'),
(619, 50, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(620, 50, 'slider_imgs_2_slider_img', '21'),
(621, 50, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(622, 50, 'slider_imgs', '3'),
(623, 50, '_slider_imgs', 'field_5eeaf9e56adb8'),
(624, 50, 'head_our_homes', 'Наши дома'),
(625, 50, '_head_our_homes', 'field_5eeb17ccfd87e'),
(626, 50, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(627, 50, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(628, 50, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(629, 50, '_text_our_homes', 'field_5eeb181afd880'),
(630, 50, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(631, 50, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(632, 50, 'contact_phone', '+7 (4212) 69-81-00'),
(633, 50, '_contact_phone', 'field_5eebffb6b1a86'),
(634, 50, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(635, 50, '_address', 'field_5eebffe6b1a87'),
(636, 50, 'instagram_links', '2'),
(637, 50, '_instagram_links', 'field_5eec001eb1a88'),
(638, 50, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(639, 50, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(640, 50, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(641, 50, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(642, 50, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(643, 50, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(644, 50, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(645, 50, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(646, 52, 'slider_text', 'Современный коттеджный Поселок'),
(647, 52, '_slider_text', 'field_5eeaf8b348b95'),
(648, 52, 'slider_head', '«Семейный»'),
(649, 52, '_slider_head', 'field_5eeaf90148b96'),
(650, 52, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(651, 52, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(652, 52, 'slider_imgs_0_slider_img', '19'),
(653, 52, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(654, 52, 'slider_imgs_1_slider_img', '20'),
(655, 52, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(656, 52, 'slider_imgs_2_slider_img', '21'),
(657, 52, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(658, 52, 'slider_imgs', '3'),
(659, 52, '_slider_imgs', 'field_5eeaf9e56adb8'),
(660, 52, 'head_our_homes', 'Наши дома'),
(661, 52, '_head_our_homes', 'field_5eeb17ccfd87e'),
(662, 52, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(663, 52, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(664, 52, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(665, 52, '_text_our_homes', 'field_5eeb181afd880'),
(666, 52, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(667, 52, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(668, 52, 'contact_phone', '+7 (4212) 69-81-00'),
(669, 52, '_contact_phone', 'field_5eebffb6b1a86'),
(670, 52, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(671, 52, '_address', 'field_5eebffe6b1a87'),
(672, 52, 'instagram_links', '2'),
(673, 52, '_instagram_links', 'field_5eec001eb1a88'),
(674, 52, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(675, 52, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(676, 52, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(677, 52, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(678, 52, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(679, 52, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(680, 52, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(681, 52, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(682, 53, 'slider_text', 'Современный коттеджный Поселок'),
(683, 53, '_slider_text', 'field_5eeaf8b348b95'),
(684, 53, 'slider_head', '«Семейный»'),
(685, 53, '_slider_head', 'field_5eeaf90148b96'),
(686, 53, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(687, 53, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(688, 53, 'slider_imgs_0_slider_img', '19'),
(689, 53, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(690, 53, 'slider_imgs_1_slider_img', '20'),
(691, 53, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(692, 53, 'slider_imgs_2_slider_img', '21'),
(693, 53, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(694, 53, 'slider_imgs', '3'),
(695, 53, '_slider_imgs', 'field_5eeaf9e56adb8'),
(696, 53, 'head_our_homes', 'Наши дома'),
(697, 53, '_head_our_homes', 'field_5eeb17ccfd87e'),
(698, 53, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(699, 53, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(700, 53, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(701, 53, '_text_our_homes', 'field_5eeb181afd880'),
(702, 53, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(703, 53, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(704, 53, 'contact_phone', '+7 (4212) 69-81-00'),
(705, 53, '_contact_phone', 'field_5eebffb6b1a86'),
(706, 53, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(707, 53, '_address', 'field_5eebffe6b1a87'),
(708, 53, 'instagram_links', '2'),
(709, 53, '_instagram_links', 'field_5eec001eb1a88'),
(710, 53, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(711, 53, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(712, 53, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(713, 53, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(714, 53, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(715, 53, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(716, 53, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(717, 53, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(718, 54, 'slider_text', 'Современный коттеджный Поселок'),
(719, 54, '_slider_text', 'field_5eeaf8b348b95'),
(720, 54, 'slider_head', '«Семейный»'),
(721, 54, '_slider_head', 'field_5eeaf90148b96'),
(722, 54, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(723, 54, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(724, 54, 'slider_imgs_0_slider_img', '19'),
(725, 54, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(726, 54, 'slider_imgs_1_slider_img', '20'),
(727, 54, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(728, 54, 'slider_imgs_2_slider_img', '21'),
(729, 54, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(730, 54, 'slider_imgs', '3'),
(731, 54, '_slider_imgs', 'field_5eeaf9e56adb8'),
(732, 54, 'head_our_homes', 'Наши дома'),
(733, 54, '_head_our_homes', 'field_5eeb17ccfd87e'),
(734, 54, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(735, 54, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(736, 54, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(737, 54, '_text_our_homes', 'field_5eeb181afd880'),
(738, 54, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(739, 54, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(740, 54, 'contact_phone', '+7 (4212) 69-81-00'),
(741, 54, '_contact_phone', 'field_5eebffb6b1a86'),
(742, 54, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(743, 54, '_address', 'field_5eebffe6b1a87'),
(744, 54, 'instagram_links', '2'),
(745, 54, '_instagram_links', 'field_5eec001eb1a88'),
(746, 54, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(747, 54, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(748, 54, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(749, 54, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(750, 54, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(751, 54, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(752, 54, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(753, 54, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(754, 55, 'slider_text', 'Современный коттеджный Поселок'),
(755, 55, '_slider_text', 'field_5eeaf8b348b95'),
(756, 55, 'slider_head', '«Семейный»'),
(757, 55, '_slider_head', 'field_5eeaf90148b96'),
(758, 55, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(759, 55, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(760, 55, 'slider_imgs_0_slider_img', '19'),
(761, 55, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(762, 55, 'slider_imgs_1_slider_img', '20'),
(763, 55, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(764, 55, 'slider_imgs_2_slider_img', '21'),
(765, 55, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(766, 55, 'slider_imgs', '3'),
(767, 55, '_slider_imgs', 'field_5eeaf9e56adb8'),
(768, 55, 'head_our_homes', 'Наши дома'),
(769, 55, '_head_our_homes', 'field_5eeb17ccfd87e'),
(770, 55, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(771, 55, '_subhead_our_homes', 'field_5eeb17f6fd87f');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(772, 55, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(773, 55, '_text_our_homes', 'field_5eeb181afd880'),
(774, 55, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(775, 55, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(776, 55, 'contact_phone', '+7 (4212) 69-81-00'),
(777, 55, '_contact_phone', 'field_5eebffb6b1a86'),
(778, 55, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(779, 55, '_address', 'field_5eebffe6b1a87'),
(780, 55, 'instagram_links', '2'),
(781, 55, '_instagram_links', 'field_5eec001eb1a88'),
(782, 55, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(783, 55, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(784, 55, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(785, 55, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(786, 55, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(787, 55, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(788, 55, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(789, 55, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(790, 56, 'slider_text', 'Современный коттеджный Поселок'),
(791, 56, '_slider_text', 'field_5eeaf8b348b95'),
(792, 56, 'slider_head', '«Семейный»'),
(793, 56, '_slider_head', 'field_5eeaf90148b96'),
(794, 56, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(795, 56, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(796, 56, 'slider_imgs_0_slider_img', '19'),
(797, 56, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(798, 56, 'slider_imgs_1_slider_img', '20'),
(799, 56, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(800, 56, 'slider_imgs_2_slider_img', '21'),
(801, 56, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(802, 56, 'slider_imgs', '3'),
(803, 56, '_slider_imgs', 'field_5eeaf9e56adb8'),
(804, 56, 'head_our_homes', 'Наши дома'),
(805, 56, '_head_our_homes', 'field_5eeb17ccfd87e'),
(806, 56, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(807, 56, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(808, 56, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(809, 56, '_text_our_homes', 'field_5eeb181afd880'),
(810, 56, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(811, 56, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(812, 56, 'contact_phone', '+7 (4212) 69-81-00'),
(813, 56, '_contact_phone', 'field_5eebffb6b1a86'),
(814, 56, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(815, 56, '_address', 'field_5eebffe6b1a87'),
(816, 56, 'instagram_links', '2'),
(817, 56, '_instagram_links', 'field_5eec001eb1a88'),
(818, 56, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(819, 56, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(820, 56, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(821, 56, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(822, 56, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(823, 56, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(824, 56, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(825, 56, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(826, 57, 'slider_text', 'Современный коттеджный Поселок'),
(827, 57, '_slider_text', 'field_5eeaf8b348b95'),
(828, 57, 'slider_head', '«Семейный»'),
(829, 57, '_slider_head', 'field_5eeaf90148b96'),
(830, 57, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(831, 57, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(832, 57, 'slider_imgs_0_slider_img', '19'),
(833, 57, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(834, 57, 'slider_imgs_1_slider_img', '20'),
(835, 57, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(836, 57, 'slider_imgs_2_slider_img', '21'),
(837, 57, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(838, 57, 'slider_imgs', '3'),
(839, 57, '_slider_imgs', 'field_5eeaf9e56adb8'),
(840, 57, 'head_our_homes', 'Наши дома'),
(841, 57, '_head_our_homes', 'field_5eeb17ccfd87e'),
(842, 57, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(843, 57, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(844, 57, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(845, 57, '_text_our_homes', 'field_5eeb181afd880'),
(846, 57, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(847, 57, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(848, 57, 'contact_phone', '+7 (4212) 69-81-00'),
(849, 57, '_contact_phone', 'field_5eebffb6b1a86'),
(850, 57, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(851, 57, '_address', 'field_5eebffe6b1a87'),
(852, 57, 'instagram_links', '2'),
(853, 57, '_instagram_links', 'field_5eec001eb1a88'),
(854, 57, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(855, 57, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(856, 57, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(857, 57, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(858, 57, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(859, 57, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(860, 57, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(861, 57, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(862, 58, 'slider_text', 'Современный коттеджный Поселок'),
(863, 58, '_slider_text', 'field_5eeaf8b348b95'),
(864, 58, 'slider_head', '«Семейный»'),
(865, 58, '_slider_head', 'field_5eeaf90148b96'),
(866, 58, 'slider_bottom_text', '(с. Тополево, 15 минут от города)'),
(867, 58, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(868, 58, 'slider_imgs_0_slider_img', '19'),
(869, 58, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(870, 58, 'slider_imgs_1_slider_img', '20'),
(871, 58, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(872, 58, 'slider_imgs_2_slider_img', '21'),
(873, 58, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(874, 58, 'slider_imgs', '3'),
(875, 58, '_slider_imgs', 'field_5eeaf9e56adb8'),
(876, 58, 'head_our_homes', 'Наши дома'),
(877, 58, '_head_our_homes', 'field_5eeb17ccfd87e'),
(878, 58, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(879, 58, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(880, 58, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(881, 58, '_text_our_homes', 'field_5eeb181afd880'),
(882, 58, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(883, 58, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(884, 58, 'contact_phone', '+7 (4212) 69-81-00'),
(885, 58, '_contact_phone', 'field_5eebffb6b1a86'),
(886, 58, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(887, 58, '_address', 'field_5eebffe6b1a87'),
(888, 58, 'instagram_links', '2'),
(889, 58, '_instagram_links', 'field_5eec001eb1a88'),
(890, 58, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(891, 58, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(892, 58, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(893, 58, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(894, 58, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(895, 58, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(896, 58, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(897, 58, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(898, 59, 'slider_text', 'Современный коттеджный Поселок'),
(899, 59, '_slider_text', 'field_5eeaf8b348b95'),
(900, 59, 'slider_head', '«Семейный»'),
(901, 59, '_slider_head', 'field_5eeaf90148b96'),
(902, 59, 'slider_bottom_text', '(с. Тополево, 15 минут от города, 24 дома)'),
(903, 59, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(904, 59, 'slider_imgs_0_slider_img', '19'),
(905, 59, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(906, 59, 'slider_imgs_1_slider_img', '20'),
(907, 59, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(908, 59, 'slider_imgs_2_slider_img', '21'),
(909, 59, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(910, 59, 'slider_imgs', '3'),
(911, 59, '_slider_imgs', 'field_5eeaf9e56adb8'),
(912, 59, 'head_our_homes', 'Наши дома'),
(913, 59, '_head_our_homes', 'field_5eeb17ccfd87e'),
(914, 59, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(915, 59, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(916, 59, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(917, 59, '_text_our_homes', 'field_5eeb181afd880'),
(918, 59, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(919, 59, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(920, 59, 'contact_phone', '+7 (4212) 69-81-00'),
(921, 59, '_contact_phone', 'field_5eebffb6b1a86'),
(922, 59, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(923, 59, '_address', 'field_5eebffe6b1a87'),
(924, 59, 'instagram_links', '2'),
(925, 59, '_instagram_links', 'field_5eec001eb1a88'),
(926, 59, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(927, 59, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(928, 59, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(929, 59, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(930, 59, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(931, 59, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(932, 59, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(933, 59, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(934, 60, 'slider_text', 'Современный коттеджный Поселок'),
(935, 60, '_slider_text', 'field_5eeaf8b348b95'),
(936, 60, 'slider_head', '«Семейный»'),
(937, 60, '_slider_head', 'field_5eeaf90148b96'),
(938, 60, 'slider_bottom_text', '(с. Тополево, 15 минут от города, 26 домов)'),
(939, 60, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(940, 60, 'slider_imgs_0_slider_img', '19'),
(941, 60, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(942, 60, 'slider_imgs_1_slider_img', '20'),
(943, 60, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(944, 60, 'slider_imgs_2_slider_img', '21'),
(945, 60, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(946, 60, 'slider_imgs', '3'),
(947, 60, '_slider_imgs', 'field_5eeaf9e56adb8'),
(948, 60, 'head_our_homes', 'Наши дома'),
(949, 60, '_head_our_homes', 'field_5eeb17ccfd87e'),
(950, 60, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(951, 60, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(952, 60, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(953, 60, '_text_our_homes', 'field_5eeb181afd880'),
(954, 60, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(955, 60, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(956, 60, 'contact_phone', '+7 (4212) 69-81-00'),
(957, 60, '_contact_phone', 'field_5eebffb6b1a86'),
(958, 60, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(959, 60, '_address', 'field_5eebffe6b1a87'),
(960, 60, 'instagram_links', '2'),
(961, 60, '_instagram_links', 'field_5eec001eb1a88'),
(962, 60, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(963, 60, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(964, 60, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(965, 60, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(966, 60, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(967, 60, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(968, 60, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(969, 60, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(970, 73, '_wp_attached_file', '2020/06/1-1.jpg'),
(971, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:705;s:4:\"file\";s:15:\"2020/06/1-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-1-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"1-1-768x541.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:541;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:15:\"1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(972, 74, '_wp_attached_file', '2020/06/2-1.jpg'),
(973, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:705;s:4:\"file\";s:15:\"2020/06/2-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"2-1-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"2-1-768x541.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:541;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:15:\"2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(974, 75, '_wp_attached_file', '2020/06/3-1.jpg'),
(975, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:705;s:4:\"file\";s:15:\"2020/06/3-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"3-1-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"3-1-768x541.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:541;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:15:\"3-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(976, 76, '_wp_attached_file', '2020/06/4.jpg'),
(977, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:705;s:4:\"file\";s:13:\"2020/06/4.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"4-768x541.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:541;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:13:\"4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(978, 77, '_wp_attached_file', '2020/06/5.jpg'),
(979, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:705;s:4:\"file\";s:13:\"2020/06/5.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"5-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"5-768x541.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:541;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:13:\"5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(980, 78, '_wp_attached_file', '2020/06/scheme.jpg'),
(981, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1755;s:6:\"height\";i:1240;s:4:\"file\";s:18:\"2020/06/scheme.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"scheme-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"scheme-1024x724.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"scheme-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"scheme-768x543.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:543;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"scheme-1536x1085.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1085;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:20:\"scheme-1755x1200.jpg\";s:5:\"width\";i:1755;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"scheme-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(982, 9, 'double_floor_houses_0_house_name', '6х8'),
(983, 9, '_double_floor_houses_0_house_name', 'field_5ef01d01b361a'),
(984, 9, 'double_floor_houses_0_house_area', '106,59'),
(985, 9, '_double_floor_houses_0_house_area', 'field_5ef01d6fb361b'),
(986, 9, 'double_floor_houses_0_house_price', '5.26'),
(987, 9, '_double_floor_houses_0_house_price', 'field_5ef01eb4e4f17'),
(988, 9, 'double_floor_houses_0_house_description', '<ul>\r\n 	<li>3 жилые комнаты;</li>\r\n 	<li>большая кухня-гостинная 35 кв.м.;</li>\r\n 	<li>2 балкона;</li>\r\n 	<li>2 санузла;</li>\r\n 	<li>участок 10 соток в собственности;</li>\r\n 	<li>центральное водоснабжение;</li>\r\n 	<li>современная система отопления.</li>\r\n</ul>'),
(989, 9, '_double_floor_houses_0_house_description', 'field_5ef01dbab361c'),
(990, 9, 'double_floor_houses_0_house_images_0_house_image', '73'),
(991, 9, '_double_floor_houses_0_house_images_0_house_image', 'field_5ef01e53b361e'),
(992, 9, 'double_floor_houses_0_house_images_1_house_image', '74'),
(993, 9, '_double_floor_houses_0_house_images_1_house_image', 'field_5ef01e53b361e'),
(994, 9, 'double_floor_houses_0_house_images_2_house_image', '75'),
(995, 9, '_double_floor_houses_0_house_images_2_house_image', 'field_5ef01e53b361e'),
(996, 9, 'double_floor_houses_0_house_images_3_house_image', '76'),
(997, 9, '_double_floor_houses_0_house_images_3_house_image', 'field_5ef01e53b361e'),
(998, 9, 'double_floor_houses_0_house_images_4_house_image', '77'),
(999, 9, '_double_floor_houses_0_house_images_4_house_image', 'field_5ef01e53b361e'),
(1000, 9, 'double_floor_houses_0_house_images_5_house_image', '78'),
(1001, 9, '_double_floor_houses_0_house_images_5_house_image', 'field_5ef01e53b361e'),
(1002, 9, 'double_floor_houses_0_house_images', '6'),
(1003, 9, '_double_floor_houses_0_house_images', 'field_5ef01e4db361d'),
(1004, 9, 'double_floor_houses', '2'),
(1005, 9, '_double_floor_houses', 'field_5ef01ceab3619'),
(1006, 79, 'slider_text', 'Современный коттеджный Поселок'),
(1007, 79, '_slider_text', 'field_5eeaf8b348b95'),
(1008, 79, 'slider_head', '«Семейный»'),
(1009, 79, '_slider_head', 'field_5eeaf90148b96'),
(1010, 79, 'slider_bottom_text', '(с. Тополево, 15 минут от города, 26 домов)'),
(1011, 79, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(1012, 79, 'slider_imgs_0_slider_img', '19'),
(1013, 79, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(1014, 79, 'slider_imgs_1_slider_img', '20'),
(1015, 79, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(1016, 79, 'slider_imgs_2_slider_img', '21'),
(1017, 79, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(1018, 79, 'slider_imgs', '3'),
(1019, 79, '_slider_imgs', 'field_5eeaf9e56adb8'),
(1020, 79, 'head_our_homes', 'Наши дома'),
(1021, 79, '_head_our_homes', 'field_5eeb17ccfd87e'),
(1022, 79, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(1023, 79, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(1024, 79, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(1025, 79, '_text_our_homes', 'field_5eeb181afd880'),
(1026, 79, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(1027, 79, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(1028, 79, 'contact_phone', '+7 (4212) 69-81-00'),
(1029, 79, '_contact_phone', 'field_5eebffb6b1a86'),
(1030, 79, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(1031, 79, '_address', 'field_5eebffe6b1a87'),
(1032, 79, 'instagram_links', '2'),
(1033, 79, '_instagram_links', 'field_5eec001eb1a88'),
(1034, 79, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(1035, 79, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(1036, 79, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(1037, 79, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(1038, 79, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(1039, 79, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(1040, 79, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(1041, 79, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(1042, 79, 'double_floor_houses_0_house_name', '6х8'),
(1043, 79, '_double_floor_houses_0_house_name', 'field_5ef01d01b361a'),
(1044, 79, 'double_floor_houses_0_house_area', '106,59'),
(1045, 79, '_double_floor_houses_0_house_area', 'field_5ef01d6fb361b'),
(1046, 79, 'double_floor_houses_0_house_price', '5.26'),
(1047, 79, '_double_floor_houses_0_house_price', 'field_5ef01eb4e4f17'),
(1048, 79, 'double_floor_houses_0_house_description', '<ul>\r\n 	<li>3 жилые комнаты;</li>\r\n 	<li>большая кухня-гостинная 35 кв.м.;</li>\r\n 	<li>2 балкона;</li>\r\n 	<li>2 санузла;</li>\r\n 	<li>участок 10 соток в собственности;</li>\r\n 	<li>центральное водоснабжение;</li>\r\n 	<li>современная система отопления.</li>\r\n</ul>'),
(1049, 79, '_double_floor_houses_0_house_description', 'field_5ef01dbab361c'),
(1050, 79, 'double_floor_houses_0_house_images_0_house_image', '73'),
(1051, 79, '_double_floor_houses_0_house_images_0_house_image', 'field_5ef01e53b361e'),
(1052, 79, 'double_floor_houses_0_house_images_1_house_image', '74'),
(1053, 79, '_double_floor_houses_0_house_images_1_house_image', 'field_5ef01e53b361e'),
(1054, 79, 'double_floor_houses_0_house_images_2_house_image', '75'),
(1055, 79, '_double_floor_houses_0_house_images_2_house_image', 'field_5ef01e53b361e'),
(1056, 79, 'double_floor_houses_0_house_images_3_house_image', '76'),
(1057, 79, '_double_floor_houses_0_house_images_3_house_image', 'field_5ef01e53b361e'),
(1058, 79, 'double_floor_houses_0_house_images_4_house_image', '77'),
(1059, 79, '_double_floor_houses_0_house_images_4_house_image', 'field_5ef01e53b361e'),
(1060, 79, 'double_floor_houses_0_house_images_5_house_image', '78'),
(1061, 79, '_double_floor_houses_0_house_images_5_house_image', 'field_5ef01e53b361e'),
(1062, 79, 'double_floor_houses_0_house_images', '6'),
(1063, 79, '_double_floor_houses_0_house_images', 'field_5ef01e4db361d'),
(1064, 79, 'double_floor_houses', '1'),
(1065, 79, '_double_floor_houses', 'field_5ef01ceab3619'),
(1066, 80, 'slider_text', 'Современный коттеджный Поселок'),
(1067, 80, '_slider_text', 'field_5eeaf8b348b95'),
(1068, 80, 'slider_head', '«Семейный»'),
(1069, 80, '_slider_head', 'field_5eeaf90148b96'),
(1070, 80, 'slider_bottom_text', '(с. Тополево, 15 минут от города, 26 домов)'),
(1071, 80, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(1072, 80, 'slider_imgs_0_slider_img', '19'),
(1073, 80, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(1074, 80, 'slider_imgs_1_slider_img', '20'),
(1075, 80, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(1076, 80, 'slider_imgs_2_slider_img', '21'),
(1077, 80, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(1078, 80, 'slider_imgs', '3'),
(1079, 80, '_slider_imgs', 'field_5eeaf9e56adb8'),
(1080, 80, 'head_our_homes', 'Наши дома'),
(1081, 80, '_head_our_homes', 'field_5eeb17ccfd87e'),
(1082, 80, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(1083, 80, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(1084, 80, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(1085, 80, '_text_our_homes', 'field_5eeb181afd880'),
(1086, 80, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(1087, 80, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(1088, 80, 'contact_phone', '+7 (4212) 69-81-00'),
(1089, 80, '_contact_phone', 'field_5eebffb6b1a86'),
(1090, 80, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(1091, 80, '_address', 'field_5eebffe6b1a87'),
(1092, 80, 'instagram_links', '2'),
(1093, 80, '_instagram_links', 'field_5eec001eb1a88'),
(1094, 80, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(1095, 80, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(1096, 80, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(1097, 80, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(1098, 80, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(1099, 80, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(1100, 80, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(1101, 80, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(1102, 80, 'double_floor_houses_0_house_name', '6х8'),
(1103, 80, '_double_floor_houses_0_house_name', 'field_5ef01d01b361a'),
(1104, 80, 'double_floor_houses_0_house_area', '106,59'),
(1105, 80, '_double_floor_houses_0_house_area', 'field_5ef01d6fb361b'),
(1106, 80, 'double_floor_houses_0_house_price', '5.26'),
(1107, 80, '_double_floor_houses_0_house_price', 'field_5ef01eb4e4f17'),
(1108, 80, 'double_floor_houses_0_house_description', '<ul>\r\n 	<li>3 жилые комнаты;</li>\r\n 	<li>большая кухня-гостинная 35 кв.м.;</li>\r\n 	<li>2 балкона;</li>\r\n 	<li>2 санузла;</li>\r\n 	<li>участок 10 соток в собственности;</li>\r\n 	<li>центральное водоснабжение;</li>\r\n 	<li>современная система отопления.</li>\r\n</ul>'),
(1109, 80, '_double_floor_houses_0_house_description', 'field_5ef01dbab361c'),
(1110, 80, 'double_floor_houses_0_house_images_0_house_image', '73'),
(1111, 80, '_double_floor_houses_0_house_images_0_house_image', 'field_5ef01e53b361e'),
(1112, 80, 'double_floor_houses_0_house_images_1_house_image', '74'),
(1113, 80, '_double_floor_houses_0_house_images_1_house_image', 'field_5ef01e53b361e'),
(1114, 80, 'double_floor_houses_0_house_images_2_house_image', '75'),
(1115, 80, '_double_floor_houses_0_house_images_2_house_image', 'field_5ef01e53b361e'),
(1116, 80, 'double_floor_houses_0_house_images_3_house_image', '76'),
(1117, 80, '_double_floor_houses_0_house_images_3_house_image', 'field_5ef01e53b361e'),
(1118, 80, 'double_floor_houses_0_house_images_4_house_image', '77'),
(1119, 80, '_double_floor_houses_0_house_images_4_house_image', 'field_5ef01e53b361e'),
(1120, 80, 'double_floor_houses_0_house_images_5_house_image', '78'),
(1121, 80, '_double_floor_houses_0_house_images_5_house_image', 'field_5ef01e53b361e'),
(1122, 80, 'double_floor_houses_0_house_images', '6'),
(1123, 80, '_double_floor_houses_0_house_images', 'field_5ef01e4db361d'),
(1124, 80, 'double_floor_houses', '1'),
(1125, 80, '_double_floor_houses', 'field_5ef01ceab3619'),
(1126, 81, 'slider_text', 'Современный коттеджный Поселок'),
(1127, 81, '_slider_text', 'field_5eeaf8b348b95'),
(1128, 81, 'slider_head', '«Семейный»'),
(1129, 81, '_slider_head', 'field_5eeaf90148b96'),
(1130, 81, 'slider_bottom_text', '(с. Тополево, 15 минут от города, 26 домов)'),
(1131, 81, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(1132, 81, 'slider_imgs_0_slider_img', '19'),
(1133, 81, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(1134, 81, 'slider_imgs_1_slider_img', '20'),
(1135, 81, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(1136, 81, 'slider_imgs_2_slider_img', '21'),
(1137, 81, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(1138, 81, 'slider_imgs', '3'),
(1139, 81, '_slider_imgs', 'field_5eeaf9e56adb8'),
(1140, 81, 'head_our_homes', 'Наши дома'),
(1141, 81, '_head_our_homes', 'field_5eeb17ccfd87e'),
(1142, 81, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(1143, 81, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(1144, 81, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(1145, 81, '_text_our_homes', 'field_5eeb181afd880'),
(1146, 81, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(1147, 81, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(1148, 81, 'contact_phone', '+7 (4212) 69-81-00'),
(1149, 81, '_contact_phone', 'field_5eebffb6b1a86'),
(1150, 81, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(1151, 81, '_address', 'field_5eebffe6b1a87'),
(1152, 81, 'instagram_links', '2'),
(1153, 81, '_instagram_links', 'field_5eec001eb1a88'),
(1154, 81, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(1155, 81, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(1156, 81, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(1157, 81, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(1158, 81, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(1159, 81, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(1160, 81, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(1161, 81, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(1162, 81, 'double_floor_houses_0_house_name', '6х8'),
(1163, 81, '_double_floor_houses_0_house_name', 'field_5ef01d01b361a'),
(1164, 81, 'double_floor_houses_0_house_area', '106,59'),
(1165, 81, '_double_floor_houses_0_house_area', 'field_5ef01d6fb361b'),
(1166, 81, 'double_floor_houses_0_house_price', '5.26'),
(1167, 81, '_double_floor_houses_0_house_price', 'field_5ef01eb4e4f17'),
(1168, 81, 'double_floor_houses_0_house_description', '<ul>\r\n 	<li>3 жилые комнаты;</li>\r\n 	<li>большая кухня-гостинная 35 кв.м.;</li>\r\n 	<li>2 балкона;</li>\r\n 	<li>2 санузла;</li>\r\n 	<li>участок 10 соток в собственности;</li>\r\n 	<li>центральное водоснабжение;</li>\r\n 	<li>современная система отопления.</li>\r\n</ul>'),
(1169, 81, '_double_floor_houses_0_house_description', 'field_5ef01dbab361c'),
(1170, 81, 'double_floor_houses_0_house_images_0_house_image', '73'),
(1171, 81, '_double_floor_houses_0_house_images_0_house_image', 'field_5ef01e53b361e'),
(1172, 81, 'double_floor_houses_0_house_images_1_house_image', '74'),
(1173, 81, '_double_floor_houses_0_house_images_1_house_image', 'field_5ef01e53b361e'),
(1174, 81, 'double_floor_houses_0_house_images_2_house_image', '75'),
(1175, 81, '_double_floor_houses_0_house_images_2_house_image', 'field_5ef01e53b361e'),
(1176, 81, 'double_floor_houses_0_house_images_3_house_image', '76'),
(1177, 81, '_double_floor_houses_0_house_images_3_house_image', 'field_5ef01e53b361e'),
(1178, 81, 'double_floor_houses_0_house_images_4_house_image', '77'),
(1179, 81, '_double_floor_houses_0_house_images_4_house_image', 'field_5ef01e53b361e'),
(1180, 81, 'double_floor_houses_0_house_images_5_house_image', '78'),
(1181, 81, '_double_floor_houses_0_house_images_5_house_image', 'field_5ef01e53b361e'),
(1182, 81, 'double_floor_houses_0_house_images', '6'),
(1183, 81, '_double_floor_houses_0_house_images', 'field_5ef01e4db361d'),
(1184, 81, 'double_floor_houses', '1'),
(1185, 81, '_double_floor_houses', 'field_5ef01ceab3619'),
(1186, 82, '_wp_attached_file', '2020/06/1-2.jpg'),
(1187, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:705;s:4:\"file\";s:15:\"2020/06/1-2.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-2-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"1-2-768x541.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:541;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:15:\"1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1188, 83, '_wp_attached_file', '2020/06/2-2.jpg'),
(1189, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:705;s:4:\"file\";s:15:\"2020/06/2-2.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"2-2-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"2-2-768x541.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:541;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:15:\"2-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1190, 84, '_wp_attached_file', '2020/06/3-2.jpg'),
(1191, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:705;s:4:\"file\";s:15:\"2020/06/3-2.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"3-2-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"3-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"3-2-768x541.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:541;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:15:\"3-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1192, 85, '_wp_attached_file', '2020/06/4-1.jpg'),
(1193, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:705;s:4:\"file\";s:15:\"2020/06/4-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"4-1-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"4-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"4-1-768x541.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:541;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:15:\"4-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1194, 86, '_wp_attached_file', '2020/06/5-1.jpg'),
(1195, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:705;s:4:\"file\";s:15:\"2020/06/5-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"5-1-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"5-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"5-1-768x541.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:541;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:15:\"5-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1196, 87, '_wp_attached_file', '2020/06/scheme-1.jpg'),
(1197, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1755;s:6:\"height\";i:1240;s:4:\"file\";s:20:\"2020/06/scheme-1.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"scheme-1-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"scheme-1-1024x724.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"scheme-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"scheme-1-768x543.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:543;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"scheme-1-1536x1085.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1085;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:22:\"scheme-1-1755x1200.jpg\";s:5:\"width\";i:1755;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"scheme-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1198, 9, 'double_floor_houses_1_house_name', '8х8'),
(1199, 9, '_double_floor_houses_1_house_name', 'field_5ef01d01b361a'),
(1200, 9, 'double_floor_houses_1_house_area', '138,74'),
(1201, 9, '_double_floor_houses_1_house_area', 'field_5ef01d6fb361b'),
(1202, 9, 'double_floor_houses_1_house_price', '6.04'),
(1203, 9, '_double_floor_houses_1_house_price', 'field_5ef01eb4e4f17'),
(1204, 9, 'double_floor_houses_1_house_description', '<ul>\r\n 	<li>от 3 жилых комнат;</li>\r\n 	<li>большая кухня-гостинная 35 кв.м.;</li>\r\n 	<li>2 балкона;</li>\r\n 	<li>2 санузла;</li>\r\n 	<li>участок 10 соток в собственности;</li>\r\n 	<li>центральное водоснабжение;</li>\r\n 	<li>современная система отопления.</li>\r\n</ul>'),
(1205, 9, '_double_floor_houses_1_house_description', 'field_5ef01dbab361c'),
(1206, 9, 'double_floor_houses_1_house_images_0_house_image', '82'),
(1207, 9, '_double_floor_houses_1_house_images_0_house_image', 'field_5ef01e53b361e'),
(1208, 9, 'double_floor_houses_1_house_images_1_house_image', '83'),
(1209, 9, '_double_floor_houses_1_house_images_1_house_image', 'field_5ef01e53b361e'),
(1210, 9, 'double_floor_houses_1_house_images_2_house_image', '84'),
(1211, 9, '_double_floor_houses_1_house_images_2_house_image', 'field_5ef01e53b361e'),
(1212, 9, 'double_floor_houses_1_house_images_3_house_image', '85'),
(1213, 9, '_double_floor_houses_1_house_images_3_house_image', 'field_5ef01e53b361e'),
(1214, 9, 'double_floor_houses_1_house_images_4_house_image', '86'),
(1215, 9, '_double_floor_houses_1_house_images_4_house_image', 'field_5ef01e53b361e'),
(1216, 9, 'double_floor_houses_1_house_images_5_house_image', '87'),
(1217, 9, '_double_floor_houses_1_house_images_5_house_image', 'field_5ef01e53b361e'),
(1218, 9, 'double_floor_houses_1_house_images', '6'),
(1219, 9, '_double_floor_houses_1_house_images', 'field_5ef01e4db361d'),
(1220, 88, 'slider_text', 'Современный коттеджный Поселок'),
(1221, 88, '_slider_text', 'field_5eeaf8b348b95'),
(1222, 88, 'slider_head', '«Семейный»'),
(1223, 88, '_slider_head', 'field_5eeaf90148b96'),
(1224, 88, 'slider_bottom_text', '(с. Тополево, 15 минут от города, 26 домов)'),
(1225, 88, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(1226, 88, 'slider_imgs_0_slider_img', '19'),
(1227, 88, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(1228, 88, 'slider_imgs_1_slider_img', '20'),
(1229, 88, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(1230, 88, 'slider_imgs_2_slider_img', '21'),
(1231, 88, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(1232, 88, 'slider_imgs', '3'),
(1233, 88, '_slider_imgs', 'field_5eeaf9e56adb8'),
(1234, 88, 'head_our_homes', 'Наши дома'),
(1235, 88, '_head_our_homes', 'field_5eeb17ccfd87e'),
(1236, 88, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(1237, 88, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(1238, 88, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(1239, 88, '_text_our_homes', 'field_5eeb181afd880'),
(1240, 88, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(1241, 88, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(1242, 88, 'contact_phone', '+7 (4212) 69-81-00'),
(1243, 88, '_contact_phone', 'field_5eebffb6b1a86'),
(1244, 88, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(1245, 88, '_address', 'field_5eebffe6b1a87'),
(1246, 88, 'instagram_links', '2'),
(1247, 88, '_instagram_links', 'field_5eec001eb1a88'),
(1248, 88, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(1249, 88, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(1250, 88, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(1251, 88, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(1252, 88, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(1253, 88, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(1254, 88, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(1255, 88, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(1256, 88, 'double_floor_houses_0_house_name', '6х8'),
(1257, 88, '_double_floor_houses_0_house_name', 'field_5ef01d01b361a'),
(1258, 88, 'double_floor_houses_0_house_area', '106,59'),
(1259, 88, '_double_floor_houses_0_house_area', 'field_5ef01d6fb361b'),
(1260, 88, 'double_floor_houses_0_house_price', '5.26'),
(1261, 88, '_double_floor_houses_0_house_price', 'field_5ef01eb4e4f17'),
(1262, 88, 'double_floor_houses_0_house_description', '<ul>\r\n 	<li>3 жилые комнаты;</li>\r\n 	<li>большая кухня-гостинная 35 кв.м.;</li>\r\n 	<li>2 балкона;</li>\r\n 	<li>2 санузла;</li>\r\n 	<li>участок 10 соток в собственности;</li>\r\n 	<li>центральное водоснабжение;</li>\r\n 	<li>современная система отопления.</li>\r\n</ul>'),
(1263, 88, '_double_floor_houses_0_house_description', 'field_5ef01dbab361c'),
(1264, 88, 'double_floor_houses_0_house_images_0_house_image', '73'),
(1265, 88, '_double_floor_houses_0_house_images_0_house_image', 'field_5ef01e53b361e'),
(1266, 88, 'double_floor_houses_0_house_images_1_house_image', '74'),
(1267, 88, '_double_floor_houses_0_house_images_1_house_image', 'field_5ef01e53b361e'),
(1268, 88, 'double_floor_houses_0_house_images_2_house_image', '75'),
(1269, 88, '_double_floor_houses_0_house_images_2_house_image', 'field_5ef01e53b361e'),
(1270, 88, 'double_floor_houses_0_house_images_3_house_image', '76'),
(1271, 88, '_double_floor_houses_0_house_images_3_house_image', 'field_5ef01e53b361e'),
(1272, 88, 'double_floor_houses_0_house_images_4_house_image', '77'),
(1273, 88, '_double_floor_houses_0_house_images_4_house_image', 'field_5ef01e53b361e'),
(1274, 88, 'double_floor_houses_0_house_images_5_house_image', '78'),
(1275, 88, '_double_floor_houses_0_house_images_5_house_image', 'field_5ef01e53b361e'),
(1276, 88, 'double_floor_houses_0_house_images', '6'),
(1277, 88, '_double_floor_houses_0_house_images', 'field_5ef01e4db361d'),
(1278, 88, 'double_floor_houses', '2'),
(1279, 88, '_double_floor_houses', 'field_5ef01ceab3619'),
(1280, 88, 'double_floor_houses_1_house_name', '8х8'),
(1281, 88, '_double_floor_houses_1_house_name', 'field_5ef01d01b361a'),
(1282, 88, 'double_floor_houses_1_house_area', '138,74'),
(1283, 88, '_double_floor_houses_1_house_area', 'field_5ef01d6fb361b'),
(1284, 88, 'double_floor_houses_1_house_price', '6.04'),
(1285, 88, '_double_floor_houses_1_house_price', 'field_5ef01eb4e4f17'),
(1286, 88, 'double_floor_houses_1_house_description', '<ul>\r\n 	<li>от 3 жилых комнат;</li>\r\n 	<li>большая кухня-гостинная 35 кв.м.;</li>\r\n 	<li>2 балкона;</li>\r\n 	<li>2 санузла;</li>\r\n 	<li>участок 10 соток в собственности;</li>\r\n 	<li>центральное водоснабжение;</li>\r\n 	<li>современная система отопления.</li>\r\n</ul>'),
(1287, 88, '_double_floor_houses_1_house_description', 'field_5ef01dbab361c'),
(1288, 88, 'double_floor_houses_1_house_images_0_house_image', '82'),
(1289, 88, '_double_floor_houses_1_house_images_0_house_image', 'field_5ef01e53b361e'),
(1290, 88, 'double_floor_houses_1_house_images_1_house_image', '83'),
(1291, 88, '_double_floor_houses_1_house_images_1_house_image', 'field_5ef01e53b361e'),
(1292, 88, 'double_floor_houses_1_house_images_2_house_image', '84'),
(1293, 88, '_double_floor_houses_1_house_images_2_house_image', 'field_5ef01e53b361e'),
(1294, 88, 'double_floor_houses_1_house_images_3_house_image', '85'),
(1295, 88, '_double_floor_houses_1_house_images_3_house_image', 'field_5ef01e53b361e'),
(1296, 88, 'double_floor_houses_1_house_images_4_house_image', '86'),
(1297, 88, '_double_floor_houses_1_house_images_4_house_image', 'field_5ef01e53b361e'),
(1298, 88, 'double_floor_houses_1_house_images_5_house_image', '87'),
(1299, 88, '_double_floor_houses_1_house_images_5_house_image', 'field_5ef01e53b361e'),
(1300, 88, 'double_floor_houses_1_house_images', '6'),
(1301, 88, '_double_floor_houses_1_house_images', 'field_5ef01e4db361d'),
(1308, 92, 'slider_text', 'Современный коттеджный Поселок'),
(1309, 92, '_slider_text', 'field_5eeaf8b348b95'),
(1310, 92, 'slider_head', '«Семейный»');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1311, 92, '_slider_head', 'field_5eeaf90148b96'),
(1312, 92, 'slider_bottom_text', '(с. Тополево, 15 минут от города, 26 домов)'),
(1313, 92, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(1314, 92, 'slider_imgs_0_slider_img', '19'),
(1315, 92, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(1316, 92, 'slider_imgs_1_slider_img', '20'),
(1317, 92, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(1318, 92, 'slider_imgs_2_slider_img', '21'),
(1319, 92, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(1320, 92, 'slider_imgs', '3'),
(1321, 92, '_slider_imgs', 'field_5eeaf9e56adb8'),
(1322, 92, 'head_our_homes', 'Наши дома'),
(1323, 92, '_head_our_homes', 'field_5eeb17ccfd87e'),
(1324, 92, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(1325, 92, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(1326, 92, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(1327, 92, '_text_our_homes', 'field_5eeb181afd880'),
(1328, 92, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(1329, 92, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(1330, 92, 'contact_phone', '+7 (4212) 69-81-00'),
(1331, 92, '_contact_phone', 'field_5eebffb6b1a86'),
(1332, 92, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(1333, 92, '_address', 'field_5eebffe6b1a87'),
(1334, 92, 'instagram_links', '2'),
(1335, 92, '_instagram_links', 'field_5eec001eb1a88'),
(1336, 92, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(1337, 92, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(1338, 92, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(1339, 92, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(1340, 92, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(1341, 92, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(1342, 92, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(1343, 92, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(1344, 92, 'double_floor_houses_0_house_name', '6х8'),
(1345, 92, '_double_floor_houses_0_house_name', 'field_5ef01d01b361a'),
(1346, 92, 'double_floor_houses_0_house_area', '106,59'),
(1347, 92, '_double_floor_houses_0_house_area', 'field_5ef01d6fb361b'),
(1348, 92, 'double_floor_houses_0_house_price', '5.26'),
(1349, 92, '_double_floor_houses_0_house_price', 'field_5ef01eb4e4f17'),
(1350, 92, 'double_floor_houses_0_house_description', '<ul>\r\n 	<li>3 жилые комнаты;</li>\r\n 	<li>большая кухня-гостинная 35 кв.м.;</li>\r\n 	<li>2 балкона;</li>\r\n 	<li>2 санузла;</li>\r\n 	<li>участок 10 соток в собственности;</li>\r\n 	<li>центральное водоснабжение;</li>\r\n 	<li>современная система отопления.</li>\r\n</ul>'),
(1351, 92, '_double_floor_houses_0_house_description', 'field_5ef01dbab361c'),
(1352, 92, 'double_floor_houses_0_house_images_0_house_image', '73'),
(1353, 92, '_double_floor_houses_0_house_images_0_house_image', 'field_5ef01e53b361e'),
(1354, 92, 'double_floor_houses_0_house_images_1_house_image', '74'),
(1355, 92, '_double_floor_houses_0_house_images_1_house_image', 'field_5ef01e53b361e'),
(1356, 92, 'double_floor_houses_0_house_images_2_house_image', '75'),
(1357, 92, '_double_floor_houses_0_house_images_2_house_image', 'field_5ef01e53b361e'),
(1358, 92, 'double_floor_houses_0_house_images_3_house_image', '76'),
(1359, 92, '_double_floor_houses_0_house_images_3_house_image', 'field_5ef01e53b361e'),
(1360, 92, 'double_floor_houses_0_house_images_4_house_image', '77'),
(1361, 92, '_double_floor_houses_0_house_images_4_house_image', 'field_5ef01e53b361e'),
(1362, 92, 'double_floor_houses_0_house_images_5_house_image', '78'),
(1363, 92, '_double_floor_houses_0_house_images_5_house_image', 'field_5ef01e53b361e'),
(1364, 92, 'double_floor_houses_0_house_images', '6'),
(1365, 92, '_double_floor_houses_0_house_images', 'field_5ef01e4db361d'),
(1366, 92, 'double_floor_houses', '2'),
(1367, 92, '_double_floor_houses', 'field_5ef01ceab3619'),
(1368, 92, 'double_floor_houses_1_house_name', '8х8'),
(1369, 92, '_double_floor_houses_1_house_name', 'field_5ef01d01b361a'),
(1370, 92, 'double_floor_houses_1_house_area', '138,74'),
(1371, 92, '_double_floor_houses_1_house_area', 'field_5ef01d6fb361b'),
(1372, 92, 'double_floor_houses_1_house_price', '6.04'),
(1373, 92, '_double_floor_houses_1_house_price', 'field_5ef01eb4e4f17'),
(1374, 92, 'double_floor_houses_1_house_description', '<ul>\r\n 	<li>от 3 жилых комнат;</li>\r\n 	<li>большая кухня-гостинная 35 кв.м.;</li>\r\n 	<li>2 балкона;</li>\r\n 	<li>2 санузла;</li>\r\n 	<li>участок 10 соток в собственности;</li>\r\n 	<li>центральное водоснабжение;</li>\r\n 	<li>современная система отопления.</li>\r\n</ul>'),
(1375, 92, '_double_floor_houses_1_house_description', 'field_5ef01dbab361c'),
(1376, 92, 'double_floor_houses_1_house_images_0_house_image', '82'),
(1377, 92, '_double_floor_houses_1_house_images_0_house_image', 'field_5ef01e53b361e'),
(1378, 92, 'double_floor_houses_1_house_images_1_house_image', '83'),
(1379, 92, '_double_floor_houses_1_house_images_1_house_image', 'field_5ef01e53b361e'),
(1380, 92, 'double_floor_houses_1_house_images_2_house_image', '84'),
(1381, 92, '_double_floor_houses_1_house_images_2_house_image', 'field_5ef01e53b361e'),
(1382, 92, 'double_floor_houses_1_house_images_3_house_image', '85'),
(1383, 92, '_double_floor_houses_1_house_images_3_house_image', 'field_5ef01e53b361e'),
(1384, 92, 'double_floor_houses_1_house_images_4_house_image', '86'),
(1385, 92, '_double_floor_houses_1_house_images_4_house_image', 'field_5ef01e53b361e'),
(1386, 92, 'double_floor_houses_1_house_images_5_house_image', '87'),
(1387, 92, '_double_floor_houses_1_house_images_5_house_image', 'field_5ef01e53b361e'),
(1388, 92, 'double_floor_houses_1_house_images', '6'),
(1389, 92, '_double_floor_houses_1_house_images', 'field_5ef01e4db361d'),
(1390, 93, 'slider_text', 'Современный коттеджный Поселок'),
(1391, 93, '_slider_text', 'field_5eeaf8b348b95'),
(1392, 93, 'slider_head', '«Семейный»'),
(1393, 93, '_slider_head', 'field_5eeaf90148b96'),
(1394, 93, 'slider_bottom_text', '(с. Тополево, 15 минут от города, 26 домов)'),
(1395, 93, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(1396, 93, 'slider_imgs_0_slider_img', '19'),
(1397, 93, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(1398, 93, 'slider_imgs_1_slider_img', '20'),
(1399, 93, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(1400, 93, 'slider_imgs_2_slider_img', '21'),
(1401, 93, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(1402, 93, 'slider_imgs', '3'),
(1403, 93, '_slider_imgs', 'field_5eeaf9e56adb8'),
(1404, 93, 'head_our_homes', 'Наши дома'),
(1405, 93, '_head_our_homes', 'field_5eeb17ccfd87e'),
(1406, 93, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(1407, 93, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(1408, 93, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(1409, 93, '_text_our_homes', 'field_5eeb181afd880'),
(1410, 93, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(1411, 93, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(1412, 93, 'contact_phone', '+7 (4212) 69-81-00'),
(1413, 93, '_contact_phone', 'field_5eebffb6b1a86'),
(1414, 93, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(1415, 93, '_address', 'field_5eebffe6b1a87'),
(1416, 93, 'instagram_links', '2'),
(1417, 93, '_instagram_links', 'field_5eec001eb1a88'),
(1418, 93, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(1419, 93, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(1420, 93, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(1421, 93, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(1422, 93, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(1423, 93, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(1424, 93, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(1425, 93, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(1426, 93, 'double_floor_houses_0_house_name', '6х8'),
(1427, 93, '_double_floor_houses_0_house_name', 'field_5ef01d01b361a'),
(1428, 93, 'double_floor_houses_0_house_area', '106,59'),
(1429, 93, '_double_floor_houses_0_house_area', 'field_5ef01d6fb361b'),
(1430, 93, 'double_floor_houses_0_house_price', '5.26'),
(1431, 93, '_double_floor_houses_0_house_price', 'field_5ef01eb4e4f17'),
(1432, 93, 'double_floor_houses_0_house_description', '<ul>\r\n 	<li>3 жилые комнаты;</li>\r\n 	<li>большая кухня-гостинная 35 кв.м.;</li>\r\n 	<li>2 балкона;</li>\r\n 	<li>2 санузла;</li>\r\n 	<li>участок 10 соток в собственности;</li>\r\n 	<li>центральное водоснабжение;</li>\r\n 	<li>современная система отопления.</li>\r\n</ul>'),
(1433, 93, '_double_floor_houses_0_house_description', 'field_5ef01dbab361c'),
(1434, 93, 'double_floor_houses_0_house_images_0_house_image', '73'),
(1435, 93, '_double_floor_houses_0_house_images_0_house_image', 'field_5ef01e53b361e'),
(1436, 93, 'double_floor_houses_0_house_images_1_house_image', '74'),
(1437, 93, '_double_floor_houses_0_house_images_1_house_image', 'field_5ef01e53b361e'),
(1438, 93, 'double_floor_houses_0_house_images_2_house_image', '75'),
(1439, 93, '_double_floor_houses_0_house_images_2_house_image', 'field_5ef01e53b361e'),
(1440, 93, 'double_floor_houses_0_house_images_3_house_image', '76'),
(1441, 93, '_double_floor_houses_0_house_images_3_house_image', 'field_5ef01e53b361e'),
(1442, 93, 'double_floor_houses_0_house_images_4_house_image', '77'),
(1443, 93, '_double_floor_houses_0_house_images_4_house_image', 'field_5ef01e53b361e'),
(1444, 93, 'double_floor_houses_0_house_images_5_house_image', '78'),
(1445, 93, '_double_floor_houses_0_house_images_5_house_image', 'field_5ef01e53b361e'),
(1446, 93, 'double_floor_houses_0_house_images', '6'),
(1447, 93, '_double_floor_houses_0_house_images', 'field_5ef01e4db361d'),
(1448, 93, 'double_floor_houses', '2'),
(1449, 93, '_double_floor_houses', 'field_5ef01ceab3619'),
(1450, 93, 'double_floor_houses_1_house_name', '8х8'),
(1451, 93, '_double_floor_houses_1_house_name', 'field_5ef01d01b361a'),
(1452, 93, 'double_floor_houses_1_house_area', '138,74'),
(1453, 93, '_double_floor_houses_1_house_area', 'field_5ef01d6fb361b'),
(1454, 93, 'double_floor_houses_1_house_price', '6.04'),
(1455, 93, '_double_floor_houses_1_house_price', 'field_5ef01eb4e4f17'),
(1456, 93, 'double_floor_houses_1_house_description', '<ul>\r\n 	<li>от 3 жилых комнат;</li>\r\n 	<li>большая кухня-гостинная 35 кв.м.;</li>\r\n 	<li>2 балкона;</li>\r\n 	<li>2 санузла;</li>\r\n 	<li>участок 10 соток в собственности;</li>\r\n 	<li>центральное водоснабжение;</li>\r\n 	<li>современная система отопления.</li>\r\n</ul>'),
(1457, 93, '_double_floor_houses_1_house_description', 'field_5ef01dbab361c'),
(1458, 93, 'double_floor_houses_1_house_images_0_house_image', '82'),
(1459, 93, '_double_floor_houses_1_house_images_0_house_image', 'field_5ef01e53b361e'),
(1460, 93, 'double_floor_houses_1_house_images_1_house_image', '83'),
(1461, 93, '_double_floor_houses_1_house_images_1_house_image', 'field_5ef01e53b361e'),
(1462, 93, 'double_floor_houses_1_house_images_2_house_image', '84'),
(1463, 93, '_double_floor_houses_1_house_images_2_house_image', 'field_5ef01e53b361e'),
(1464, 93, 'double_floor_houses_1_house_images_3_house_image', '85'),
(1465, 93, '_double_floor_houses_1_house_images_3_house_image', 'field_5ef01e53b361e'),
(1466, 93, 'double_floor_houses_1_house_images_4_house_image', '86'),
(1467, 93, '_double_floor_houses_1_house_images_4_house_image', 'field_5ef01e53b361e'),
(1468, 93, 'double_floor_houses_1_house_images_5_house_image', '87'),
(1469, 93, '_double_floor_houses_1_house_images_5_house_image', 'field_5ef01e53b361e'),
(1470, 93, 'double_floor_houses_1_house_images', '6'),
(1471, 93, '_double_floor_houses_1_house_images', 'field_5ef01e4db361d'),
(1472, 94, 'slider_text', 'Современный коттеджный Поселок'),
(1473, 94, '_slider_text', 'field_5eeaf8b348b95'),
(1474, 94, 'slider_head', '«Семейный»'),
(1475, 94, '_slider_head', 'field_5eeaf90148b96'),
(1476, 94, 'slider_bottom_text', '(с. Тополево, 15 минут от города, 26 домов)'),
(1477, 94, '_slider_bottom_text', 'field_5eeaf91c48b97'),
(1478, 94, 'slider_imgs_0_slider_img', '19'),
(1479, 94, '_slider_imgs_0_slider_img', 'field_5eeafa146adb9'),
(1480, 94, 'slider_imgs_1_slider_img', '20'),
(1481, 94, '_slider_imgs_1_slider_img', 'field_5eeafa146adb9'),
(1482, 94, 'slider_imgs_2_slider_img', '21'),
(1483, 94, '_slider_imgs_2_slider_img', 'field_5eeafa146adb9'),
(1484, 94, 'slider_imgs', '3'),
(1485, 94, '_slider_imgs', 'field_5eeaf9e56adb8'),
(1486, 94, 'head_our_homes', 'Наши дома'),
(1487, 94, '_head_our_homes', 'field_5eeb17ccfd87e'),
(1488, 94, 'subhead_our_homes', 'Построим надежный дом за 2-3 месяца!'),
(1489, 94, '_subhead_our_homes', 'field_5eeb17f6fd87f'),
(1490, 94, 'text_our_homes', '<a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"nofollow\">ООО «Завод КПД-100»</a> - производит домокомплекты по уникальной технологии, основанной на колонно-ригельной системе.'),
(1491, 94, '_text_our_homes', 'field_5eeb181afd880'),
(1492, 94, 'bottom_text_our_homes', 'Качественный дом за 1-2 месяца в 15 минутах от города по выгодной цене - ЭТО РЕАЛЬНО!'),
(1493, 94, '_bottom_text_our_homes', 'field_5eeb1957fd881'),
(1494, 94, 'contact_phone', '+7 (4212) 69-81-00'),
(1495, 94, '_contact_phone', 'field_5eebffb6b1a86'),
(1496, 94, 'address', 'Россия, г. Хабаровск, ул. Иркутская, 8'),
(1497, 94, '_address', 'field_5eebffe6b1a87'),
(1498, 94, 'instagram_links', '2'),
(1499, 94, '_instagram_links', 'field_5eec001eb1a88'),
(1500, 94, 'instagram_links_0_instagram_link', 'https://www.instagram.com/kpd100zavod.ru/'),
(1501, 94, '_instagram_links_0_instagram_link', 'field_5eec00e7b1a89'),
(1502, 94, 'instagram_links_0_instagram_link_text', 'Instagram КПД 100'),
(1503, 94, '_instagram_links_0_instagram_link_text', 'field_5eec00ffb1a8a'),
(1504, 94, 'instagram_links_1_instagram_link', 'https://www.instagram.com/kpd.stroi/'),
(1505, 94, '_instagram_links_1_instagram_link', 'field_5eec00e7b1a89'),
(1506, 94, 'instagram_links_1_instagram_link_text', 'Наш Instagram'),
(1507, 94, '_instagram_links_1_instagram_link_text', 'field_5eec00ffb1a8a'),
(1508, 94, 'double_floor_houses_0_house_name', '6х8'),
(1509, 94, '_double_floor_houses_0_house_name', 'field_5ef01d01b361a'),
(1510, 94, 'double_floor_houses_0_house_area', '106,59'),
(1511, 94, '_double_floor_houses_0_house_area', 'field_5ef01d6fb361b'),
(1512, 94, 'double_floor_houses_0_house_price', '5.26'),
(1513, 94, '_double_floor_houses_0_house_price', 'field_5ef01eb4e4f17'),
(1514, 94, 'double_floor_houses_0_house_description', '<ul>\r\n 	<li>3 жилые комнаты;</li>\r\n 	<li>большая кухня-гостинная 35 кв.м.;</li>\r\n 	<li>2 балкона;</li>\r\n 	<li>2 санузла;</li>\r\n 	<li>участок 10 соток в собственности;</li>\r\n 	<li>центральное водоснабжение;</li>\r\n 	<li>современная система отопления.</li>\r\n</ul>'),
(1515, 94, '_double_floor_houses_0_house_description', 'field_5ef01dbab361c'),
(1516, 94, 'double_floor_houses_0_house_images_0_house_image', '73'),
(1517, 94, '_double_floor_houses_0_house_images_0_house_image', 'field_5ef01e53b361e'),
(1518, 94, 'double_floor_houses_0_house_images_1_house_image', '74'),
(1519, 94, '_double_floor_houses_0_house_images_1_house_image', 'field_5ef01e53b361e'),
(1520, 94, 'double_floor_houses_0_house_images_2_house_image', '75'),
(1521, 94, '_double_floor_houses_0_house_images_2_house_image', 'field_5ef01e53b361e'),
(1522, 94, 'double_floor_houses_0_house_images_3_house_image', '76'),
(1523, 94, '_double_floor_houses_0_house_images_3_house_image', 'field_5ef01e53b361e'),
(1524, 94, 'double_floor_houses_0_house_images_4_house_image', '77'),
(1525, 94, '_double_floor_houses_0_house_images_4_house_image', 'field_5ef01e53b361e'),
(1526, 94, 'double_floor_houses_0_house_images_5_house_image', '78'),
(1527, 94, '_double_floor_houses_0_house_images_5_house_image', 'field_5ef01e53b361e'),
(1528, 94, 'double_floor_houses_0_house_images', '6'),
(1529, 94, '_double_floor_houses_0_house_images', 'field_5ef01e4db361d'),
(1530, 94, 'double_floor_houses', '2'),
(1531, 94, '_double_floor_houses', 'field_5ef01ceab3619'),
(1532, 94, 'double_floor_houses_1_house_name', '8х8'),
(1533, 94, '_double_floor_houses_1_house_name', 'field_5ef01d01b361a'),
(1534, 94, 'double_floor_houses_1_house_area', '138,74'),
(1535, 94, '_double_floor_houses_1_house_area', 'field_5ef01d6fb361b'),
(1536, 94, 'double_floor_houses_1_house_price', '6.04'),
(1537, 94, '_double_floor_houses_1_house_price', 'field_5ef01eb4e4f17'),
(1538, 94, 'double_floor_houses_1_house_description', '<ul>\r\n 	<li>от 3 жилых комнат;</li>\r\n 	<li>большая кухня-гостинная 35 кв.м.;</li>\r\n 	<li>2 балкона;</li>\r\n 	<li>2 санузла;</li>\r\n 	<li>участок 10 соток в собственности;</li>\r\n 	<li>центральное водоснабжение;</li>\r\n 	<li>современная система отопления.</li>\r\n</ul>'),
(1539, 94, '_double_floor_houses_1_house_description', 'field_5ef01dbab361c'),
(1540, 94, 'double_floor_houses_1_house_images_0_house_image', '82'),
(1541, 94, '_double_floor_houses_1_house_images_0_house_image', 'field_5ef01e53b361e'),
(1542, 94, 'double_floor_houses_1_house_images_1_house_image', '83'),
(1543, 94, '_double_floor_houses_1_house_images_1_house_image', 'field_5ef01e53b361e'),
(1544, 94, 'double_floor_houses_1_house_images_2_house_image', '84'),
(1545, 94, '_double_floor_houses_1_house_images_2_house_image', 'field_5ef01e53b361e'),
(1546, 94, 'double_floor_houses_1_house_images_3_house_image', '85'),
(1547, 94, '_double_floor_houses_1_house_images_3_house_image', 'field_5ef01e53b361e'),
(1548, 94, 'double_floor_houses_1_house_images_4_house_image', '86'),
(1549, 94, '_double_floor_houses_1_house_images_4_house_image', 'field_5ef01e53b361e'),
(1550, 94, 'double_floor_houses_1_house_images_5_house_image', '87'),
(1551, 94, '_double_floor_houses_1_house_images_5_house_image', 'field_5ef01e53b361e'),
(1552, 94, 'double_floor_houses_1_house_images', '6'),
(1553, 94, '_double_floor_houses_1_house_images', 'field_5ef01e4db361d'),
(1566, 102, '_wp_attached_file', '2020/07/map.png'),
(1567, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:765;s:4:\"file\";s:15:\"2020/07/map.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"map-300x120.png\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"map-1024x408.png\";s:5:\"width\";i:1024;s:6:\"height\";i:408;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"map-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"map-768x306.png\";s:5:\"width\";i:768;s:6:\"height\";i:306;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"map-1536x612.png\";s:5:\"width\";i:1536;s:6:\"height\";i:612;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:15:\"map-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1568, 9, '_yoast_wpseo_metadesc', 'Коттеджный поселок \"Семейный\" в Тополево г.Хабаровск.'),
(1569, 9, '_yoast_wpseo_content_score', '30'),
(1570, 104, '_wp_attached_file', '2020/08/reservation.svg'),
(1571, 104, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:71;s:6:\"height\";i:17;s:4:\"file\";s:24:\"/2020/08/reservation.svg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:15:\"reservation.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:15:\"reservation.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:15:\"reservation.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:15:\"reservation.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:15:\"reservation.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:15:\"reservation.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:30:\"twentyseventeen-featured-image\";a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"crop\";i:1;s:4:\"file\";s:15:\"reservation.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:15:\"reservation.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1572, 105, '_wp_attached_file', '2020/08/sold.svg'),
(1573, 105, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:105;s:6:\"height\";i:20;s:4:\"file\";s:17:\"/2020/08/sold.svg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:8:\"sold.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"sold.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"sold.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"sold.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:8:\"sold.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:8:\"sold.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:30:\"twentyseventeen-featured-image\";a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"crop\";i:1;s:4:\"file\";s:8:\"sold.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:8:\"sold.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--
-- Создание: Июл 17 2020 г., 07:26
-- Последнее обновление: Сен 28 2020 г., 07:53
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-06-10 10:52:38', '2020-06-10 07:52:38', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2020-06-10 10:52:38', '2020-06-10 07:52:38', '', 0, 'https://xn----dtbfcayavl9a1i.xn--p1ai/?p=1', 0, 'post', '', 1),
(9, 1, '2020-06-18 04:40:01', '2020-06-18 01:40:01', '<!-- wp:heading -->\n<h2>Где находится поселок «Семейный»?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list after-elem\"} -->\n<ul class=\"list after-elem\"><li>Транспортная доступность (одна остановка от ул. Карла-Маркса, 15 мин до пл. Ленина);</li><li>Экологически чистый и \"зеленый\" район;</li><li>Развитая инфраструктура (школа, детские сады, поликлиника, магазины);</li><li>Все виды льгот для сельской местности (по коммунальным платежам, по регистрации автомобиля, по налогообложению и др.);</li><li>Крупнейший ТЦ \"Стрелка\" в 3 км, в котором есть самый большой на сегодняшний день детский развлекательный центр.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Наш коттеджный поселок - это:</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Охраняемая огороженная территория с шлагбаумом на 26 домов, окруженная коттеджной застройкой, со всеми необходимыми коммуникациями ( центральное водоснабжение, централизованная канализация, электросети - 15кВт на дом );</li><li>Собственный участок от 8 до 10 соток, на котором можно построить баню, расположить бассейн, обустроить шашлычную зону, спортивную площадку или гараж.</li><li>Ровная подъездная дорога</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'publish', 'closed', 'closed', '', '%d1%81%d0%b5%d0%bc%d0%b5%d0%b9%d0%bd%d1%8b%d0%b9', '', '', '2020-07-24 10:24:53', '2020-07-24 07:24:53', '', 0, 'https://xn----dtbfcayavl9a1i.xn--p1ai/?page_id=9', 0, 'page', '', 0),
(10, 1, '2020-06-18 04:40:01', '2020-06-18 01:40:01', '<!-- wp:paragraph -->\n<p>Современный коттеджный Поселок</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-18 04:40:01', '2020-06-18 01:40:01', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/18/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2020-06-18 07:30:19', '2020-06-18 04:30:19', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России. Тополево неоднократно занимало призовое место в этой номинации. Преимущества района очевидны:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Развитая инфраструктура (Школа, детские сады, поликлиника, магазины)</li><li>Крупнейший торговый центр \"Стрелка\" в 3км, в котором есть самый большой на сегодняшний день детский развлекательный центр</li><li>Все виды льгот для сельской местности (по коммунальным плетежам, по регистрации автомобиля и др.</li><li>Экология</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это огороженное, безопасное место с охраняемой территорией и шлагбаумом. Это ваш надежный дом на собственном большом участке.</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-18 07:30:19', '2020-06-18 04:30:19', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/18/9-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2020-06-18 08:08:11', '2020-06-18 05:08:11', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России. Тополево неоднократно занимало призовое место в этой номинации. Преимущества района очевидны:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Развитая инфраструктура (Школа, детские сады, поликлиника, магазины)</li><li>Крупнейший торговый центр \"Стрелка\" в 3км, в котором есть самый большой на сегодняшний день детский развлекательный центр</li><li>Все виды льгот для сельской местности (по коммунальным плетежам, по регистрации автомобиля и др.</li><li>Экология</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это огороженное, безопасное место с охраняемой территорией и шлагбаумом. Это ваш надежный дом на собственном большом участке.</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-18 08:08:11', '2020-06-18 05:08:11', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/18/9-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2020-06-18 08:16:32', '2020-06-18 05:16:32', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"9\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Поля главной страницы', '%d0%bf%d0%be%d0%bb%d1%8f-%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%be%d0%b9-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d1%8b', 'publish', 'closed', 'closed', '', 'group_5eeaf8710bb86', '', '', '2020-07-24 10:24:13', '2020-07-24 07:24:13', '', 0, 'https://xn----dtbfcayavl9a1i.xn--p1ai/?post_type=acf-field-group&#038;p=13', 0, 'acf-field-group', '', 0),
(14, 1, '2020-06-18 08:18:48', '2020-06-18 05:18:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:4:\"33.3\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Текст слайдера', 'slider_text', 'publish', 'closed', 'closed', '', 'field_5eeaf8b348b95', '', '', '2020-06-18 08:18:48', '2020-06-18 05:18:48', '', 13, 'https://xn----dtbfcayavl9a1i.xn--p1ai/?post_type=acf-field&p=14', 0, 'acf-field', '', 0),
(15, 1, '2020-06-18 08:18:48', '2020-06-18 05:18:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:4:\"33.3\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок слайдера', 'slider_head', 'publish', 'closed', 'closed', '', 'field_5eeaf90148b96', '', '', '2020-06-18 08:18:48', '2020-06-18 05:18:48', '', 13, 'https://xn----dtbfcayavl9a1i.xn--p1ai/?post_type=acf-field&p=15', 1, 'acf-field', '', 0),
(16, 1, '2020-06-18 08:18:48', '2020-06-18 05:18:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:4:\"33.3\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Нижний текст слайдера', 'slider_bottom_text', 'publish', 'closed', 'closed', '', 'field_5eeaf91c48b97', '', '', '2020-06-18 08:18:48', '2020-06-18 05:18:48', '', 13, 'https://xn----dtbfcayavl9a1i.xn--p1ai/?post_type=acf-field&p=16', 2, 'acf-field', '', 0),
(17, 1, '2020-06-18 08:23:23', '2020-06-18 05:23:23', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Картинки слайдера', 'slider_imgs', 'publish', 'closed', 'closed', '', 'field_5eeaf9e56adb8', '', '', '2020-06-18 10:11:24', '2020-06-18 07:11:24', '', 13, 'https://xn----dtbfcayavl9a1i.xn--p1ai/?post_type=acf-field&#038;p=17', 3, 'acf-field', '', 0),
(18, 1, '2020-06-18 08:23:23', '2020-06-18 05:23:23', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Картинка слайдера', 'slider_img', 'publish', 'closed', 'closed', '', 'field_5eeafa146adb9', '', '', '2020-06-18 10:12:30', '2020-06-18 07:12:30', '', 17, 'https://xn----dtbfcayavl9a1i.xn--p1ai/?post_type=acf-field&#038;p=18', 0, 'acf-field', '', 0),
(19, 1, '2020-06-18 08:35:17', '2020-06-18 05:35:17', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2020-06-18 08:35:17', '2020-06-18 05:35:17', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2020-06-18 08:35:40', '2020-06-18 05:35:40', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2020-06-18 08:35:40', '2020-06-18 05:35:40', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2020-06-18 08:35:56', '2020-06-18 05:35:56', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2020-06-18 08:35:56', '2020-06-18 05:35:56', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2020-06-18 08:36:22', '2020-06-18 05:36:22', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России. Тополево неоднократно занимало призовое место в этой номинации. Преимущества района очевидны:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Развитая инфраструктура (Школа, детские сады, поликлиника, магазины)</li><li>Крупнейший торговый центр \"Стрелка\" в 3км, в котором есть самый большой на сегодняшний день детский развлекательный центр</li><li>Все виды льгот для сельской местности (по коммунальным плетежам, по регистрации автомобиля и др.</li><li>Экология</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это огороженное, безопасное место с охраняемой территорией и шлагбаумом. Это ваш надежный дом на собственном большом участке.</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-18 08:36:22', '2020-06-18 05:36:22', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/18/9-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2020-06-18 08:36:29', '2020-06-18 05:36:29', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России. Тополево неоднократно занимало призовое место в этой номинации. Преимущества района очевидны:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Развитая инфраструктура (Школа, детские сады, поликлиника, магазины)</li><li>Крупнейший торговый центр \"Стрелка\" в 3км, в котором есть самый большой на сегодняшний день детский развлекательный центр</li><li>Все виды льгот для сельской местности (по коммунальным плетежам, по регистрации автомобиля и др.</li><li>Экология</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это огороженное, безопасное место с охраняемой территорией и шлагбаумом. Это ваш надежный дом на собственном большом участке.</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-18 08:36:29', '2020-06-18 05:36:29', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/18/9-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2020-06-18 09:09:52', '2020-06-18 06:09:52', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России. Тополево неоднократно занимало призовое место в этой номинации. Преимущества района очевидны:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Развитая инфраструктура (Школа, детские сады, поликлиника, магазины)</li><li>Крупнейший торговый центр \"Стрелка\" в 3км, в котором есть самый большой на сегодняшний день детский развлекательный центр</li><li>Все виды льгот для сельской местности (по коммунальным плетежам, по регистрации автомобиля и др.</li><li>Экология</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это огороженное, безопасное место с охраняемой территорией и шлагбаумом. Это ваш надежный дом на собственном большом участке.</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-18 09:09:52', '2020-06-18 06:09:52', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/18/9-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2020-06-18 11:00:11', '2020-06-18 08:00:11', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России. Тополево неоднократно занимало призовое место в этой номинации. Преимущества района очевидны:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Развитая инфраструктура (Школа, детские сады, поликлиника, магазины)</li><li>Крупнейший торговый центр \"Стрелка\" в 3км, в котором есть самый большой на сегодняшний день детский развлекательный центр</li><li>Все виды льгот для сельской местности (по коммунальным плетежам, по регистрации автомобиля и др.</li><li>Экология</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это огороженное, безопасное место с охраняемой территорией и шлагбаумом. Это ваш надежный дом на собственном большом участке.</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-18 11:00:11', '2020-06-18 08:00:11', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/18/9-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2020-06-18 11:07:19', '2020-06-18 08:07:19', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России. Тополево неоднократно занимало призовое место в этой номинации. Преимущества района очевидны:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Развитая инфраструктура (Школа, детские сады, поликлиника, магазины)</li><li>Крупнейший торговый центр \"Стрелка\" в 3км, в котором есть самый большой на сегодняшний день детский развлекательный центр</li><li>Все виды льгот для сельской местности (по коммунальным плетежам, по регистрации автомобиля и др.</li><li>Экология</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это огороженное, безопасное место с охраняемой территорией и шлагбаумом. Это ваш надежный дом на собственном большом участке.</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-18 11:07:19', '2020-06-18 08:07:19', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/18/9-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2020-06-19 02:49:05', '2020-06-18 23:49:05', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России. Тополево неоднократно занимало призовое место в этой номинации. Преимущества района очевидны:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Развитая инфраструктура (Школа, детские сады, поликлиника, магазины)</li><li>Крупнейший торговый центр \"Стрелка\" в 3км, в котором есть самый большой на сегодняшний день детский развлекательный центр</li><li>Все виды льгот для сельской местности (по коммунальным плетежам, по регистрации автомобиля и др.</li><li>Экология</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это огороженное, безопасное место с охраняемой территорией и шлагбаумом. Это ваш надежный дом на собственном большом участке.</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-19 02:49:05', '2020-06-18 23:49:05', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/19/9-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2020-06-19 02:49:50', '2020-06-18 23:49:50', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России. Тополево неоднократно занимало призовое место в этой номинации. Преимущества района очевидны:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Развитая инфраструктура (Школа, детские сады, поликлиника, магазины)</li><li>Крупнейший торговый центр \"Стрелка\" в 3км, в котором есть самый большой на сегодняшний день детский развлекательный центр</li><li>Все виды льгот для сельской местности (по коммунальным плетежам, по регистрации автомобиля и др.</li><li>Экология</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это огороженное, безопасное место с охраняемой территорией и шлагбаумом. Это ваш надежный дом на собственном большом участке.</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-19 02:49:50', '2020-06-18 23:49:50', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/19/9-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2020-06-19 03:04:48', '2020-06-19 00:04:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Номер телефона раздела \"Контакты\"', 'contact_phone', 'publish', 'closed', 'closed', '', 'field_5eebffb6b1a86', '', '', '2020-07-24 10:24:13', '2020-07-24 07:24:13', '', 13, 'https://xn----dtbfcayavl9a1i.xn--p1ai/?post_type=acf-field&#038;p=33', 4, 'acf-field', '', 0),
(34, 1, '2020-06-19 03:04:48', '2020-06-19 00:04:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Адрес поселка раздела \"Контакты\"', 'address', 'publish', 'closed', 'closed', '', 'field_5eebffe6b1a87', '', '', '2020-07-24 10:24:13', '2020-07-24 07:24:13', '', 13, 'https://xn----dtbfcayavl9a1i.xn--p1ai/?post_type=acf-field&#038;p=34', 5, 'acf-field', '', 0),
(35, 1, '2020-06-19 03:04:48', '2020-06-19 00:04:48', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Instagram ссылки', 'instagram_links', 'publish', 'closed', 'closed', '', 'field_5eec001eb1a88', '', '', '2020-07-24 10:24:13', '2020-07-24 07:24:13', '', 13, 'https://xn----dtbfcayavl9a1i.xn--p1ai/?post_type=acf-field&#038;p=35', 6, 'acf-field', '', 0),
(36, 1, '2020-06-19 03:04:48', '2020-06-19 00:04:48', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Instagram Link', 'instagram_link', 'publish', 'closed', 'closed', '', 'field_5eec00e7b1a89', '', '', '2020-06-19 03:04:48', '2020-06-19 00:04:48', '', 35, 'https://xn----dtbfcayavl9a1i.xn--p1ai/?post_type=acf-field&p=36', 0, 'acf-field', '', 0),
(37, 1, '2020-06-19 03:04:48', '2020-06-19 00:04:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Текст Instagram ссылки', 'instagram_link_text', 'publish', 'closed', 'closed', '', 'field_5eec00ffb1a8a', '', '', '2020-06-19 03:04:48', '2020-06-19 00:04:48', '', 35, 'https://xn----dtbfcayavl9a1i.xn--p1ai/?post_type=acf-field&p=37', 1, 'acf-field', '', 0),
(38, 1, '2020-06-19 03:06:10', '2020-06-19 00:06:10', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России. Тополево неоднократно занимало призовое место в этой номинации. Преимущества района очевидны:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Развитая инфраструктура (Школа, детские сады, поликлиника, магазины)</li><li>Крупнейший торговый центр \"Стрелка\" в 3км, в котором есть самый большой на сегодняшний день детский развлекательный центр</li><li>Все виды льгот для сельской местности (по коммунальным плетежам, по регистрации автомобиля и др.</li><li>Экология</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это огороженное, безопасное место с охраняемой территорией и шлагбаумом. Это ваш надежный дом на собственном большом участке.</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-19 03:06:10', '2020-06-19 00:06:10', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/19/9-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-06-19 03:13:48', '2020-06-19 00:13:48', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России. Тополево неоднократно занимало призовое место в этой номинации. Преимущества района очевидны:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Развитая инфраструктура (Школа, детские сады, поликлиника, магазины)</li><li>Крупнейший торговый центр \"Стрелка\" в 3км, в котором есть самый большой на сегодняшний день детский развлекательный центр</li><li>Все виды льгот для сельской местности (по коммунальным плетежам, по регистрации автомобиля и др.</li><li>Экология</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это огороженное, безопасное место с охраняемой территорией и шлагбаумом. Это ваш надежный дом на собственном большом участке.</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-19 03:13:48', '2020-06-19 00:13:48', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/19/9-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-06-19 04:28:01', '2020-06-19 01:28:01', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России. Тополево неоднократно занимало призовое место в этой номинации. Преимущества района очевидны:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Развитая инфраструктура (Школа, детские сады, поликлиника, магазины)</li><li>Крупнейший торговый центр \"Стрелка\" в 3км, в котором есть самый большой на сегодняшний день детский развлекательный центр</li><li>Все виды льгот для сельской местности (по коммунальным плетежам, по регистрации автомобиля и др.</li><li>Экологически чистый район</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это огороженное, безопасное место с охраняемой территорией и шлагбаумом. Это ваш надежный дом на собственном большом участке.</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-19 04:28:01', '2020-06-19 01:28:01', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/19/9-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2020-06-19 04:28:24', '2020-06-19 01:28:24', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России. Тополево неоднократно занимало призовое место в этой номинации.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Преимущества района очевидны:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Развитая инфраструктура (Школа, детские сады, поликлиника, магазины)</li><li>Крупнейший торговый центр \"Стрелка\" в 3км, в котором есть самый большой на сегодняшний день детский развлекательный центр</li><li>Все виды льгот для сельской местности (по коммунальным плетежам, по регистрации автомобиля и др.</li><li>Экологически чистый район</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это огороженное, безопасное место с охраняемой территорией и шлагбаумом. Это ваш надежный дом на собственном большом участке.</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-19 04:28:24', '2020-06-19 01:28:24', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/19/9-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2020-06-19 04:29:13', '2020-06-19 01:29:13', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России. Тополево неоднократно занимало призовое место в этой номинации. <br>Преимущества района очевидны:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Развитая инфраструктура (Школа, детские сады, поликлиника, магазины)</li><li>Крупнейший торговый центр \"Стрелка\" в 3км, в котором есть самый большой на сегодняшний день детский развлекательный центр</li><li>Все виды льгот для сельской местности (по коммунальным плетежам, по регистрации автомобиля и др.</li><li>Экологически чистый район</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это огороженное, безопасное место с охраняемой территорией и шлагбаумом. Это ваш надежный дом на собственном большом участке.</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-19 04:29:13', '2020-06-19 01:29:13', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/19/9-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2020-06-19 04:34:45', '2020-06-19 01:34:45', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. <br>Преимущества района очевидны:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Развитая инфраструктура (Школа, детские сады, поликлиника, магазины);</li><li>Крупнейший торговый центр \"Стрелка\" в 3км, в котором есть самый большой на сегодняшний день детский развлекательный центр;</li><li>Все виды льгот для сельской местности (по коммунальным плетежам, по регистрации автомобиля и др.</li><li>Поселок расположен в 15 минутах от центра города;</li><li>Экологически чистый район.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это огороженное, безопасное место с охраняемой территорией и шлагбаумом, отличной подъездной дорогой, центральным водоснабжением. Это ваш надежный дом на собственном большом участке, на котором можно расположить баню, построить бассейн, обустроить зону барбекю или развести сад.<br>Пожалуй, это самое лучшее место для жизни!</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-19 04:34:45', '2020-06-19 01:34:45', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/19/9-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2020-06-19 04:35:19', '2020-06-19 01:35:19', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. <br><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Развитая инфраструктура (Школа, детские сады, поликлиника, магазины);</li><li>Крупнейший торговый центр \"Стрелка\" в 3км, в котором есть самый большой на сегодняшний день детский развлекательный центр;</li><li>Все виды льгот для сельской местности (по коммунальным плетежам, по регистрации автомобиля и др.</li><li>Поселок расположен в 15 минутах от центра города;</li><li>Экологически чистый район.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это огороженное, безопасное место с охраняемой территорией и шлагбаумом, отличной подъездной дорогой, центральным водоснабжением. Это ваш надежный дом на собственном большом участке, на котором можно расположить баню, построить бассейн, обустроить зону барбекю или развести сад.<br>Пожалуй, это самое лучшее место для жизни!</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-19 04:35:19', '2020-06-19 01:35:19', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/19/9-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-06-19 04:35:36', '2020-06-19 01:35:36', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Развитая инфраструктура (Школа, детские сады, поликлиника, магазины);</li><li>Крупнейший торговый центр \"Стрелка\" в 3км, в котором есть самый большой на сегодняшний день детский развлекательный центр;</li><li>Все виды льгот для сельской местности (по коммунальным плетежам, по регистрации автомобиля и др.</li><li>Поселок расположен в 15 минутах от центра города;</li><li>Экологически чистый район.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это огороженное, безопасное место с охраняемой территорией и шлагбаумом, отличной подъездной дорогой, центральным водоснабжением. Это ваш надежный дом на собственном большом участке, на котором можно расположить баню, построить бассейн, обустроить зону барбекю или развести сад.<br>Пожалуй, это самое лучшее место для жизни!</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-19 04:35:36', '2020-06-19 01:35:36', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/19/9-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2020-06-19 04:35:55', '2020-06-19 01:35:55', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Развитая инфраструктура (школа, детские сады, поликлиника, магазины);</li><li>Крупнейший торговый центр \"Стрелка\" в 3км, в котором есть самый большой на сегодняшний день детский развлекательный центр;</li><li>Все виды льгот для сельской местности (по коммунальным плетежам, по регистрации автомобиля и др.);</li><li>Поселок расположен в 15 минутах от центра города;</li><li>Экологически чистый район.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это огороженное, безопасное место с охраняемой территорией и шлагбаумом, отличной подъездной дорогой, центральным водоснабжением. Это ваш надежный дом на собственном большом участке, на котором можно расположить баню, построить бассейн, обустроить зону барбекю или развести сад.<br>Пожалуй, это самое лучшее место для жизни!</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-19 04:35:55', '2020-06-19 01:35:55', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/19/9-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2020-06-19 04:36:03', '2020-06-19 01:36:03', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Развитая инфраструктура (школа, детские сады, поликлиника, магазины);</li><li>Крупнейший торговый центр \"Стрелка\" в 3км, в котором есть самый большой на сегодняшний день детский развлекательный центр;</li><li>Все виды льгот для сельской местности (по коммунальным платежам, по регистрации автомобиля и др.);</li><li>Поселок расположен в 15 минутах от центра города;</li><li>Экологически чистый район.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это огороженное, безопасное место с охраняемой территорией и шлагбаумом, отличной подъездной дорогой, центральным водоснабжением. Это ваш надежный дом на собственном большом участке, на котором можно расположить баню, построить бассейн, обустроить зону барбекю или развести сад.<br>Пожалуй, это самое лучшее место для жизни!</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-19 04:36:03', '2020-06-19 01:36:03', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/19/9-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2020-06-19 04:36:23', '2020-06-19 01:36:23', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Развитая инфраструктура (школа, детские сады, поликлиника, магазины);</li><li>Крупнейший торговый центр \"Стрелка\" в 3 км, в котором есть самый большой на сегодняшний день детский развлекательный центр;</li><li>Все виды льгот для сельской местности (по коммунальным платежам, по регистрации автомобиля и др.);</li><li>Поселок расположен в 15 минутах от центра города;</li><li>Экологически чистый район.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это огороженное, безопасное место с охраняемой территорией и шлагбаумом, отличной подъездной дорогой, центральным водоснабжением. Это ваш надежный дом на собственном большом участке, на котором можно расположить баню, построить бассейн, обустроить зону барбекю или развести сад.<br>Пожалуй, это самое лучшее место для жизни!</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-19 04:36:23', '2020-06-19 01:36:23', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/19/9-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2020-06-19 04:37:39', '2020-06-19 01:37:39', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Развитая инфраструктура (школа, детские сады, поликлиника, магазины);</li><li>Крупнейший торговый центр \"Стрелка\" в 3 км, в котором есть самый большой на сегодняшний день детский развлекательный центр;</li><li>Все виды льгот для сельской местности (по коммунальным платежам, по регистрации автомобиля и др.);</li><li>Поселок расположен в 15 минутах от центра города;</li><li>Экологически чистый район.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это огороженное, безопасное место с охраняемой территорией и шлагбаумом, отличной подъездной дорогой, центральным водоснабжением. Это ваш <strong>надежный дом</strong> на собственном большом участке, на котором можно построить баню, расположить бассейн, обустроить зону барбекю или развести сад.<br>Пожалуй, это самое лучшее место для жизни!</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-19 04:37:39', '2020-06-19 01:37:39', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/19/9-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-06-19 04:38:48', '2020-06-19 01:38:48', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Развитая инфраструктура (школа, детские сады, поликлиника, магазины);</li><li>Крупнейший торговый центр \"Стрелка\" в 3 км, в котором есть самый большой на сегодняшний день детский развлекательный центр;</li><li>Все виды льгот для сельской местности (по коммунальным платежам, по регистрации автомобиля и др.);</li><li>Поселок расположен в 15 минутах от центра города;</li><li>Экологически чистый район.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это огороженное, безопасное место с охраняемой территорией и шлагбаумом, отличной подъездной дорогой, центральным водоснабжением. Это ваш <strong><a href=\"https://kpd100zavod.ru/\" target=\"_blank\" rel=\"noreferrer noopener\">надежный дом</a></strong> на собственном большом участке, на котором можно построить баню, расположить бассейн, обустроить зону барбекю или развести сад.<br>Пожалуй, это самое лучшее место для жизни!</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-19 04:38:48', '2020-06-19 01:38:48', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/19/9-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2020-06-19 05:12:08', '2020-06-19 02:12:08', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Развитая инфраструктура (школа, детские сады, поликлиника, магазины);</li><li>Крупнейший торговый центр \"Стрелка\" в 3 км, в котором есть самый большой на сегодняшний день детский развлекательный центр;</li><li>Все виды льгот для сельской местности (по коммунальным платежам, по регистрации автомобиля и др.);</li><li>Поселок расположен в 15 минутах от центра города;</li><li>Экологически чистый район.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это место с охраняемой территорией и шлагбаумом, ровной подъездной дорогой, центральным водоснабжением! Это ваш <strong><a rel=\"noreferrer noopener\" href=\"https://kpd100zavod.ru/\" target=\"_blank\">надежный дом</a></strong> на собственном большом участке, на котором можно построить баню, расположить бассейн, обустроить мангальную зону или разбить сад.<br>Пожалуй, это самое лучшее место для жизни!</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-19 05:12:08', '2020-06-19 02:12:08', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/19/9-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2020-06-19 05:12:32', '2020-06-19 02:12:32', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Развитая инфраструктура (школа, детские сады, поликлиника, магазины);</li><li>Крупнейший торговый центр \"Стрелка\" в 3 км, в котором есть самый большой на сегодняшний день детский развлекательный центр;</li><li>Все виды льгот для сельской местности (по коммунальным платежам, по регистрации автомобиля и др.);</li><li>Поселок расположен в 15 минутах от центра города;</li><li>Экологически чистый район.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это место с охраняемой территорией и шлагбаумом, ровной подъездной дорогой, центральным водоснабжением! Это ваш <strong><a rel=\"noreferrer noopener\" href=\"https://kpd100zavod.ru/\" target=\"_blank\">надежный дом</a></strong> на собственном большом участке, на котором можно построить баню, расположить бассейн или обустроить мангальную зону.<br>Пожалуй, это самое лучшее место для жизни!</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-19 05:12:32', '2020-06-19 02:12:32', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/19/9-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2020-06-19 05:26:00', '2020-06-19 02:26:00', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Транспортная доступность (одна остановка от ул. Карла-Маркса, 15 мин до пл. Ленина);</li><li>Развитая инфраструктура (школа, детские сады, поликлиника, магазины);</li><li>Крупнейший торговый центр \"Стрелка\" в 3 км, в котором есть самый большой на сегодняшний день детский развлекательный центр;</li><li>Все виды льгот для сельской местности (по коммунальным платежам, по регистрации автомобиля и др.);</li><li>Поселок расположен в 15 минутах от центра города;</li><li>Экологически чистый район.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это место с охраняемой территорией и шлагбаумом, ровной подъездной дорогой, центральным водоснабжением! Это ваш <strong><a rel=\"noreferrer noopener\" href=\"https://kpd100zavod.ru/\" target=\"_blank\">надежный дом</a></strong> на собственном большом участке, на котором можно построить баню, расположить бассейн или обустроить мангальную зону.<br>Пожалуй, это самое лучшее место для жизни!</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-19 05:26:00', '2020-06-19 02:26:00', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/19/9-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-06-19 05:26:30', '2020-06-19 02:26:30', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Транспортная доступность (одна остановка от ул. Карла-Маркса, 15 мин до пл. Ленина);</li><li>Экологически чистый и \"зеленый\" район;</li><li>Развитая инфраструктура (школа, детские сады, поликлиника, магазины);</li><li>Крупнейший торговый центр \"Стрелка\" в 3 км, в котором есть самый большой на сегодняшний день детский развлекательный центр;</li><li>Все виды льгот для сельской местности (по коммунальным платежам, по регистрации автомобиля и др.);</li><li>Поселок расположен в 15 минутах от центра города;</li><li>.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это место с охраняемой территорией и шлагбаумом, ровной подъездной дорогой, центральным водоснабжением! Это ваш <strong><a rel=\"noreferrer noopener\" href=\"https://kpd100zavod.ru/\" target=\"_blank\">надежный дом</a></strong> на собственном большом участке, на котором можно построить баню, расположить бассейн или обустроить мангальную зону.<br>Пожалуй, это самое лучшее место для жизни!</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-19 05:26:30', '2020-06-19 02:26:30', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/19/9-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2020-06-19 05:27:40', '2020-06-19 02:27:40', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Транспортная доступность (одна остановка от ул. Карла-Маркса, 15 мин до пл. Ленина);</li><li>Экологически чистый и \"зеленый\" район;</li><li>Развитая инфраструктура (школа, детские сады, поликлиника, магазины);</li><li>Все виды льгот для сельской местности (по коммунальным платежам, по регистрации автомобиля, по налогообложению и др.);</li><li>Крупнейший торговый центр \"Стрелка\" в 3 км, в котором есть самый большой на сегодняшний день детский развлекательный центр;</li><li>Поселок расположен в 15 минутах от центра города;</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это место с охраняемой территорией и шлагбаумом, ровной подъездной дорогой, центральным водоснабжением! Это ваш <strong><a rel=\"noreferrer noopener\" href=\"https://kpd100zavod.ru/\" target=\"_blank\">надежный дом</a></strong> на собственном большом участке, на котором можно построить баню, расположить бассейн или обустроить мангальную зону.<br>Пожалуй, это самое лучшее место для жизни!</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-19 05:27:40', '2020-06-19 02:27:40', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/19/9-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(57, 1, '2020-06-19 05:28:20', '2020-06-19 02:28:20', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Транспортная доступность (одна остановка от ул. Карла-Маркса, 15 мин до пл. Ленина);</li><li>Экологически чистый и \"зеленый\" район;</li><li>Развитая инфраструктура (школа, детские сады, поликлиника, магазины);</li><li>Все виды льгот для сельской местности (по коммунальным платежам, по регистрации автомобиля, по налогообложению и др.);</li><li>Крупнейший ТЦ \"Стрелка\" в 3 км, в котором есть самый большой на сегодняшний день детский развлекательный центр.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это место с охраняемой территорией и шлагбаумом, ровной подъездной дорогой, центральным водоснабжением! Это ваш <strong><a rel=\"noreferrer noopener\" href=\"https://kpd100zavod.ru/\" target=\"_blank\">надежный дом</a></strong> на собственном большом участке, на котором можно построить баню, расположить бассейн или обустроить мангальную зону.<br>Пожалуй, это самое лучшее место для жизни!</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-19 05:28:20', '2020-06-19 02:28:20', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/19/9-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2020-06-19 05:34:09', '2020-06-19 02:34:09', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Транспортная доступность (одна остановка от ул. Карла-Маркса, 15 мин до пл. Ленина);</li><li>Экологически чистый и \"зеленый\" район;</li><li>Развитая инфраструктура (школа, детские сады, поликлиника, магазины);</li><li>Все виды льгот для сельской местности (по коммунальным платежам, по регистрации автомобиля, по налогообложению и др.);</li><li>Крупнейший ТЦ \"Стрелка\" в 3 км, в котором есть самый большой на сегодняшний день детский развлекательный центр.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это место с охраняемой территорией и шлагбаумом, ровной подъездной дорогой, центральным водоснабжением! Это ваш <strong><a rel=\"noreferrer noopener\" href=\"https://kpd100zavod.ru/\" target=\"_blank\">надежный дом</a></strong> на собственном большом участке от 8 до 12 соток, на котором можно построить баню, расположить бассейн или обустроить мангальную зону.<br>Пожалуй, это самое лучшее место для жизни!</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-19 05:34:09', '2020-06-19 02:34:09', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/19/9-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2020-06-19 09:30:13', '2020-06-19 06:30:13', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Транспортная доступность (одна остановка от ул. Карла-Маркса, 15 мин до пл. Ленина);</li><li>Экологически чистый и \"зеленый\" район;</li><li>Развитая инфраструктура (школа, детские сады, поликлиника, магазины);</li><li>Все виды льгот для сельской местности (по коммунальным платежам, по регистрации автомобиля, по налогообложению и др.);</li><li>Крупнейший ТЦ \"Стрелка\" в 3 км, в котором есть самый большой на сегодняшний день детский развлекательный центр.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это место с охраняемой территорией и шлагбаумом, ровной подъездной дорогой, центральным водоснабжением! Это ваш <strong><a rel=\"noreferrer noopener\" href=\"https://kpd100zavod.ru/\" target=\"_blank\">надежный дом</a></strong> на собственном большом участке от 8 до 12 соток, на котором можно построить баню, расположить бассейн или обустроить мангальную зону.<br>Пожалуй, это самое лучшее место для жизни!</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-19 09:30:13', '2020-06-19 06:30:13', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/19/9-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-06-19 09:30:44', '2020-06-19 06:30:44', '<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Транспортная доступность (одна остановка от ул. Карла-Маркса, 15 мин до пл. Ленина);</li><li>Экологически чистый и \"зеленый\" район;</li><li>Развитая инфраструктура (школа, детские сады, поликлиника, магазины);</li><li>Все виды льгот для сельской местности (по коммунальным платежам, по регистрации автомобиля, по налогообложению и др.);</li><li>Крупнейший ТЦ \"Стрелка\" в 3 км, в котором есть самый большой на сегодняшний день детский развлекательный центр.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это место с охраняемой территорией и шлагбаумом, ровной подъездной дорогой, центральным водоснабжением! Это ваш <strong><a rel=\"noreferrer noopener\" href=\"https://kpd100zavod.ru/\" target=\"_blank\">надежный дом</a></strong> на собственном большом участке от 8 до 12 соток, на котором можно построить баню, расположить бассейн или обустроить мангальную зону.<br>Пожалуй, это самое лучшее место для жизни!</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-19 09:30:44', '2020-06-19 06:30:44', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/19/9-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-06-22 04:38:56', '2020-06-22 01:38:56', '<!-- wp:heading -->\n<h2>Где находится поселок «Семейный»?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Транспортная доступность (одна остановка от ул. Карла-Маркса, 15 мин до пл. Ленина);</li><li>Экологически чистый и \"зеленый\" район;</li><li>Развитая инфраструктура (школа, детские сады, поликлиника, магазины);</li><li>Все виды льгот для сельской местности (по коммунальным платежам, по регистрации автомобиля, по налогообложению и др.);</li><li>Крупнейший ТЦ \"Стрелка\" в 3 км, в котором есть самый большой на сегодняшний день детский развлекательный центр.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это место с охраняемой территорией и шлагбаумом, ровной подъездной дорогой, центральным водоснабжением! Это ваш <strong><a rel=\"noreferrer noopener\" href=\"https://kpd100zavod.ru/\" target=\"_blank\">надежный дом</a></strong> на собственном большом участке от 8 до 12 соток, на котором можно построить баню, расположить бассейн или обустроить мангальную зону.<br>Пожалуй, это самое лучшее место для жизни!</p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-22 04:38:56', '2020-06-22 01:38:56', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/22/9-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2020-06-22 04:41:48', '2020-06-22 01:41:48', '<!-- wp:heading -->\n<h2>Где находится поселок «Семейный»?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Транспортная доступность (одна остановка от ул. Карла-Маркса, 15 мин до пл. Ленина);</li><li>Экологически чистый и \"зеленый\" район;</li><li>Развитая инфраструктура (школа, детские сады, поликлиника, магазины);</li><li>Все виды льгот для сельской местности (по коммунальным платежам, по регистрации автомобиля, по налогообложению и др.);</li><li>Крупнейший ТЦ \"Стрелка\" в 3 км, в котором есть самый большой на сегодняшний день детский развлекательный центр.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Поселок «Семейный» - это место с охраняемой территорией и шлагбаумом, ровной подъездной дорогой, центральным водоснабжением! Это ваш <strong><a rel=\"noreferrer noopener\" href=\"https://kpd100zavod.ru/\" target=\"_blank\">надежный дом</a></strong> на собственном большом участке от 8 до 12 соток, на котором можно построить баню, расположить бассейн или обустроить мангальную зону.<br>Пожалуй, это самое лучшее место для жизни!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>О коттеджном поселке</h2>\n<!-- /wp:heading -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-22 04:41:48', '2020-06-22 01:41:48', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/22/9-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-06-22 05:46:17', '2020-06-22 02:46:17', '<!-- wp:heading -->\n<h2>Где находится поселок «Семейный»?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Транспортная доступность (одна остановка от ул. Карла-Маркса, 15 мин до пл. Ленина);</li><li>Экологически чистый и \"зеленый\" район;</li><li>Развитая инфраструктура (школа, детские сады, поликлиника, магазины);</li><li>Все виды льгот для сельской местности (по коммунальным платежам, по регистрации автомобиля, по налогообложению и др.);</li><li>Крупнейший ТЦ \"Стрелка\" в 3 км, в котором есть самый большой на сегодняшний день детский развлекательный центр.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Наш коттеджный поселок - это:</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Охраняемая огороженная территория с шлагбаумом на 26 домов, окруженная коттеджной застройкой, со всеми необходимыми коммуникациями ( центральное водоснабжение, централизованная канализация, электросети - 15кВт на дом );</li><li>Собственный участок от 8 до 10 соток, на котором можно построить баню, расположить бассейн, обустроить шашлычную зону, спортивную площадку или гараж.</li><li>Ровная подъездная дорога</li></ul>\n<!-- /wp:list -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-22 05:46:17', '2020-06-22 02:46:17', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/22/9-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2020-06-22 05:59:48', '2020-06-22 02:59:48', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', '2х этажные дома', 'double_floor_houses', 'publish', 'closed', 'closed', '', 'field_5ef01ceab3619', '', '', '2020-07-24 10:24:13', '2020-07-24 07:24:13', '', 13, 'https://xn----dtbfcayavl9a1i.xn--p1ai/?post_type=acf-field&#038;p=65', 7, 'acf-field', '', 0),
(66, 1, '2020-06-22 05:59:48', '2020-06-22 02:59:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"10\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Название дома', 'house_name', 'publish', 'closed', 'closed', '', 'field_5ef01d01b361a', '', '', '2020-06-22 07:11:10', '2020-06-22 04:11:10', '', 65, 'https://xn----dtbfcayavl9a1i.xn--p1ai/?post_type=acf-field&#038;p=66', 0, 'acf-field', '', 0),
(67, 1, '2020-06-22 05:59:48', '2020-06-22 02:59:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"10\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Площадь дома', 'house_area', 'publish', 'closed', 'closed', '', 'field_5ef01d6fb361b', '', '', '2020-06-22 07:08:33', '2020-06-22 04:08:33', '', 65, 'https://xn----dtbfcayavl9a1i.xn--p1ai/?post_type=acf-field&#038;p=67', 1, 'acf-field', '', 0),
(68, 1, '2020-06-22 05:59:48', '2020-06-22 02:59:48', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Описание дома', 'house_description', 'publish', 'closed', 'closed', '', 'field_5ef01dbab361c', '', '', '2020-06-22 06:01:01', '2020-06-22 03:01:01', '', 65, 'https://xn----dtbfcayavl9a1i.xn--p1ai/?post_type=acf-field&#038;p=68', 3, 'acf-field', '', 0),
(69, 1, '2020-06-22 05:59:48', '2020-06-22 02:59:48', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Изображения дома', 'house_images', 'publish', 'closed', 'closed', '', 'field_5ef01e4db361d', '', '', '2020-06-22 07:11:10', '2020-06-22 04:11:10', '', 65, 'https://xn----dtbfcayavl9a1i.xn--p1ai/?post_type=acf-field&#038;p=69', 4, 'acf-field', '', 0),
(70, 1, '2020-06-22 05:59:48', '2020-06-22 02:59:48', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Изображение дома', 'house_image', 'publish', 'closed', 'closed', '', 'field_5ef01e53b361e', '', '', '2020-06-22 05:59:48', '2020-06-22 02:59:48', '', 69, 'https://xn----dtbfcayavl9a1i.xn--p1ai/?post_type=acf-field&p=70', 0, 'acf-field', '', 0),
(72, 1, '2020-06-22 06:00:46', '2020-06-22 03:00:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"10\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Стоимость дома', 'house_price', 'publish', 'closed', 'closed', '', 'field_5ef01eb4e4f17', '', '', '2020-06-22 07:11:10', '2020-06-22 04:11:10', '', 65, 'https://xn----dtbfcayavl9a1i.xn--p1ai/?post_type=acf-field&#038;p=72', 2, 'acf-field', '', 0),
(73, 1, '2020-06-22 07:09:10', '2020-06-22 04:09:10', '', '1', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2020-06-22 07:09:10', '2020-06-22 04:09:10', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2020-06-22 07:09:11', '2020-06-22 04:09:11', '', '2', '', 'inherit', 'open', 'closed', '', '2-2', '', '', '2020-06-22 07:09:11', '2020-06-22 04:09:11', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2020-06-22 07:09:11', '2020-06-22 04:09:11', '', '3', '', 'inherit', 'open', 'closed', '', '3-2', '', '', '2020-06-22 07:09:11', '2020-06-22 04:09:11', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2020-06-22 07:09:12', '2020-06-22 04:09:12', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2020-06-22 07:09:12', '2020-06-22 04:09:12', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2020-06-22 07:09:13', '2020-06-22 04:09:13', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2020-06-22 07:09:13', '2020-06-22 04:09:13', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2020-06-22 07:09:13', '2020-06-22 04:09:13', '', 'scheme', '', 'inherit', 'open', 'closed', '', 'scheme', '', '', '2020-06-22 07:09:13', '2020-06-22 04:09:13', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/scheme.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2020-06-22 07:10:34', '2020-06-22 04:10:34', '<!-- wp:heading -->\n<h2>Где находится поселок «Семейный»?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Транспортная доступность (одна остановка от ул. Карла-Маркса, 15 мин до пл. Ленина);</li><li>Экологически чистый и \"зеленый\" район;</li><li>Развитая инфраструктура (школа, детские сады, поликлиника, магазины);</li><li>Все виды льгот для сельской местности (по коммунальным платежам, по регистрации автомобиля, по налогообложению и др.);</li><li>Крупнейший ТЦ \"Стрелка\" в 3 км, в котором есть самый большой на сегодняшний день детский развлекательный центр.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Наш коттеджный поселок - это:</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Охраняемая огороженная территория с шлагбаумом на 26 домов, окруженная коттеджной застройкой, со всеми необходимыми коммуникациями ( центральное водоснабжение, централизованная канализация, электросети - 15кВт на дом );</li><li>Собственный участок от 8 до 10 соток, на котором можно построить баню, расположить бассейн, обустроить шашлычную зону, спортивную площадку или гараж.</li><li>Ровная подъездная дорога</li></ul>\n<!-- /wp:list -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-22 07:10:34', '2020-06-22 04:10:34', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/22/9-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-06-22 07:10:39', '2020-06-22 04:10:39', '<!-- wp:heading -->\n<h2>Где находится поселок «Семейный»?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Транспортная доступность (одна остановка от ул. Карла-Маркса, 15 мин до пл. Ленина);</li><li>Экологически чистый и \"зеленый\" район;</li><li>Развитая инфраструктура (школа, детские сады, поликлиника, магазины);</li><li>Все виды льгот для сельской местности (по коммунальным платежам, по регистрации автомобиля, по налогообложению и др.);</li><li>Крупнейший ТЦ \"Стрелка\" в 3 км, в котором есть самый большой на сегодняшний день детский развлекательный центр.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Наш коттеджный поселок - это:</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Охраняемая огороженная территория с шлагбаумом на 26 домов, окруженная коттеджной застройкой, со всеми необходимыми коммуникациями ( центральное водоснабжение, централизованная канализация, электросети - 15кВт на дом );</li><li>Собственный участок от 8 до 10 соток, на котором можно построить баню, расположить бассейн, обустроить шашлычную зону, спортивную площадку или гараж.</li><li>Ровная подъездная дорога</li></ul>\n<!-- /wp:list -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-22 07:10:39', '2020-06-22 04:10:39', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/22/9-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2020-06-22 07:11:38', '2020-06-22 04:11:38', '<!-- wp:heading -->\n<h2>Где находится поселок «Семейный»?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Транспортная доступность (одна остановка от ул. Карла-Маркса, 15 мин до пл. Ленина);</li><li>Экологически чистый и \"зеленый\" район;</li><li>Развитая инфраструктура (школа, детские сады, поликлиника, магазины);</li><li>Все виды льгот для сельской местности (по коммунальным платежам, по регистрации автомобиля, по налогообложению и др.);</li><li>Крупнейший ТЦ \"Стрелка\" в 3 км, в котором есть самый большой на сегодняшний день детский развлекательный центр.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Наш коттеджный поселок - это:</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Охраняемая огороженная территория с шлагбаумом на 26 домов, окруженная коттеджной застройкой, со всеми необходимыми коммуникациями ( центральное водоснабжение, централизованная канализация, электросети - 15кВт на дом );</li><li>Собственный участок от 8 до 10 соток, на котором можно построить баню, расположить бассейн, обустроить шашлычную зону, спортивную площадку или гараж.</li><li>Ровная подъездная дорога</li></ul>\n<!-- /wp:list -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-22 07:11:38', '2020-06-22 04:11:38', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/22/9-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2020-06-22 07:31:17', '2020-06-22 04:31:17', '', '1', '', 'inherit', 'open', 'closed', '', '1-3', '', '', '2020-06-22 07:31:17', '2020-06-22 04:31:17', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2020-06-22 07:31:17', '2020-06-22 04:31:17', '', '2', '', 'inherit', 'open', 'closed', '', '2-3', '', '', '2020-06-22 07:31:17', '2020-06-22 04:31:17', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/2-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2020-06-22 07:31:18', '2020-06-22 04:31:18', '', '3', '', 'inherit', 'open', 'closed', '', '3-3', '', '', '2020-06-22 07:31:18', '2020-06-22 04:31:18', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/3-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2020-06-22 07:31:18', '2020-06-22 04:31:18', '', '4', '', 'inherit', 'open', 'closed', '', '4-2', '', '', '2020-06-22 07:31:18', '2020-06-22 04:31:18', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/4-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2020-06-22 07:31:19', '2020-06-22 04:31:19', '', '5', '', 'inherit', 'open', 'closed', '', '5-2', '', '', '2020-06-22 07:31:19', '2020-06-22 04:31:19', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/5-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2020-06-22 07:31:20', '2020-06-22 04:31:20', '', 'scheme', '', 'inherit', 'open', 'closed', '', 'scheme-2', '', '', '2020-06-22 07:31:20', '2020-06-22 04:31:20', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/scheme-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2020-06-22 07:32:33', '2020-06-22 04:32:33', '<!-- wp:heading -->\n<h2>Где находится поселок «Семейный»?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Транспортная доступность (одна остановка от ул. Карла-Маркса, 15 мин до пл. Ленина);</li><li>Экологически чистый и \"зеленый\" район;</li><li>Развитая инфраструктура (школа, детские сады, поликлиника, магазины);</li><li>Все виды льгот для сельской местности (по коммунальным платежам, по регистрации автомобиля, по налогообложению и др.);</li><li>Крупнейший ТЦ \"Стрелка\" в 3 км, в котором есть самый большой на сегодняшний день детский развлекательный центр.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Наш коттеджный поселок - это:</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Охраняемая огороженная территория с шлагбаумом на 26 домов, окруженная коттеджной застройкой, со всеми необходимыми коммуникациями ( центральное водоснабжение, централизованная канализация, электросети - 15кВт на дом );</li><li>Собственный участок от 8 до 10 соток, на котором можно построить баню, расположить бассейн, обустроить шашлычную зону, спортивную площадку или гараж.</li><li>Ровная подъездная дорога</li></ul>\n<!-- /wp:list -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-22 07:32:33', '2020-06-22 04:32:33', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/22/9-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2020-06-22 10:25:47', '2020-06-22 07:25:47', '<!-- wp:heading -->\n<h2>Где находится поселок «Семейный»?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Транспортная доступность (одна остановка от ул. Карла-Маркса, 15 мин до пл. Ленина);</li><li>Экологически чистый и \"зеленый\" район;</li><li>Развитая инфраструктура (школа, детские сады, поликлиника, магазины);</li><li>Все виды льгот для сельской местности (по коммунальным платежам, по регистрации автомобиля, по налогообложению и др.);</li><li>Крупнейший ТЦ \"Стрелка\" в 3 км, в котором есть самый большой на сегодняшний день детский развлекательный центр.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Наш коттеджный поселок - это:</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Охраняемая огороженная территория с шлагбаумом на 26 домов, окруженная коттеджной застройкой, со всеми необходимыми коммуникациями ( центральное водоснабжение, централизованная канализация, электросети - 15кВт на дом );</li><li>Собственный участок от 8 до 10 соток, на котором можно построить баню, расположить бассейн, обустроить шашлычную зону, спортивную площадку или гараж.</li><li>Ровная подъездная дорога</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-22 10:25:47', '2020-06-22 07:25:47', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/22/9-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2020-06-22 10:28:16', '2020-06-22 07:28:16', '<!-- wp:heading -->\n<h2>Где находится поселок «Семейный»?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Транспортная доступность (одна остановка от ул. Карла-Маркса, 15 мин до пл. Ленина);</li><li>Экологически чистый и \"зеленый\" район;</li><li>Развитая инфраструктура (школа, детские сады, поликлиника, магазины);</li><li>Все виды льгот для сельской местности (по коммунальным платежам, по регистрации автомобиля, по налогообложению и др.);</li><li>Крупнейший ТЦ \"Стрелка\" в 3 км, в котором есть самый большой на сегодняшний день детский развлекательный центр.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Наш коттеджный поселок - это:</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list after-elem\"} -->\n<ul class=\"list after-elem\"><li>Охраняемая огороженная территория с шлагбаумом на 26 домов, окруженная коттеджной застройкой, со всеми необходимыми коммуникациями ( центральное водоснабжение, централизованная канализация, электросети - 15кВт на дом );</li><li>Собственный участок от 8 до 10 соток, на котором можно построить баню, расположить бассейн, обустроить шашлычную зону, спортивную площадку или гараж.</li><li>Ровная подъездная дорога</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-22 10:28:16', '2020-06-22 07:28:16', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/22/9-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2020-06-22 10:29:01', '2020-06-22 07:29:01', '<!-- wp:heading -->\n<h2>Где находится поселок «Семейный»?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш коттеджный поселок располагается в самом благоустроенном районе России! Тополево неоднократно занимало призовое место в этой номинации. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Преимущества района очевидны:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list after-elem\"} -->\n<ul class=\"list after-elem\"><li>Транспортная доступность (одна остановка от ул. Карла-Маркса, 15 мин до пл. Ленина);</li><li>Экологически чистый и \"зеленый\" район;</li><li>Развитая инфраструктура (школа, детские сады, поликлиника, магазины);</li><li>Все виды льгот для сельской местности (по коммунальным платежам, по регистрации автомобиля, по налогообложению и др.);</li><li>Крупнейший ТЦ \"Стрелка\" в 3 км, в котором есть самый большой на сегодняшний день детский развлекательный центр.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Наш коттеджный поселок - это:</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"className\":\"list\"} -->\n<ul class=\"list\"><li>Охраняемая огороженная территория с шлагбаумом на 26 домов, окруженная коттеджной застройкой, со всеми необходимыми коммуникациями ( центральное водоснабжение, централизованная канализация, электросети - 15кВт на дом );</li><li>Собственный участок от 8 до 10 соток, на котором можно построить баню, расположить бассейн, обустроить шашлычную зону, спортивную площадку или гараж.</li><li>Ровная подъездная дорога</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '«Семейный»', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-06-22 10:29:01', '2020-06-22 07:29:01', '', 9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/22/9-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2020-07-20 03:53:55', '2020-07-20 00:53:55', '', 'map', '', 'inherit', 'open', 'closed', '', 'map', '', '', '2020-07-20 03:53:55', '2020-07-20 00:53:55', '', 0, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/07/map.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2020-08-05 10:09:33', '2020-08-05 07:09:33', '', 'reservation', '', 'inherit', 'open', 'closed', '', 'reservation', '', '', '2020-08-05 10:09:33', '2020-08-05 07:09:33', '', 0, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/08/reservation.svg', 0, 'attachment', 'image/svg+xml', 0),
(105, 1, '2020-08-05 10:09:33', '2020-08-05 07:09:33', '', 'sold', '', 'inherit', 'open', 'closed', '', 'sold', '', '', '2020-08-05 10:09:33', '2020-08-05 07:09:33', '', 0, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/08/sold.svg', 0, 'attachment', 'image/svg+xml', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--
-- Создание: Июл 17 2020 г., 07:26
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--
-- Создание: Июл 17 2020 г., 07:26
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--
-- Создание: Июл 17 2020 г., 07:26
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--
-- Создание: Июл 17 2020 г., 07:26
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--
-- Создание: Июл 17 2020 г., 07:26
-- Последнее обновление: Сен 30 2020 г., 01:54
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'ectoplasm'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"0406677854002ce6555873694366f51fd4f7ca87d56112a65b46a1c57eaf44bb\";a:4:{s:10:\"expiration\";i:1601875636;s:2:\"ip\";s:12:\"212.19.7.127\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\";s:5:\"login\";i:1600666036;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '106'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"212.19.7.0\";}'),
(19, 1, 'enable_custom_fields', '1'),
(20, 1, 'wp_user-settings', 'libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1592458577'),
(22, 1, 'meta-box-order_page', 'a:4:{s:6:\"normal\";s:23:\"acf-group_5eeaf8710bb86\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}'),
(23, 1, 'wp_yoast_notifications', 'a:1:{i:0;a:2:{s:7:\"message\";s:409:\"<strong>Новое в Yoast SEO 14.9:</strong>We now have Hebrew keyphrase recognition and some great performance improvements! <a href=\"https://yoa.st/yoast14-9?php_version=5.6&#038;platform=wordpress&#038;platform_version=5.5.1&#038;software=free&#038;software_version=14.9&#038;days_active=30plus&#038;user_language=ru_RU\" target=\"_blank\">Читать полностью о версии 14.9 здесь</a>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"updated\";s:2:\"id\";s:20:\"wpseo-plugin-updated\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:5:\"admin\";s:9:\"user_pass\";s:34:\"$P$ByHMo94G2IKqFgGv366MyFT9v9uJYV.\";s:13:\"user_nicename\";s:5:\"admin\";s:10:\"user_email\";s:13:\"dev4@e2.group\";s:8:\"user_url\";s:20:\"http://kpd-stroi.loc\";s:15:\"user_registered\";s:19:\"2020-06-10 07:52:38\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:5:\"admin\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:1:{s:13:\"dismiss_value\";s:4:\"14.9\";}s:13:\"dismissal_key\";s:20:\"wpseo-plugin-updated\";s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--
-- Создание: Июл 17 2020 г., 07:26
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$ByHMo94G2IKqFgGv366MyFT9v9uJYV.', 'admin', 'dev4@e2.group', 'http://kpd-stroi.loc', '2020-06-10 07:52:38', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_indexable`
--
-- Создание: Авг 05 2020 г., 19:56
-- Последнее обновление: Сен 28 2020 г., 07:53
--

DROP TABLE IF EXISTS `wp_yoast_indexable`;
CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` int(11) UNSIGNED DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `post_parent` int(11) UNSIGNED DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`) VALUES
(1, 'https://xn----dtbfcayavl9a1i.xn--p1ai/author/admin/', '51:f2d8f97ec310fb8de03cacd7d6882424', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://secure.gravatar.com/avatar/fdc0a0b2614552cb90560cf03891418e?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://secure.gravatar.com/avatar/fdc0a0b2614552cb90560cf03891418e?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2020-07-24 07:09:54', '2020-09-28 04:53:58', 1, NULL, NULL, NULL, NULL, 0),
(2, 'https://xn----dtbfcayavl9a1i.xn--p1ai/', '38:dea4119bb0c8739f6cf98149db99dff2', 9, 'post', 'page', 1, 0, NULL, 'Коттеджный поселок \"Семейный\" в Тополево г.Хабаровск.', '«Семейный»', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-07-24 07:09:54', '2020-07-24 04:24:53', 1, NULL, NULL, NULL, NULL, 0),
(3, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/1.jpg', '70:03d5a3a26b1cba2ee86ecd6f1a7e534c', 19, 'post', 'attachment', 1, 9, NULL, NULL, '1', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/1.jpg', NULL, '19', 'attachment-image', NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/1.jpg', '19', 'attachment-image', '{\"width\":1920,\"height\":1080,\"url\":\"https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/1.jpg\",\"path\":\"/home/o/ozerova5/semejnyj-dv.rf/public_html/wp-content/uploads/2020/06/1.jpg\",\"size\":\"full\",\"id\":19,\"alt\":\"\",\"pixels\":2073600,\"type\":\"image/jpeg\"}', NULL, NULL, NULL, '2020-07-24 07:09:54', '2020-07-24 04:09:54', 1, NULL, NULL, NULL, NULL, 1),
(4, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/2.jpg', '70:690d42ef8e05843b04ccfc6fde51fd7d', 20, 'post', 'attachment', 1, 9, NULL, NULL, '2', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/2.jpg', NULL, '20', 'attachment-image', NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/2.jpg', '20', 'attachment-image', '{\"width\":1000,\"height\":705,\"url\":\"https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/2.jpg\",\"path\":\"/home/o/ozerova5/semejnyj-dv.rf/public_html/wp-content/uploads/2020/06/2.jpg\",\"size\":\"full\",\"id\":20,\"alt\":\"\",\"pixels\":705000,\"type\":\"image/jpeg\"}', NULL, NULL, NULL, '2020-07-24 07:09:54', '2020-07-24 04:09:54', 1, NULL, NULL, NULL, NULL, 1),
(5, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/3.jpg', '70:67a3aa4ea5a1a709328ac7ae93fc394a', 21, 'post', 'attachment', 1, 9, NULL, NULL, '3', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/3.jpg', NULL, '21', 'attachment-image', NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/3.jpg', '21', 'attachment-image', '{\"width\":1000,\"height\":705,\"url\":\"https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/3.jpg\",\"path\":\"/home/o/ozerova5/semejnyj-dv.rf/public_html/wp-content/uploads/2020/06/3.jpg\",\"size\":\"full\",\"id\":21,\"alt\":\"\",\"pixels\":705000,\"type\":\"image/jpeg\"}', NULL, NULL, NULL, '2020-07-24 07:09:54', '2020-07-24 04:09:54', 1, NULL, NULL, NULL, NULL, 1),
(6, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/1-1.jpg', '72:5d4f6469c745e024196b4f41e3e4a3d9', 73, 'post', 'attachment', 1, 9, NULL, NULL, '1', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/1-1.jpg', NULL, '73', 'attachment-image', NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/1-1.jpg', '73', 'attachment-image', '{\"width\":1000,\"height\":705,\"url\":\"https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/1-1.jpg\",\"path\":\"/home/o/ozerova5/semejnyj-dv.rf/public_html/wp-content/uploads/2020/06/1-1.jpg\",\"size\":\"full\",\"id\":73,\"alt\":\"\",\"pixels\":705000,\"type\":\"image/jpeg\"}', NULL, NULL, NULL, '2020-07-24 07:09:54', '2020-07-24 04:09:54', 1, NULL, NULL, NULL, NULL, 1),
(7, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/2-1.jpg', '72:7b0b442568afd22775c461176a2db708', 74, 'post', 'attachment', 1, 9, NULL, NULL, '2', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/2-1.jpg', NULL, '74', 'attachment-image', NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/2-1.jpg', '74', 'attachment-image', '{\"width\":1000,\"height\":705,\"url\":\"https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/2-1.jpg\",\"path\":\"/home/o/ozerova5/semejnyj-dv.rf/public_html/wp-content/uploads/2020/06/2-1.jpg\",\"size\":\"full\",\"id\":74,\"alt\":\"\",\"pixels\":705000,\"type\":\"image/jpeg\"}', NULL, NULL, NULL, '2020-07-24 07:09:54', '2020-07-24 04:09:54', 1, NULL, NULL, NULL, NULL, 1),
(8, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/3-1.jpg', '72:ca2ac9f0f00d682a02b75d4ef189a564', 75, 'post', 'attachment', 1, 9, NULL, NULL, '3', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/3-1.jpg', NULL, '75', 'attachment-image', NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/3-1.jpg', '75', 'attachment-image', '{\"width\":1000,\"height\":705,\"url\":\"https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/3-1.jpg\",\"path\":\"/home/o/ozerova5/semejnyj-dv.rf/public_html/wp-content/uploads/2020/06/3-1.jpg\",\"size\":\"full\",\"id\":75,\"alt\":\"\",\"pixels\":705000,\"type\":\"image/jpeg\"}', NULL, NULL, NULL, '2020-07-24 07:09:54', '2020-07-24 04:09:54', 1, NULL, NULL, NULL, NULL, 1),
(9, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/4.jpg', '70:7fc90503c4a1e74fe49153a1a9d78529', 76, 'post', 'attachment', 1, 9, NULL, NULL, '4', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/4.jpg', NULL, '76', 'attachment-image', NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/4.jpg', '76', 'attachment-image', '{\"width\":1000,\"height\":705,\"url\":\"https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/4.jpg\",\"path\":\"/home/o/ozerova5/semejnyj-dv.rf/public_html/wp-content/uploads/2020/06/4.jpg\",\"size\":\"full\",\"id\":76,\"alt\":\"\",\"pixels\":705000,\"type\":\"image/jpeg\"}', NULL, NULL, NULL, '2020-07-24 07:09:54', '2020-07-24 04:09:54', 1, NULL, NULL, NULL, NULL, 1),
(10, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/5.jpg', '70:e099d19136c8b120b9ea44a5a2891663', 77, 'post', 'attachment', 1, 9, NULL, NULL, '5', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/5.jpg', NULL, '77', 'attachment-image', NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/5.jpg', '77', 'attachment-image', '{\"width\":1000,\"height\":705,\"url\":\"https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/5.jpg\",\"path\":\"/home/o/ozerova5/semejnyj-dv.rf/public_html/wp-content/uploads/2020/06/5.jpg\",\"size\":\"full\",\"id\":77,\"alt\":\"\",\"pixels\":705000,\"type\":\"image/jpeg\"}', NULL, NULL, NULL, '2020-07-24 07:09:54', '2020-07-24 04:09:54', 1, NULL, NULL, NULL, NULL, 1),
(11, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/scheme.jpg', '75:09fde3a6da097518fabf8aa13dd380a4', 78, 'post', 'attachment', 1, 9, NULL, NULL, 'scheme', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/scheme.jpg', NULL, '78', 'attachment-image', NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/scheme.jpg', '78', 'attachment-image', '{\"width\":1755,\"height\":1240,\"url\":\"https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/scheme.jpg\",\"path\":\"/home/o/ozerova5/semejnyj-dv.rf/public_html/wp-content/uploads/2020/06/scheme.jpg\",\"size\":\"full\",\"id\":78,\"alt\":\"\",\"pixels\":2176200,\"type\":\"image/jpeg\"}', NULL, NULL, NULL, '2020-07-24 07:09:54', '2020-07-24 04:09:54', 1, NULL, NULL, NULL, NULL, 1),
(12, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/1-2.jpg', '72:e614fdbfb67745b0299eb4a5a8188b78', 82, 'post', 'attachment', 1, 9, NULL, NULL, '1', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/1-2.jpg', NULL, '82', 'attachment-image', NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/1-2.jpg', '82', 'attachment-image', '{\"width\":1000,\"height\":705,\"url\":\"https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/1-2.jpg\",\"path\":\"/home/o/ozerova5/semejnyj-dv.rf/public_html/wp-content/uploads/2020/06/1-2.jpg\",\"size\":\"full\",\"id\":82,\"alt\":\"\",\"pixels\":705000,\"type\":\"image/jpeg\"}', NULL, NULL, NULL, '2020-07-24 07:09:54', '2020-07-24 04:09:54', 1, NULL, NULL, NULL, NULL, 1),
(13, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/2-2.jpg', '72:45ff75af55ed955ce4f4fcdd29ed09c5', 83, 'post', 'attachment', 1, 9, NULL, NULL, '2', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/2-2.jpg', NULL, '83', 'attachment-image', NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/2-2.jpg', '83', 'attachment-image', '{\"width\":1000,\"height\":705,\"url\":\"https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/2-2.jpg\",\"path\":\"/home/o/ozerova5/semejnyj-dv.rf/public_html/wp-content/uploads/2020/06/2-2.jpg\",\"size\":\"full\",\"id\":83,\"alt\":\"\",\"pixels\":705000,\"type\":\"image/jpeg\"}', NULL, NULL, NULL, '2020-07-24 07:09:54', '2020-07-24 04:09:54', 1, NULL, NULL, NULL, NULL, 1),
(14, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/3-2.jpg', '72:df22584236d35792947c7600966d557e', 84, 'post', 'attachment', 1, 9, NULL, NULL, '3', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/3-2.jpg', NULL, '84', 'attachment-image', NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/3-2.jpg', '84', 'attachment-image', '{\"width\":1000,\"height\":705,\"url\":\"https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/3-2.jpg\",\"path\":\"/home/o/ozerova5/semejnyj-dv.rf/public_html/wp-content/uploads/2020/06/3-2.jpg\",\"size\":\"full\",\"id\":84,\"alt\":\"\",\"pixels\":705000,\"type\":\"image/jpeg\"}', NULL, NULL, NULL, '2020-07-24 07:09:54', '2020-07-24 04:09:54', 1, NULL, NULL, NULL, NULL, 1),
(15, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/4-1.jpg', '72:e212889129cb87f3ef95bd973c75ff98', 85, 'post', 'attachment', 1, 9, NULL, NULL, '4', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/4-1.jpg', NULL, '85', 'attachment-image', NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/4-1.jpg', '85', 'attachment-image', '{\"width\":1000,\"height\":705,\"url\":\"https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/4-1.jpg\",\"path\":\"/home/o/ozerova5/semejnyj-dv.rf/public_html/wp-content/uploads/2020/06/4-1.jpg\",\"size\":\"full\",\"id\":85,\"alt\":\"\",\"pixels\":705000,\"type\":\"image/jpeg\"}', NULL, NULL, NULL, '2020-07-24 07:09:54', '2020-07-24 04:09:54', 1, NULL, NULL, NULL, NULL, 1),
(16, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/5-1.jpg', '72:73e90a9825680eb4e757a0c336ab33cc', 86, 'post', 'attachment', 1, 9, NULL, NULL, '5', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/5-1.jpg', NULL, '86', 'attachment-image', NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/5-1.jpg', '86', 'attachment-image', '{\"width\":1000,\"height\":705,\"url\":\"https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/5-1.jpg\",\"path\":\"/home/o/ozerova5/semejnyj-dv.rf/public_html/wp-content/uploads/2020/06/5-1.jpg\",\"size\":\"full\",\"id\":86,\"alt\":\"\",\"pixels\":705000,\"type\":\"image/jpeg\"}', NULL, NULL, NULL, '2020-07-24 07:09:54', '2020-07-24 04:09:54', 1, NULL, NULL, NULL, NULL, 1),
(17, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/scheme-1.jpg', '77:659402acc0fc6e238b86df4333ec3361', 87, 'post', 'attachment', 1, 9, NULL, NULL, 'scheme', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/scheme-1.jpg', NULL, '87', 'attachment-image', NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/scheme-1.jpg', '87', 'attachment-image', '{\"width\":1755,\"height\":1240,\"url\":\"https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/06/scheme-1.jpg\",\"path\":\"/home/o/ozerova5/semejnyj-dv.rf/public_html/wp-content/uploads/2020/06/scheme-1.jpg\",\"size\":\"full\",\"id\":87,\"alt\":\"\",\"pixels\":2176200,\"type\":\"image/jpeg\"}', NULL, NULL, NULL, '2020-07-24 07:09:54', '2020-07-24 04:09:54', 1, NULL, NULL, NULL, NULL, 1),
(18, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/07/map.png', '72:e72d0622183ac888ad4ae7da49421ff3', 102, 'post', 'attachment', 1, 0, NULL, NULL, 'map', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/07/map.png', NULL, '102', 'attachment-image', NULL, NULL, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/07/map.png', '102', 'attachment-image', '{\"width\":1920,\"height\":765,\"url\":\"https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/07/map.png\",\"path\":\"/home/o/ozerova5/semejnyj-dv.rf/public_html/wp-content/uploads/2020/07/map.png\",\"size\":\"full\",\"id\":102,\"alt\":\"\",\"pixels\":1468800,\"type\":\"image/png\"}', NULL, NULL, NULL, '2020-07-24 07:09:54', '2020-07-24 04:09:54', 1, NULL, NULL, NULL, NULL, 0),
(20, 'https://xn----dtbfcayavl9a1i.xn--p1ai/2020/06/10/%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80/', '105:cb5f42c25c40c36494cdafc445a01d09', 1, 'post', 'post', 1, 0, NULL, NULL, 'Привет, мир!', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-24 07:09:54', '2020-07-24 04:09:54', 1, NULL, NULL, NULL, NULL, 0),
(21, 'https://xn----dtbfcayavl9a1i.xn--p1ai/category/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/', '109:764d8c3aaedcab932d3c504e11142319', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Без рубрики', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-24 07:09:54', '2020-07-24 04:09:54', 1, NULL, NULL, NULL, NULL, 0),
(22, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Страница не найдена %%sep%% %%sitename%%', NULL, 'Ошибка 404: страница не найдена', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-24 07:09:54', '2020-07-24 04:09:54', 1, NULL, NULL, NULL, NULL, 0),
(23, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'Вы искали %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-24 07:09:54', '2020-07-24 04:09:54', 1, NULL, NULL, NULL, NULL, 0),
(24, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-24 07:09:54', '2020-07-24 04:09:54', 1, NULL, NULL, NULL, NULL, 0),
(25, 'https://xn----dtbfcayavl9a1i.xn--p1ai/', '38:dea4119bb0c8739f6cf98149db99dff2', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', 'Поселок &quot;Семейный&quot; - строительство каменных домов', 'Главная страница', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, '2020-07-24 07:14:53', '2020-07-24 04:40:40', 1, NULL, NULL, NULL, NULL, 0),
(26, 'https://xn----dtbfcayavl9a1i.xn--p1ai/?post_type=acf-field-group&p=13', '69:2f8236fb0542da1b0c765961ab81c59a', 13, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Поля главной страницы', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-24 07:24:13', '2020-07-24 04:24:13', 1, NULL, NULL, NULL, NULL, 0),
(27, 'https://xn----dtbfcayavl9a1i.xn--p1ai/?post_type=acf-field&p=33', '63:4354061068106241e4526e033e24542a', 33, 'post', 'acf-field', 1, 13, NULL, NULL, 'Номер телефона раздела &#171;Контакты&#187;', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-24 07:24:13', '2020-07-24 04:24:13', 1, NULL, NULL, NULL, NULL, 1),
(28, 'https://xn----dtbfcayavl9a1i.xn--p1ai/?post_type=acf-field&p=34', '63:d259558a191c7aac70100f5762b8d849', 34, 'post', 'acf-field', 1, 13, NULL, NULL, 'Адрес поселка раздела &#171;Контакты&#187;', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-24 07:24:13', '2020-07-24 04:24:13', 1, NULL, NULL, NULL, NULL, 1),
(29, 'https://xn----dtbfcayavl9a1i.xn--p1ai/?post_type=acf-field&p=35', '63:a7b001f019497c85b753fa37685d08ea', 35, 'post', 'acf-field', 1, 13, NULL, NULL, 'Instagram ссылки', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-24 07:24:13', '2020-07-24 04:24:13', 1, NULL, NULL, NULL, NULL, 1),
(30, 'https://xn----dtbfcayavl9a1i.xn--p1ai/?post_type=acf-field&p=65', '63:680708f5cf7881b42bfee1a1cdceb768', 65, 'post', 'acf-field', 1, 13, NULL, NULL, '2х этажные дома', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-24 07:24:13', '2020-07-24 04:24:13', 1, NULL, NULL, NULL, NULL, 1),
(32, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/08/reservation.svg', '80:4b9f6cffa40b135978cd1e7a7f582818', 104, 'post', 'attachment', 1, 0, NULL, NULL, 'reservation', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-05 07:09:33', '2020-08-05 04:09:33', 1, NULL, NULL, NULL, NULL, 0),
(33, 'https://xn----dtbfcayavl9a1i.xn--p1ai/wp-content/uploads/2020/08/sold.svg', '73:8e3803a946bdaeab2d9264dcee136c6e', 105, 'post', 'attachment', 1, 0, NULL, NULL, 'sold', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-05 07:09:33', '2020-08-05 04:09:33', 1, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_indexable_hierarchy`
--
-- Создание: Июл 24 2020 г., 07:09
--

DROP TABLE IF EXISTS `wp_yoast_indexable_hierarchy`;
CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_migrations`
--
-- Создание: Июл 24 2020 г., 07:09
--

DROP TABLE IF EXISTS `wp_yoast_migrations`;
CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(16, '20200616130143'),
(18, '20200617122511'),
(15, '20200702141921'),
(17, '20200728095334');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_primary_term`
--
-- Создание: Июл 24 2020 г., 07:09
--

DROP TABLE IF EXISTS `wp_yoast_primary_term`;
CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED NOT NULL,
  `term_id` int(11) UNSIGNED NOT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_seo_links`
--
-- Создание: Сен 01 2020 г., 08:07
--

DROP TABLE IF EXISTS `wp_yoast_seo_links`;
CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `target_indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `size` int(11) UNSIGNED DEFAULT NULL,
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_seo_meta`
--
-- Создание: Июл 24 2020 г., 07:09
--

DROP TABLE IF EXISTS `wp_yoast_seo_meta`;
CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(9, 0, 0),
(25, 0, 0),
(26, 0, 0),
(27, 0, 0),
(28, 0, 0),
(101, 0, 0),
(103, 0, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`);

--
-- Индексы таблицы `wp_yoast_indexable_hierarchy`
--
ALTER TABLE `wp_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Индексы таблицы `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wp_yoast_migrations_version` (`version`);

--
-- Индексы таблицы `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Индексы таблицы `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- Индексы таблицы `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3430;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1574;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
