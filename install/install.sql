# --- WireDatabaseBackup {"time":"2021-03-17 11:44:22","user":"","dbName":"pwtst","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1015', '<p>This page lists all categories which have posts.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1016', '<p>This page lists all published posts in a tree structure sorted by published date.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1', '<p>This site profile for ProcessWire offers a simple and responsive blog which doesn\'t require any third-party modules. It works exclusively based on some template files.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1047', '<p>There are no settings for this blog. Everything is ready after installation. You just have to fill it with content and maybe <a	href=\"/posts/add-a-new-post/\">add some new pages.</a></p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1022', '<p>Open the page structure, select \"Posts\" and click \"New\".</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1022/add-new-post-1.jpg\" width=\"500\" /></p>\n\n<p>Make sure that \"simple-blog-post\" is selected as Template.</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1022/add-new-post-2.jpg\" width=\"500\" /></p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('27', '<p>Error 404 - Page not found</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1021', '<p>This site profile is intended for use with a fresh installation of ProcessWire.</p>\n\n<ol><li><a href=\"https://processwire.com/download/core/\" target=\"_blank\" rel=\"noreferrer noopener\">Download ProcessWire</a>, extract all files and folders and upload it into your web server folder.</li>\n	<li>Download the site profile, extract the \"site-simple-blog\" folder and upload it into the same folder.</li>\n	<li>Start the installation.</li>\n	<li>When prompted for Site Installation Profile select \"Simple Blog Profile for ProcessWire 3x\" and continue with installation.</li>\n</ol><p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1021/installation.jpg\" width=\"500\" /></p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1023', '<p>The post list shows a featured graphic in front of every post. This graphic is taken from the first available image in the image field of the respective post. Note that you can change the order of images in the image field by dragging it to another position. The image should have the dimension of 96x96px.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1027', '<p>Before you can select categories you have to create it. Open the page structure, select \"Categories\" and click \"New\".</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1027/create-category-1.357x0-is.jpg\" width=\"357\" /></p>\n\n<p>Make sure that \"simple-blog-category\" is selected as Template. The page title specifies the category name.</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1027/create-category-2.jpg\" width=\"500\" /></p>\n\n<p>Open your post and click on \"Add\" in the Categories field and select a category.</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1027/select-category.jpg\" width=\"500\" /></p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1028', '<p>Post lists are sorted by published date and paginated to 10 posts per page.</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1028/pagination.jpg\" width=\"500\" /></p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1029', '<p>Each page can have a sidebar regardless of the page type. Just open the page, click in the sidebar field and fill it with content. The sidebar is displayed on right from the body content if the browser window is 700px or wider. If smaller than 700px the sidebar will be displayed below the body content.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1032', '<p>Before you can use the contact form you have to specify the receiver email address. Open the page structure, select \"Contact\" and click \"Edit\". Enter the email address in the \"E-Mail Address\" field. You can also specify your \"Recaptcha-Site-Key\" and \"Recaptcha-Secret-Key\" to protect the form with Recaptcha.</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1032/contact-form.jpg\" width=\"500\" /></p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1033', '<p>The theme can easily customized to your requirement. The header graphic is located in <a	href=\"/site/templates/images/header.jpg\" target=\"_blank\" rel=\"noreferrer noopener\">/site/templates/images/header.jpg</a>. This graphic is stretched to the whole header size. The logo is located in <a	href=\"/site/templates/images/logo.png\" target=\"_blank\" rel=\"noreferrer noopener\">/site/templates/images/logo.png</a>. The height of the logo also specifies the height of the header if the browser window is 700px or wider. If smaller than 700px the height is reduced to 60px. The main style is located in <a	href=\"/site/templates/styles/main.css\" target=\"_blank\" rel=\"noreferrer noopener\">/site/templates/styles/main.css</a>.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1018', '<p>Don\'t forget to specify the receiver email address on the contact page in the backend.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1048', '<p>The whole blog consists mainly from the following pages:</p>\n\n<ol><li><strong>Home page</strong> (Template: simple-blog-home)<br />\n	This page shows the latest 5 posts below the content.</li>\n	<li><strong>Posts page</strong> (Template: simple-blog-posts)<br />\n	This page lists all published posts. Hidden posts are not listed. Posts are sorted by published date. The latest posts are shown first in the list. All posts are paginated to 10 posts per page.</li>\n	<li><strong>Post page</strong> (Template: simple-blog-post)<br />\n	This page shows the content and a comment list with comment form provided by the FieldtypeComments which is shipped with ProcessWire.</li>\n	<li><strong>Categories page</strong> (Template: simple-blog-categories)<br />\n	This page lists all categories which have posts.</li>\n	<li><strong>Category page</strong> (Template: simple-blog-category)<br />\n	This page lists all posts in this category. Hidden posts are not listed.</li>\n	<li><strong>Archive page</strong> (Template: simple-blog-archive)<br />\n	This page lists all published posts in a tree structure sorted by published date. Hidden posts are not listed.</li>\n	<li><strong>Search page</strong> (Template: simple-search)<br />\n	This page offers a search form.</li>\n	<li><strong>Contact page</strong> (Template: simple-contact-form)<br />\n	This page offers a contact form.</li>\n</ol><p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1048/structure.jpg\" width=\"500\" /></p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1014', '<p>This page lists all published posts.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1051', '<p>This site profile for ProcessWire is provided by: <a href=\"https://tech-c.net/\" target=\"_blank\" rel=\"noreferrer noopener\">https://tech-c.net/</a></p>\n\n<p><a href=\"https://www.paypal.me/techcnet/0usd\" rel=\"nofollow noreferrer noopener\" target=\"_blank\"><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1051/donate-paypal.png\" width=\"150\" /></a></p>');

