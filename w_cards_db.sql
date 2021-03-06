-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: w_cards_db
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=390 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://w-cards-server.local','yes'),(2,'home','http://w-cards-server.local','yes'),(3,'blogname','W-Cards Server','yes'),(4,'blogdescription','Just another WordPress site','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','maxim.maslov.kd@gmail.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','0','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','/%postname%/','yes'),(29,'rewrite_rules','a:93:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:21:\"m-logger/m-logger.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(40,'template','w-cards','yes'),(41,'stylesheet','w-cards','yes'),(42,'comment_registration','0','yes'),(43,'html_type','text/html','yes'),(44,'use_trackback','0','yes'),(45,'default_role','subscriber','yes'),(46,'db_version','49752','yes'),(47,'uploads_use_yearmonth_folders','1','yes'),(48,'upload_path','','yes'),(49,'blog_public','0','yes'),(50,'default_link_category','2','yes'),(51,'show_on_front','posts','yes'),(52,'tag_base','','yes'),(53,'show_avatars','1','yes'),(54,'avatar_rating','G','yes'),(55,'upload_url_path','','yes'),(56,'thumbnail_size_w','150','yes'),(57,'thumbnail_size_h','150','yes'),(58,'thumbnail_crop','1','yes'),(59,'medium_size_w','300','yes'),(60,'medium_size_h','300','yes'),(61,'avatar_default','mystery','yes'),(62,'large_size_w','1024','yes'),(63,'large_size_h','1024','yes'),(64,'image_default_link_type','none','yes'),(65,'image_default_size','','yes'),(66,'image_default_align','','yes'),(67,'close_comments_for_old_posts','0','yes'),(68,'close_comments_days_old','14','yes'),(69,'thread_comments','1','yes'),(70,'thread_comments_depth','5','yes'),(71,'page_comments','0','yes'),(72,'comments_per_page','50','yes'),(73,'default_comments_page','newest','yes'),(74,'comment_order','asc','yes'),(75,'sticky_posts','a:0:{}','yes'),(76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(77,'widget_text','a:0:{}','yes'),(78,'widget_rss','a:0:{}','yes'),(79,'uninstall_plugins','a:0:{}','no'),(80,'timezone_string','','yes'),(81,'page_for_posts','0','yes'),(82,'page_on_front','0','yes'),(83,'default_post_format','0','yes'),(84,'link_manager_enabled','0','yes'),(85,'finished_splitting_shared_terms','1','yes'),(86,'site_icon','0','yes'),(87,'medium_large_size_w','768','yes'),(88,'medium_large_size_h','0','yes'),(89,'wp_page_for_privacy_policy','3','yes'),(90,'show_comments_cookies_opt_in','1','yes'),(91,'admin_email_lifespan','1621612433','yes'),(92,'disallowed_keys','','no'),(93,'comment_previously_approved','1','yes'),(94,'auto_plugin_theme_update_emails','a:0:{}','no'),(95,'initial_db_version','48748','yes'),(96,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(97,'fresh_site','0','yes'),(98,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(99,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(100,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(101,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(102,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(103,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes'),(104,'cron','a:7:{i:1612295659;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1612324459;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1612367657;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1612367672;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1612367675;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1612799657;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes'),(105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(107,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(112,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(113,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(115,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1606242148;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes'),(116,'recovery_keys','a:0:{}','yes'),(145,'finished_updating_comment_type','1','yes'),(146,'recently_activated','a:0:{}','yes'),(147,'acf_version','5.9.3','yes'),(168,'_transient_health-check-site-status-result','{\"good\":14,\"recommended\":4,\"critical\":2}','yes'),(181,'current_theme','w-cards','yes'),(182,'theme_mods_w-cards','a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}}','yes'),(183,'theme_switched','','yes'),(184,'recovery_mode_email_last_sent','1606242149','yes'),(216,'category_children','a:0:{}','yes'),(286,'auto_update_core_dev','enabled','yes'),(287,'auto_update_core_minor','enabled','yes'),(288,'auto_update_core_major','unset','yes'),(289,'db_upgraded','','yes'),(291,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1612292532;s:15:\"version_checked\";s:3:\"5.6\";s:12:\"translations\";a:0:{}}','no'),(292,'can_compress_scripts','0','no'),(296,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1612292538;s:7:\"checked\";a:1:{s:7:\"w-cards\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no'),(383,'_transient_timeout_acf_plugin_updates','1612465335','no'),(384,'_transient_acf_plugin_updates','a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.3\";}}','no'),(385,'_site_transient_timeout_theme_roots','1612294337','no'),(386,'_site_transient_theme_roots','a:1:{s:7:\"w-cards\";s:7:\"/themes\";}','no'),(387,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1612292539;s:7:\"checked\";a:2:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.3\";s:21:\"m-logger/m-logger.php\";s:3:\"1.0\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}','no'),(388,'_site_transient_timeout_php_check_787617df3522cd9d9182823c87ee367d','1612897343','no'),(389,'_site_transient_php_check_787617df3522cd9d9182823c87ee367d','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_last','1'),(4,5,'_edit_lock','1606761207:1'),(18,14,'_edit_lock','1606761441:1'),(20,14,'_edit_last','1'),(21,14,'text_original','Dog'),(22,14,'_text_original','field_5fba8cdb9a093'),(23,14,'translate_text','Собака'),(24,14,'_translate_text','field_5fba8d129a094'),(25,16,'text_original','text orig'),(26,16,'_text_original','field_5fba8cdb9a093'),(27,16,'translate_text','text translate'),(28,16,'_translate_text','field_5fba8d129a094'),(30,17,'text_original','Dog'),(31,17,'_text_original','field_5fba8cdb9a093'),(32,17,'translate_text','Собака'),(33,17,'_translate_text','field_5fba8d129a094'),(35,14,'text_translation','Собака'),(36,14,'_text_translation','field_5fba8d129a094'),(37,19,'text_original','Dog'),(38,19,'_text_original','field_5fba8cdb9a093'),(39,19,'translate_text','Собака'),(40,19,'_translate_text','field_5fba8d129a094'),(41,19,'text_translation','Соба'),(42,19,'_text_translation','field_5fba8d129a094'),(45,20,'text_original','Dog'),(46,20,'_text_original','field_5fba8cdb9a093'),(47,20,'translate_text','Собака'),(48,20,'_translate_text','field_5fba8d129a094'),(49,20,'text_translation','Собака'),(50,20,'_text_translation','field_5fba8d129a094'),(51,21,'_edit_last','1'),(52,21,'_edit_lock','1606761434:1'),(54,21,'text_original','Cat'),(55,21,'_text_original','field_5fba8cdb9a093'),(56,21,'text_translation','Кошка'),(57,21,'_text_translation','field_5fba8d129a094'),(58,22,'text_original','Cat'),(59,22,'_text_original','field_5fba8cdb9a093'),(60,22,'text_translation','Кошка'),(61,22,'_text_translation','field_5fba8d129a094'),(62,23,'_edit_last','1'),(63,23,'_edit_lock','1609789225:1'),(65,23,'text_original','Mess up'),(66,23,'_text_original','field_5fba8cdb9a093'),(67,23,'text_translation','Испортить'),(68,23,'_text_translation','field_5fba8d129a094'),(69,24,'text_original','Bird'),(70,24,'_text_original','field_5fba8cdb9a093'),(71,24,'text_translation','Птица'),(72,24,'_text_translation','field_5fba8d129a094'),(73,25,'_edit_last','1'),(74,25,'_edit_lock','1609789025:1'),(76,25,'text_original','I managed to'),(77,25,'_text_original','field_5fba8cdb9a093'),(78,25,'text_translation','Мне удалось'),(79,25,'_text_translation','field_5fba8d129a094'),(80,26,'text_original','Duck'),(81,26,'_text_original','field_5fba8cdb9a093'),(82,26,'text_translation','Утка'),(83,26,'_text_translation','field_5fba8d129a094'),(85,27,'_edit_last','1'),(86,27,'_edit_lock','1609788861:1'),(88,27,'text_original','Find out'),(89,27,'_text_original','field_5fba8cdb9a093'),(90,27,'text_translation','Выяснять, узнавать'),(91,27,'_text_translation','field_5fba8d129a094'),(92,28,'text_original','Lion'),(93,28,'_text_original','field_5fba8cdb9a093'),(94,28,'text_translation','Лев'),(95,28,'_text_translation','field_5fba8d129a094'),(96,29,'_edit_last','1'),(97,29,'_edit_lock','1609788795:1'),(99,29,'text_original','Exhale (v)'),(100,29,'_text_original','field_5fba8cdb9a093'),(101,29,'text_translation','Выдыхать'),(102,29,'_text_translation','field_5fba8d129a094'),(103,30,'text_original','Wolf'),(104,30,'_text_original','field_5fba8cdb9a093'),(105,30,'text_translation','Волк'),(106,30,'_text_translation','field_5fba8d129a094'),(108,31,'_edit_last','1'),(109,31,'_edit_lock','1609788713:1'),(111,31,'text_original','grin (v)'),(112,31,'_text_original','field_5fba8cdb9a093'),(113,31,'text_translation','Усмехаться'),(114,31,'_text_translation','field_5fba8d129a094'),(115,32,'text_original','Elefant'),(116,32,'_text_original','field_5fba8cdb9a093'),(117,32,'text_translation','Слон'),(118,32,'_text_translation','field_5fba8d129a094'),(119,33,'_edit_last','1'),(120,33,'_edit_lock','1609788878:1'),(122,33,'text_original','chuckle (v)'),(123,33,'_text_original','field_5fba8cdb9a093'),(124,33,'text_translation','Посмеиваться'),(125,33,'_text_translation','field_5fba8d129a094'),(126,34,'text_original','Fly'),(127,34,'_text_original','field_5fba8cdb9a093'),(128,34,'text_translation','Муха'),(129,34,'_text_translation','field_5fba8d129a094'),(135,37,'text_original','chuckle (v)'),(136,37,'_text_original','field_5fba8cdb9a093'),(137,37,'text_translation','Посмеиваться'),(138,37,'_text_translation','field_5fba8d129a094'),(140,38,'text_original','grin (v)'),(141,38,'_text_original','field_5fba8cdb9a093'),(142,38,'text_translation','Усмехаться'),(143,38,'_text_translation','field_5fba8d129a094'),(145,33,'_wp_old_slug','fly'),(147,29,'_wp_old_slug','wolf'),(148,40,'text_original','Exhale (v)'),(149,40,'_text_original','field_5fba8cdb9a093'),(150,40,'text_translation','Выдыхать'),(151,40,'_text_translation','field_5fba8d129a094'),(153,27,'_wp_old_slug','lion'),(154,41,'text_original','Find out'),(155,41,'_text_original','field_5fba8cdb9a093'),(156,41,'text_translation','Выяснять, узнавать'),(157,41,'_text_translation','field_5fba8d129a094'),(158,42,'_edit_last','1'),(159,42,'_edit_lock','1609788907:1'),(161,42,'text_original','Figure out'),(162,42,'_text_original','field_5fba8cdb9a093'),(163,42,'text_translation','Разобраться, понять'),(164,42,'_text_translation','field_5fba8d129a094'),(165,43,'text_original','Figure out'),(166,43,'_text_original','field_5fba8cdb9a093'),(167,43,'text_translation','Разобраться, понять'),(168,43,'_text_translation','field_5fba8d129a094'),(170,25,'_wp_old_slug','duck'),(171,44,'text_original','I managed to'),(172,44,'_text_original','field_5fba8cdb9a093'),(173,44,'text_translation','Мне удалось'),(174,44,'_text_translation','field_5fba8d129a094'),(175,45,'_edit_last','1'),(176,45,'_edit_lock','1609789081:1'),(178,45,'text_original','I didn\'t managed to'),(179,45,'_text_original','field_5fba8cdb9a093'),(180,45,'text_translation','Мне не удалось'),(181,45,'_text_translation','field_5fba8d129a094'),(182,46,'text_original','I didn\'t managed to'),(183,46,'_text_original','field_5fba8cdb9a093'),(184,46,'text_translation','Мне не удалось'),(185,46,'_text_translation','field_5fba8d129a094'),(186,47,'_edit_last','1'),(187,47,'_edit_lock','1609789158:1'),(189,47,'text_original','The point is...'),(190,47,'_text_original','field_5fba8cdb9a093'),(191,47,'text_translation','Суть в том..'),(192,47,'_text_translation','field_5fba8d129a094'),(193,48,'text_original','The point is...'),(194,48,'_text_original','field_5fba8cdb9a093'),(195,48,'text_translation','Суть в том..'),(196,48,'_text_translation','field_5fba8d129a094'),(198,23,'_wp_old_slug','bird'),(199,49,'text_original','Mess up'),(200,49,'_text_original','field_5fba8cdb9a093'),(201,49,'text_translation','Испортить'),(202,49,'_text_translation','field_5fba8d129a094'),(203,50,'_edit_last','1'),(204,50,'_edit_lock','1609789276:1'),(206,50,'text_original','Affordable'),(207,50,'_text_original','field_5fba8cdb9a093'),(208,50,'text_translation','Доступный'),(209,50,'_text_translation','field_5fba8d129a094'),(210,51,'text_original','Affordable'),(211,51,'_text_original','field_5fba8cdb9a093'),(212,51,'text_translation','Доступный'),(213,51,'_text_translation','field_5fba8d129a094');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (5,1,'2020-11-22 16:09:15','2020-11-22 16:09:15','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Card','card','publish','closed','closed','','group_5fba8cd589589','','','2020-11-30 18:30:14','2020-11-30 18:30:14','',0,'http://w-cards-server.local/?post_type=acf-field-group&#038;p=5',0,'acf-field-group','',0),(6,1,'2020-11-22 16:09:15','2020-11-22 16:09:15','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Original','text_original','publish','closed','closed','','field_5fba8cdb9a093','','','2020-11-30 18:30:05','2020-11-30 18:30:05','',5,'http://w-cards-server.local/?post_type=acf-field&#038;p=6',0,'acf-field','',0),(7,1,'2020-11-22 16:09:16','2020-11-22 16:09:16','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Translation','text_translation','publish','closed','closed','','field_5fba8d129a094','','','2020-11-30 18:29:56','2020-11-30 18:29:56','',5,'http://w-cards-server.local/?post_type=acf-field&#038;p=7',1,'acf-field','',0),(14,1,'2020-11-24 18:04:03','2020-11-24 18:04:03','<!-- wp:paragraph -->\n<p>Content text</p>\n<!-- /wp:paragraph -->','Dog','','publish','open','open','','first-post','','','2020-11-30 18:37:20','2020-11-30 18:37:20','',0,'http://w-cards-server.local/?p=14',0,'post','',0),(15,1,'2020-11-24 18:04:03','2020-11-24 18:04:03','<!-- wp:paragraph -->\n<p>Content text</p>\n<!-- /wp:paragraph -->','First post','','inherit','closed','closed','','14-revision-v1','','','2020-11-24 18:04:03','2020-11-24 18:04:03','',14,'http://w-cards-server.local/14-revision-v1/',0,'revision','',0),(16,1,'2020-11-24 18:04:05','2020-11-24 18:04:05','<!-- wp:paragraph -->\n<p>Content text</p>\n<!-- /wp:paragraph -->','First post','','inherit','closed','closed','','14-revision-v1','','','2020-11-24 18:04:05','2020-11-24 18:04:05','',14,'http://w-cards-server.local/14-revision-v1/',0,'revision','',0),(17,1,'2020-11-24 18:25:57','2020-11-24 18:25:57','<!-- wp:paragraph -->\n<p>Content text</p>\n<!-- /wp:paragraph -->','Dog','','inherit','closed','closed','','14-revision-v1','','','2020-11-24 18:25:57','2020-11-24 18:25:57','',14,'http://w-cards-server.local/14-revision-v1/',0,'revision','',0),(19,1,'2020-11-30 18:30:26','2020-11-30 18:30:26','<!-- wp:paragraph -->\n<p>Content text</p>\n<!-- /wp:paragraph -->','Dog','','inherit','closed','closed','','14-revision-v1','','','2020-11-30 18:30:26','2020-11-30 18:30:26','',14,'http://w-cards-server.local/14-revision-v1/',0,'revision','',0),(20,1,'2020-11-30 18:30:36','2020-11-30 18:30:36','<!-- wp:paragraph -->\n<p>Content text</p>\n<!-- /wp:paragraph -->','Dog','','inherit','closed','closed','','14-revision-v1','','','2020-11-30 18:30:36','2020-11-30 18:30:36','',14,'http://w-cards-server.local/14-revision-v1/',0,'revision','',0),(21,1,'2020-11-30 18:30:58','2020-11-30 18:30:58','','Cat','','publish','open','open','','cat','','','2020-11-30 18:37:13','2020-11-30 18:37:13','',0,'http://w-cards-server.local/?p=21',0,'post','',0),(22,1,'2020-11-30 18:30:58','2020-11-30 18:30:58','','Cat','','inherit','closed','closed','','21-revision-v1','','','2020-11-30 18:30:58','2020-11-30 18:30:58','',21,'http://w-cards-server.local/21-revision-v1/',0,'revision','',0),(23,1,'2020-11-30 18:31:23','2020-11-30 18:31:23','','Mess up','','publish','open','open','','mess-up','','','2021-01-04 19:42:35','2021-01-04 19:42:35','',0,'http://w-cards-server.local/?p=23',0,'post','',0),(24,1,'2020-11-30 18:31:23','2020-11-30 18:31:23','','Bird','','inherit','closed','closed','','23-revision-v1','','','2020-11-30 18:31:23','2020-11-30 18:31:23','',23,'http://w-cards-server.local/23-revision-v1/',0,'revision','',0),(25,1,'2020-11-30 18:33:20','2020-11-30 18:33:20','','I managed to','','publish','open','open','','i-managed','','','2021-01-04 19:39:26','2021-01-04 19:39:26','',0,'http://w-cards-server.local/?p=25',0,'post','',0),(26,1,'2020-11-30 18:33:20','2020-11-30 18:33:20','','Duck','','inherit','closed','closed','','25-revision-v1','','','2020-11-30 18:33:20','2020-11-30 18:33:20','',25,'http://w-cards-server.local/25-revision-v1/',0,'revision','',0),(27,1,'2020-11-30 18:35:15','2020-11-30 18:35:15','','Find out','','publish','open','open','','find-out','','','2021-01-04 19:36:40','2021-01-04 19:36:40','',0,'http://w-cards-server.local/?p=27',0,'post','',0),(28,1,'2020-11-30 18:35:15','2020-11-30 18:35:15','','Lion','','inherit','closed','closed','','27-revision-v1','','','2020-11-30 18:35:15','2020-11-30 18:35:15','',27,'http://w-cards-server.local/27-revision-v1/',0,'revision','',0),(29,1,'2020-11-30 18:35:39','2020-11-30 18:35:39','','Exhale','','publish','open','open','','exhale','','','2021-01-04 19:35:34','2021-01-04 19:35:34','',0,'http://w-cards-server.local/?p=29',0,'post','',0),(30,1,'2020-11-30 18:35:39','2020-11-30 18:35:39','','Wolf','','inherit','closed','closed','','29-revision-v1','','','2020-11-30 18:35:39','2020-11-30 18:35:39','',29,'http://w-cards-server.local/29-revision-v1/',0,'revision','',0),(31,1,'2020-11-30 18:36:17','2020-11-30 18:36:17','','Grin','','publish','open','open','','elefant','','','2021-01-04 19:34:09','2021-01-04 19:34:09','',0,'http://w-cards-server.local/?p=31',0,'post','',0),(32,1,'2020-11-30 18:36:17','2020-11-30 18:36:17','','Elefant','','inherit','closed','closed','','31-revision-v1','','','2020-11-30 18:36:17','2020-11-30 18:36:17','',31,'http://w-cards-server.local/31-revision-v1/',0,'revision','',0),(33,1,'2020-11-30 18:36:40','2020-11-30 18:36:40','','Сhuckle','','publish','open','open','','%d1%81huckle','','','2021-01-04 19:34:37','2021-01-04 19:34:37','',0,'http://w-cards-server.local/?p=33',0,'post','',0),(34,1,'2020-11-30 18:36:40','2020-11-30 18:36:40','','Fly','','inherit','closed','closed','','33-revision-v1','','','2020-11-30 18:36:40','2020-11-30 18:36:40','',33,'http://w-cards-server.local/33-revision-v1/',0,'revision','',0),(36,1,'2021-01-04 19:32:39','2021-01-04 19:32:39','','chuckle','','inherit','closed','closed','','33-autosave-v1','','','2021-01-04 19:32:39','2021-01-04 19:32:39','',33,'http://w-cards-server.local/33-autosave-v1/',0,'revision','',0),(37,1,'2021-01-04 19:33:21','2021-01-04 19:33:21','','chuckle','','inherit','closed','closed','','33-revision-v1','','','2021-01-04 19:33:21','2021-01-04 19:33:21','',33,'http://w-cards-server.local/33-revision-v1/',0,'revision','',0),(38,1,'2021-01-04 19:34:09','2021-01-04 19:34:09','','Grin','','inherit','closed','closed','','31-revision-v1','','','2021-01-04 19:34:09','2021-01-04 19:34:09','',31,'http://w-cards-server.local/31-revision-v1/',0,'revision','',0),(39,1,'2021-01-04 19:34:37','2021-01-04 19:34:37','','Сhuckle','','inherit','closed','closed','','33-revision-v1','','','2021-01-04 19:34:37','2021-01-04 19:34:37','',33,'http://w-cards-server.local/33-revision-v1/',0,'revision','',0),(40,1,'2021-01-04 19:35:34','2021-01-04 19:35:34','','Exhale','','inherit','closed','closed','','29-revision-v1','','','2021-01-04 19:35:34','2021-01-04 19:35:34','',29,'http://w-cards-server.local/29-revision-v1/',0,'revision','',0),(41,1,'2021-01-04 19:36:40','2021-01-04 19:36:40','','Find out','','inherit','closed','closed','','27-revision-v1','','','2021-01-04 19:36:40','2021-01-04 19:36:40','',27,'http://w-cards-server.local/27-revision-v1/',0,'revision','',0),(42,1,'2021-01-04 19:37:27','2021-01-04 19:37:27','','Figure out','','publish','open','open','','figure-out','','','2021-01-04 19:37:27','2021-01-04 19:37:27','',0,'http://w-cards-server.local/?p=42',0,'post','',0),(43,1,'2021-01-04 19:37:27','2021-01-04 19:37:27','','Figure out','','inherit','closed','closed','','42-revision-v1','','','2021-01-04 19:37:27','2021-01-04 19:37:27','',42,'http://w-cards-server.local/42-revision-v1/',0,'revision','',0),(44,1,'2021-01-04 19:39:26','2021-01-04 19:39:26','','I managed to','','inherit','closed','closed','','25-revision-v1','','','2021-01-04 19:39:26','2021-01-04 19:39:26','',25,'http://w-cards-server.local/25-revision-v1/',0,'revision','',0),(45,1,'2021-01-04 19:39:56','2021-01-04 19:39:56','','I didn\'t managed to','','publish','open','open','','i-didnt-managed-to','','','2021-01-04 19:39:56','2021-01-04 19:39:56','',0,'http://w-cards-server.local/?p=45',0,'post','',0),(46,1,'2021-01-04 19:39:56','2021-01-04 19:39:56','','I didn\'t managed to','','inherit','closed','closed','','45-revision-v1','','','2021-01-04 19:39:56','2021-01-04 19:39:56','',45,'http://w-cards-server.local/45-revision-v1/',0,'revision','',0),(47,1,'2021-01-04 19:41:08','2021-01-04 19:41:08','','The point is','','publish','open','open','','the-point-is','','','2021-01-04 19:41:08','2021-01-04 19:41:08','',0,'http://w-cards-server.local/?p=47',0,'post','',0),(48,1,'2021-01-04 19:41:08','2021-01-04 19:41:08','','The point is','','inherit','closed','closed','','47-revision-v1','','','2021-01-04 19:41:08','2021-01-04 19:41:08','',47,'http://w-cards-server.local/47-revision-v1/',0,'revision','',0),(49,1,'2021-01-04 19:42:35','2021-01-04 19:42:35','','Mess up','','inherit','closed','closed','','23-revision-v1','','','2021-01-04 19:42:35','2021-01-04 19:42:35','',23,'http://w-cards-server.local/23-revision-v1/',0,'revision','',0),(50,1,'2021-01-04 19:43:34','2021-01-04 19:43:34','','Affordable','','publish','open','open','','affordable','','','2021-01-04 19:43:34','2021-01-04 19:43:34','',0,'http://w-cards-server.local/?p=50',0,'post','',0),(51,1,'2021-01-04 19:43:34','2021-01-04 19:43:34','','Affordable','','inherit','closed','closed','','50-revision-v1','','','2021-01-04 19:43:34','2021-01-04 19:43:34','',50,'http://w-cards-server.local/50-revision-v1/',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (14,2,0),(21,2,0),(23,2,0),(25,2,0),(27,2,0),(29,2,0),(31,2,0),(33,2,0),(42,1,0),(45,1,0),(47,1,0),(50,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,4),(2,2,'category','',0,8);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0),(2,'Animals','animals',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','maxim'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers',''),(15,1,'show_welcome_panel','1'),(16,1,'session_tokens','a:1:{s:64:\"ede870a4411a61f4ebba2de80b5a7cabe3280e38a6dbb36f639a0798d48d6466\";a:4:{s:10:\"expiration\";i:1609960527;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\";s:5:\"login\";i:1609787727;}}'),(17,1,'wp_dashboard_quick_press_last_post_id','35'),(18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'maxim','$P$BlPxLd6yTDIgOyO1QzuBKvrxddohU8/','maxim','maxim.maslov.kd@gmail.com','http://w-cards-server.local','2020-11-22 15:54:11','',0,'maxim');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-03 20:05:59