DROP TABLE IF EXISTS `field_categories`;
CREATE TABLE `field_categories` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1021', '1019', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1029', '1019', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1033', '1019', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1051', '1019', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1021', '1020', '1');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1023', '1020', '2');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1028', '1020', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1022', '1035', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1033', '1035', '2');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1048', '1035', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1029', '1036', '1');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1047', '1037', '2');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1023', '1038', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1029', '1038', '2');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1048', '1038', '1');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1028', '1039', '2');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1028', '1040', '1');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1027', '1041', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1032', '1041', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1033', '1041', '1');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1022', '1042', '1');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1047', '1042', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1023', '1043', '1');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1047', '1043', '1');

DROP TABLE IF EXISTS `field_comments`;
CREATE TABLE `field_comments` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `cite` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `created` int(10) unsigned NOT NULL,
  `created_users_id` int(10) unsigned NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `user_agent` varchar(250) NOT NULL DEFAULT '',
  `website` varchar(250) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `flags` int(10) unsigned NOT NULL DEFAULT 0,
  `code` varchar(128) DEFAULT NULL,
  `subcode` varchar(40) DEFAULT NULL,
  `upvotes` int(10) unsigned NOT NULL DEFAULT 0,
  `downvotes` int(10) unsigned NOT NULL DEFAULT 0,
  `stars` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_id_sort` (`pages_id`,`sort`),
  KEY `status` (`status`,`email`),
  KEY `pages_id` (`pages_id`,`status`,`created`),
  KEY `created` (`created`,`status`),
  KEY `code` (`code`),
  KEY `subcode` (`subcode`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_comments_votes`;
CREATE TABLE `field_comments_votes` (
  `comment_id` int(10) unsigned NOT NULL,
  `vote` tinyint(4) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(15) NOT NULL DEFAULT '',
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_id`,`ip`,`vote`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_datetime`;
CREATE TABLE `field_datetime` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_datetime` (`pages_id`, `data`) VALUES('1021', '2021-12-13 00:00:00');
INSERT INTO `field_datetime` (`pages_id`, `data`) VALUES('1047', '2021-12-12 00:11:15');
INSERT INTO `field_datetime` (`pages_id`, `data`) VALUES('1027', '2021-08-08 00:00:00');
INSERT INTO `field_datetime` (`pages_id`, `data`) VALUES('1028', '2021-06-07 00:00:00');
INSERT INTO `field_datetime` (`pages_id`, `data`) VALUES('1029', '2021-08-07 00:00:00');
INSERT INTO `field_datetime` (`pages_id`, `data`) VALUES('1032', '2021-02-02 00:00:00');
INSERT INTO `field_datetime` (`pages_id`, `data`) VALUES('1033', '2021-01-01 00:00:00');
INSERT INTO `field_datetime` (`pages_id`, `data`) VALUES('1022', '2021-11-11 00:00:00');
INSERT INTO `field_datetime` (`pages_id`, `data`) VALUES('1023', '2021-10-10 00:00:00');
INSERT INTO `field_datetime` (`pages_id`, `data`) VALUES('1048', '2021-12-11 23:18:10');
INSERT INTO `field_datetime` (`pages_id`, `data`) VALUES('1051', '2020-07-12 04:07:10');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_headline`;
CREATE TABLE `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1', 'Simple Blog Profile for ProcessWire');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1014', 'Posts');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('27', '404 Page');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1015', 'Categories');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1016', 'Archive');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1018', 'Contact');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1019', 'Category 1');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1020', 'Category 2');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1021', 'Installation');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1022', 'Add a new post');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1023', 'Set the featured graphic');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1017', 'Search');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1027', 'Create and select categories');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1028', 'Pagination');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1029', 'Sidebars');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1032', 'Contact form');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1033', 'Theme');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1035', 'Category 3');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1036', 'Category 4');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1037', 'Category 5');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1038', 'Category 6');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1039', 'Category 7');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1040', 'Category 8');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1041', 'Category 9');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1042', 'Category 10');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1043', 'Category 11');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1047', 'Setup');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1048', 'Structure');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1051', 'About...');

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `filedata` mediumtext DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `ratio` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `filesize` (`filesize`),
  KEY `width` (`width`),
  KEY `height` (`height`),
  KEY `ratio` (`ratio`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1022', 'featured-graphic.png', '0', '', '2021-03-16 01:20:58', '2021-03-16 01:20:58', '3055', '41', '41', '', '96', '96', '1.00');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1028', 'pagination.jpg', '1', '', '2021-03-17 10:43:19', '2021-03-17 10:43:19', '132097', '41', '41', '', '500', '336', '1.49');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1047', 'featured-graphic.png', '0', '', '2021-03-16 10:15:25', '2021-03-16 10:15:25', '3055', '41', '41', '', '96', '96', '1.00');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1051', 'featured-graphic.png', '0', '', '2021-03-17 04:08:27', '2021-03-17 04:08:27', '3055', '41', '41', '', '96', '96', '1.00');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1048', 'structure.jpg', '1', '', '2021-03-17 03:19:26', '2021-03-17 03:19:26', '66362', '41', '41', '', '500', '368', '1.36');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1022', 'add-new-post-1.jpg', '1', '', '2021-03-17 03:25:26', '2021-03-17 03:25:26', '50259', '41', '41', '', '500', '315', '1.59');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1023', 'featured-graphic.png', '0', '', '2021-03-16 01:21:28', '2021-03-16 01:21:28', '3055', '41', '41', '', '96', '96', '1.00');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1027', 'select-category.jpg', '3', '', '2021-03-17 02:56:02', '2021-03-17 02:56:02', '34888', '41', '41', '', '500', '237', '2.11');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1029', 'featured-graphic.png', '0', '', '2021-03-16 01:23:14', '2021-03-16 01:23:14', '3055', '41', '41', '', '96', '96', '1.00');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1032', 'contact-form.jpg', '1', '', '2021-03-17 02:18:48', '2021-03-17 02:18:48', '76227', '41', '41', '', '500', '446', '1.12');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1033', 'featured-graphic.png', '0', '', '2021-03-16 01:24:49', '2021-03-16 01:24:49', '3055', '41', '41', '', '96', '96', '1.00');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1032', 'featured-graphic.png', '0', '', '2021-03-16 01:24:24', '2021-03-16 01:24:24', '3055', '41', '41', '', '96', '96', '1.00');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1021', 'featured-graphic.png', '0', '', '2021-03-16 01:20:15', '2021-03-16 01:20:15', '3055', '41', '41', '', '96', '96', '1.00');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1021', 'installation.jpg', '1', '', '2021-03-17 04:23:17', '2021-03-17 04:23:17', '70258', '41', '41', '', '500', '302', '1.66');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1028', 'featured-graphic.png', '0', '', '2021-03-16 01:22:52', '2021-03-16 01:22:52', '3055', '41', '41', '', '96', '96', '1.00');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1027', 'create-category-1.jpg', '1', '', '2021-03-17 02:56:02', '2021-03-17 02:56:02', '59508', '41', '41', '', '369', '378', '0.98');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1027', 'create-category-2.jpg', '2', '', '2021-03-17 02:56:02', '2021-03-17 02:56:02', '53032', '41', '41', '', '500', '304', '1.64');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1027', 'featured-graphic.png', '0', '', '2021-03-16 01:22:23', '2021-03-16 01:22:23', '3055', '41', '41', '', '96', '96', '1.00');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1048', 'featured-graphic.png', '0', '', '2021-03-16 10:18:56', '2021-03-16 10:18:56', '3055', '41', '41', '', '96', '96', '1.00');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1022', 'add-new-post-2.jpg', '2', '', '2021-03-17 04:16:49', '2021-03-17 04:16:49', '47819', '41', '41', '', '500', '302', '1.66');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1051', 'donate-paypal.png', '1', '', '2021-03-17 05:12:50', '2021-03-17 05:12:50', '19272', '41', '41', '', '150', '70', '2.14');

DROP TABLE IF EXISTS `field_menutext`;
CREATE TABLE `field_menutext` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_menutext` (`pages_id`, `data`) VALUES('1', 'Home');
INSERT INTO `field_menutext` (`pages_id`, `data`) VALUES('1014', 'Posts');
INSERT INTO `field_menutext` (`pages_id`, `data`) VALUES('1015', 'Categories');
INSERT INTO `field_menutext` (`pages_id`, `data`) VALUES('1016', 'Archive');
INSERT INTO `field_menutext` (`pages_id`, `data`) VALUES('1017', 'Search');
INSERT INTO `field_menutext` (`pages_id`, `data`) VALUES('1018', 'Contact');

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT 0,
  `data` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1009', '158');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1011', '160');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1024', '165');

DROP TABLE IF EXISTS `field_recaptchasecretkey`;
CREATE TABLE `field_recaptchasecretkey` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_recaptchasitekey`;
CREATE TABLE `field_recaptchasitekey` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_sidebar`;
CREATE TABLE `field_sidebar` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1', '<h3>Sidebar</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1015', '<h3>Sidebar</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1016', '<h3>Sidebar</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1014', '<h3>Sidebar</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1017', '<h3>Sidebar</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES('1018', '<h3>Sidebar</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');

DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1027', 'Before you can select categories you have to create it. Open the page structure, select \"Categories\" and click \"New\".');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1028', 'Post lists are sorted by published date and paginated to 10 posts per page.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1029', 'Each page can have a sidebar regardless of the page type. Just open the page, click in the sidebar field and fill it with content.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1021', 'This site profile is intended for use with a fresh installation of ProcessWire.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('27', 'Error 404 - Page not found');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1022', 'Open the page structure, select \"Posts\" and click \"New\".');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1023', 'The post list shows a featured graphic in front of every post. This graphic is taken from the first available image in the image field of the respective post.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1', 'This site profile for ProcessWire offers a simple and responsive blog which doesn\'t require any third-party modules. It works exclusively based on some template files.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1032', 'Before you can use the contact form you have to specify the receiver email address. Open the page structure, select \"Contact\" and click \"Edit\".');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1033', 'The theme can easily customized to your requirement.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1047', 'There are no settings for this blog. Everything is ready after installation. You just have to fill it with content and maybe add some new pages.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1048', 'The whole blog consists mainly from a few template pages.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1018', 'Contact form.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1014', 'This page lists all published posts.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1015', 'This page lists all categories which have posts.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1016', 'This page lists all published posts in a tree structure sorted by published date.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1017', 'This page offers a search form.');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1051', 'This site profile for ProcessWire is provided by: https://tech-c.net/');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`) VALUES('11', 'Templates');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('16', 'Fields');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('22', 'Setup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('3', 'Pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('6', 'Add Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('8', 'Tree');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('9', 'Save Sort');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('10', 'Edit');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('21', 'Modules');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('29', 'Users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('30', 'Roles');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('2', 'Admin');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('7', 'Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('27', '404 Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('302', 'Insert Link');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('23', 'Login');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('304', 'Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('301', 'Empty Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('300', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('303', 'Insert Image');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('28', 'Access');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('31', 'Permissions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('32', 'Edit pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('34', 'Delete pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('35', 'Move pages (change parent)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('36', 'View pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('50', 'Sort child pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('51', 'Change templates on pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('52', 'Administer users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('53', 'User can update profile/password');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('54', 'Lock or unlock a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1', 'Simple Blog Profile for ProcessWire');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1017', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1016', 'Archive');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1014', 'Posts');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1015', 'Categories');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1006', 'Use Page Lister');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1007', 'Find');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1009', 'Recent');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1010', 'Can see recently edited pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1011', 'Logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1012', 'Can view system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1013', 'Can manage system logs');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1018', 'Contact');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1019', 'Category 1');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1020', 'Category 2');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1021', 'Installation');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1022', 'Add a new post');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1023', 'Set the featured graphic');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1024', 'Comments');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1025', 'Use the comments manager');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1027', 'Create and select categories');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1028', 'Pagination');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1029', 'Sidebars');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1032', 'Contact form');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1033', 'Theme');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1035', 'Category 3');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1036', 'Category 4');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1037', 'Category 5');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1038', 'Category 6');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1039', 'Category 7');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1040', 'Category 8');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1041', 'Category 9');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1042', 'Category 10');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1043', 'Category 11');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1047', 'Setup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1048', 'Structure');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1051', 'About...');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('114', 'basic');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('108', 'simple-blog-posts');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('116', 'simple-search');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('115', 'simple-contact-form');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('110', 'simple-blog-home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('109', 'simple-blog-category');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('106', 'simple-blog-post');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('111', 'simple-blog-archive');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('113', 'simple-blog-categories');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `fields_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sort` int(11) unsigned NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '44', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '79', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '99', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '103', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '82', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '76', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '98', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('114', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '97', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '92', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '101', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '78', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '76', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '101', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '78', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '79', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '82', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '44', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '76', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '101', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '78', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '79', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '76', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '101', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '78', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '79', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '82', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '100', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '44', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '82', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '76', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '101', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '78', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '79', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '101', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '76', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '82', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '44', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '82', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '44', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '82', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '44', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '102', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '79', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '82', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('116', '44', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '82', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '44', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '44', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('115', '78', '2', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitle', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('82', 'FieldtypeTextarea', 'sidebar', '0', 'Sidebar', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":5,\"contentType\":1,\"toolbar\":\"Format, Bold, Italic, -, RemoveFormat\\r\\nNumberedList, BulletedList, -, Blockquote\\r\\nPWLink, Unlink, Anchor\\r\\nPWImage, Table, HorizontalRule, SpecialChar\\r\\nPasteText, PasteFromWord\\r\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8],\"collapsed\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('44', 'FieldtypeImage', 'images', '0', 'Images', '{\"extensions\":\"gif jpg jpeg png\",\"adminThumbs\":1,\"inputfieldClass\":\"InputfieldImage\",\"maxFiles\":0,\"descriptionRows\":1,\"fileSchema\":270,\"textformatters\":[\"TextformatterEntities\"],\"outputFormat\":1,\"defaultValuePage\":0,\"defaultGrid\":0,\"icon\":\"camera\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('79', 'FieldtypeTextarea', 'summary', '1', 'Summary', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"collapsed\":2,\"rows\":3,\"contentType\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('76', 'FieldtypeTextarea', 'body', '0', 'Body', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":10,\"contentType\":1,\"toolbar\":\"Format, Bold, Italic, -, RemoveFormat\\r\\nNumberedList, BulletedList, -, Blockquote\\r\\nPWLink, Unlink, Anchor\\r\\nPWImage, Table, HorizontalRule, SpecialChar\\r\\nPasteText, PasteFromWord\\r\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('78', 'FieldtypeText', 'headline', '0', 'Headline', '{\"description\":\"Use this instead of the Title if a longer headline is needed than what you want to appear in navigation.\",\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":2,\"size\":0,\"maxlength\":1024}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypePage', 'categories', '0', 'Categories', '{\"derefAsPage\":0,\"inputfield\":\"InputfieldPageListSelectMultiple\",\"parent_id\":1015,\"labelFieldName\":\"title\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('99', 'FieldtypeDatetime', 'datetime', '0', 'Published', '{\"dateOutputFormat\":\"l, j F Y\",\"collapsed\":0,\"inputType\":\"text\",\"htmlType\":\"date\",\"datepicker\":3,\"timeInputSelect\":0,\"dateInputFormat\":\"l, j F Y\",\"size\":25,\"dateSelectFormat\":\"yMd\",\"yearFrom\":1921,\"yearTo\":2041,\"yearLock\":0,\"defaultToday\":1,\"timeInputFormat\":\"H:i:s\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('100', 'FieldtypeComments', 'comments', '0', 'Comments', '{\"schemaVersion\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('101', 'FieldtypeText', 'menutext', '0', 'Menu text', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('102', 'FieldtypeText', 'recaptchasitekey', '0', 'Recaptcha-Site-Key', '{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeText', 'recaptchasecretkey', '0', 'Recaptcha-Secret-Key', '');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '32', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\",\"InputfieldPageAutocomplete\"]}', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"admin_theme\"]}', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":18,\"coreVersion\":\"3.0.165\"}', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('152', 'PagePathHistory', '3', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2021-03-14 02:50:02');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('158', 'ProcessRecentPages', '1', '', '2021-03-14 02:51:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'AdminThemeUikit', '10', '', '2021-03-14 02:51:59');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'ProcessLogger', '1', '', '2021-03-14 02:52:16');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'InputfieldIcon', '0', '', '2021-03-14 02:52:17');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'InputfieldToggle', '0', '', '2021-03-15 04:26:34');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('163', 'FieldtypeComments', '1', '', '2021-03-15 05:37:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('164', 'InputfieldCommentsAdmin', '0', '', '2021-03-15 05:37:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('165', 'ProcessCommentsManager', '1', '', '2021-03-15 05:52:59');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'InputfieldPageAutocomplete', '0', '', '2021-03-16 11:35:50');

DROP TABLE IF EXISTS `page_path_history`;
CREATE TABLE `page_path_history` (
  `path` varchar(250) NOT NULL,
  `pages_id` int(10) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`path`),
  KEY `pages_id` (`pages_id`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT 0,
  `templates_id` int(11) unsigned NOT NULL DEFAULT 0,
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT 2,
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT 2,
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1052 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1', '0', '56', 'home', '9', '2021-03-17 04:17:39', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('2', '1', '2', 'processwire', '1035', '2021-03-14 02:51:59', '40', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('3', '2', '2', 'page', '21', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('6', '3', '2', 'add', '21', '2021-03-14 02:52:58', '40', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('7', '1', '2', 'trash', '1039', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('8', '3', '2', 'list', '21', '2021-03-14 02:53:02', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('9', '3', '2', 'sort', '1047', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('10', '3', '2', 'edit', '1045', '2021-03-14 02:52:59', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('11', '22', '2', 'template', '21', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('16', '22', '2', 'field', '21', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('21', '2', '2', 'module', '21', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('22', '2', '2', 'setup', '21', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('23', '2', '2', 'login', '1035', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('27', '1', '60', 'http404', '1035', '2021-03-15 04:38:27', '41', '2021-03-14 02:50:02', '3', '2021-03-14 02:50:02', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('28', '2', '2', 'access', '13', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('29', '28', '2', 'users', '29', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('30', '28', '2', 'roles', '29', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('31', '28', '2', 'permissions', '29', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('32', '31', '5', 'page-edit', '25', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('34', '31', '5', 'page-delete', '25', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('35', '31', '5', 'page-move', '25', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('36', '31', '5', 'page-view', '25', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('37', '30', '4', 'guest', '25', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('38', '30', '4', 'superuser', '25', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('41', '29', '3', 'admin', '1', '2021-03-14 02:51:59', '40', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('40', '29', '3', 'guest', '25', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('50', '31', '5', 'page-sort', '25', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('51', '31', '5', 'page-template', '25', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('52', '31', '5', 'user-admin', '25', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('53', '31', '5', 'profile-edit', '1', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('54', '31', '5', 'page-lock', '1', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('300', '3', '2', 'search', '1045', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('301', '3', '2', 'trash', '1047', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('302', '3', '2', 'link', '1041', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('303', '3', '2', 'image', '1041', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '2', '2021-03-14 02:50:02', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('304', '2', '2', 'profile', '1025', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '41', '2021-03-14 02:50:02', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1015', '1', '59', 'categories', '1', '2021-03-17 03:51:34', '41', '2021-03-15 04:12:48', '41', '2021-03-15 04:12:57', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1016', '1', '57', 'archive', '1', '2021-03-16 11:48:15', '41', '2021-03-15 04:13:28', '41', '2021-03-15 04:13:36', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1019', '1015', '55', 'category-1', '1', '2021-03-17 04:18:22', '41', '2021-03-15 04:17:51', '41', '2021-03-15 04:17:59', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1017', '1', '62', 'search', '1', '2021-03-16 11:48:36', '41', '2021-03-15 04:14:01', '41', '2021-03-15 04:14:17', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1006', '31', '5', 'page-lister', '1', '2021-03-14 02:50:02', '40', '2021-03-14 02:50:02', '40', '2021-03-14 02:50:02', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1007', '3', '2', 'lister', '1', '2021-03-14 02:50:02', '40', '2021-03-14 02:50:02', '40', '2021-03-14 02:50:02', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1009', '3', '2', 'recent-pages', '1', '2021-03-14 02:51:58', '40', '2021-03-14 02:51:58', '40', '2021-03-14 02:51:58', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1010', '31', '5', 'page-edit-recent', '1', '2021-03-14 02:51:58', '40', '2021-03-14 02:51:58', '40', '2021-03-14 02:51:58', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1011', '22', '2', 'logs', '1', '2021-03-14 02:52:16', '40', '2021-03-14 02:52:16', '40', '2021-03-14 02:52:16', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1012', '31', '5', 'logs-view', '1', '2021-03-14 02:52:16', '40', '2021-03-14 02:52:16', '40', '2021-03-14 02:52:16', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1013', '31', '5', 'logs-edit', '1', '2021-03-14 02:52:16', '40', '2021-03-14 02:52:16', '40', '2021-03-14 02:52:16', '12');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1014', '1', '54', 'posts', '1', '2021-03-17 05:08:54', '41', '2021-03-15 04:11:55', '41', '2021-03-15 04:12:08', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1018', '1', '61', 'contact', '1', '2021-03-17 03:05:59', '41', '2021-03-15 04:14:27', '41', '2021-03-15 04:14:36', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1020', '1015', '55', 'category-2', '1', '2021-03-15 04:18:26', '41', '2021-03-15 04:18:18', '41', '2021-03-15 04:18:26', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1021', '1014', '52', 'installation', '1', '2021-03-17 07:10:49', '41', '2021-03-15 04:18:55', '41', '2021-03-16 04:13:59', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1022', '1014', '52', 'add-a-new-post', '1', '2021-03-17 05:16:49', '41', '2021-03-15 04:19:26', '41', '2021-03-15 04:19:35', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1023', '1014', '52', 'set-the-featured-graphic', '1', '2021-03-17 06:17:03', '41', '2021-03-15 04:19:54', '41', '2021-03-15 04:20:05', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1024', '22', '2', 'comments', '1', '2021-03-15 05:52:59', '41', '2021-03-15 05:52:59', '41', '2021-03-15 05:52:59', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1025', '31', '5', 'comments-manager', '1', '2021-03-15 05:52:59', '41', '2021-03-15 05:52:59', '41', '2021-03-15 05:52:59', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1027', '1014', '52', 'create-and-select-categories', '1', '2021-03-17 06:17:29', '41', '2021-03-15 07:17:21', '41', '2021-03-15 07:17:32', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1028', '1014', '52', 'pagination', '1', '2021-03-17 11:43:19', '41', '2021-03-15 07:18:06', '41', '2021-03-15 07:18:15', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1029', '1014', '52', 'sidebars', '1', '2021-03-17 06:17:56', '41', '2021-03-15 07:18:37', '41', '2021-03-15 07:18:51', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1032', '1014', '52', 'contact-form', '1', '2021-03-17 11:45:22', '41', '2021-03-15 07:20:04', '41', '2021-03-15 07:20:15', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1033', '1014', '52', 'theme', '1', '2021-03-17 06:21:08', '41', '2021-03-15 07:20:32', '41', '2021-03-15 07:20:41', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1035', '1015', '55', 'category-3', '1', '2021-03-15 08:05:07', '41', '2021-03-15 08:04:58', '41', '2021-03-15 08:05:07', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1036', '1015', '55', 'category-4', '1', '2021-03-15 08:05:43', '41', '2021-03-15 08:05:34', '41', '2021-03-15 08:05:43', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1037', '1015', '55', 'category-5', '1', '2021-03-15 08:06:10', '41', '2021-03-15 08:06:01', '41', '2021-03-15 08:06:10', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1038', '1015', '55', 'category-6', '1', '2021-03-15 08:07:32', '41', '2021-03-15 08:07:23', '41', '2021-03-15 08:07:32', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1039', '1015', '55', 'category-7', '1', '2021-03-15 08:08:00', '41', '2021-03-15 08:07:52', '41', '2021-03-15 08:08:00', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1040', '1015', '55', 'category-8', '1', '2021-03-15 08:08:26', '41', '2021-03-15 08:08:17', '41', '2021-03-15 08:08:26', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1041', '1015', '55', 'category-9', '1', '2021-03-15 08:09:01', '41', '2021-03-15 08:08:51', '41', '2021-03-15 08:09:01', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1042', '1015', '55', 'category-10', '1', '2021-03-15 08:09:34', '41', '2021-03-15 08:09:25', '41', '2021-03-15 08:09:34', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1043', '1015', '55', 'category-11', '1', '2021-03-15 08:10:08', '41', '2021-03-15 08:10:00', '41', '2021-03-15 08:10:08', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1048', '1014', '52', 'structure', '1', '2021-03-17 06:16:06', '41', '2021-03-16 11:18:09', '41', '2021-03-16 11:18:56', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1047', '1014', '52', 'setup', '1', '2021-03-17 11:30:34', '41', '2021-03-16 11:11:14', '41', '2021-03-16 11:11:46', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES('1051', '1014', '52', 'about', '1', '2021-03-17 06:13:08', '41', '2021-03-17 05:07:10', '41', '2021-03-17 05:07:59', '10');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2021-03-15 04:11:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2021-03-15 04:11:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2021-03-15 04:11:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2021-03-15 04:11:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2021-03-15 04:11:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2021-03-15 04:11:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2021-03-15 04:11:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2021-03-15 04:11:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2021-03-15 04:11:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2021-03-15 04:11:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2021-03-15 04:11:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2021-03-15 04:11:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1010', '2', '2021-03-15 04:11:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1012', '2', '2021-03-15 04:11:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2021-03-15 04:11:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1014', '56', '2021-03-15 04:11:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1015', '56', '2021-03-15 04:12:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1016', '56', '2021-03-15 04:13:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1017', '56', '2021-03-15 04:14:01');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1018', '56', '2021-03-15 04:14:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1019', '56', '2021-03-15 04:17:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1020', '56', '2021-03-15 04:18:18');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1021', '56', '2021-03-15 04:18:55');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1022', '56', '2021-03-15 04:19:26');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1023', '56', '2021-03-15 04:19:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('27', '56', '2021-03-15 04:35:18');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1025', '2', '2021-03-15 05:52:59');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1047', '56', '2021-03-16 11:11:14');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1027', '56', '2021-03-15 07:17:21');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1028', '56', '2021-03-15 07:18:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1029', '56', '2021-03-15 07:18:37');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1032', '56', '2021-03-15 07:20:04');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1033', '56', '2021-03-15 07:20:32');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1035', '56', '2021-03-15 08:04:58');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1036', '56', '2021-03-15 08:05:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1037', '56', '2021-03-15 08:06:01');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1038', '56', '2021-03-15 08:07:23');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1039', '56', '2021-03-15 08:07:52');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1040', '56', '2021-03-15 08:08:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1041', '56', '2021-03-15 08:08:51');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1042', '56', '2021-03-15 08:09:25');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1043', '56', '2021-03-15 08:10:00');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1048', '56', '2021-03-16 11:18:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1051', '56', '2021-03-17 05:07:10');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT 0,
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `flags` int(11) NOT NULL DEFAULT 0,
  `cache_time` mediumint(9) NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1615685443,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('55', 'simple-blog-category', '109', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1615789417,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('54', 'simple-blog-posts', '108', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1615859525,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('60', 'basic', '114', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1615785403,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('62', 'simple-search', '116', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1615859570,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('52', 'simple-blog-post', '106', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1615789420,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('59', 'simple-blog-categories', '113', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1615860349,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('57', 'simple-blog-archive', '111', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1615859454,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('56', 'simple-blog-home', '110', '0', '0', '{\"useRoles\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1615892276,\"ns\":\"ProcessWire\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('61', 'simple-contact-form', '115', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1615947424,\"ns\":\"ProcessWire\"}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":24,"numCreateTables":31,"numInserts":563,"numSeconds":0}