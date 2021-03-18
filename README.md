# Simple Blog Profile for ProcessWire 3x

This site profile for ProcessWire offers a simple and responsive blog which doesn't require any third-party modules. It works exclusively based on some template files.

!["Installation"](https://tech-c.net/site/assets/files/1198/screenshot-500.jpg)

## Installation
This site profile is intended for use with a fresh installation of ProcessWire.
1. [Download ProcessWire](https://processwire.com/download/core/ "Download ProcessWire"), extract all files and folders and upload it into your web server folder.
2. Download the site profile, extract the **site-simple-blog** folder and upload it into the same folder.
3. Start the installation.
4. When prompted for Site Installation Profile select **Simple Blog Profile for ProcessWire 3x** and continue with installation.

!["Installation"](https://tech-c.net/site/assets/files/1198/installation.jpg)

## Setup
There are no settings for this blog. Everything is ready after installation. You just have to fill it with content and maybe add some new pages.

## Structure
The whole blog consists mainly from the following pages:
1. __Home page__ (Template: simple-blog-home) This page shows the latest 5 posts below the content.
2. __Posts page__ (Template: simple-blog-posts) This page lists all published posts. Hidden posts are not listed. Posts are sorted by published date. The latest posts are shown first in the list. All posts are paginated to 10 posts per page.
3. __Post page__ (Template: simple-blog-post) This page shows the content and a comment list with comment form provided by the FieldtypeComments which is shipped with ProcessWire.
4. __Categories page__ (Template: simple-blog-categories) This page lists all categories which have posts.
5. __Category page__ (Template: simple-blog-category) This page lists all posts in this category. Hidden posts are not listed.
6. __Archive page__ (Template: simple-blog-archive) This page lists all published posts in a tree structure sorted by published date. Hidden posts are not listed.
7. __Search page__ (Template: simple-search) This page offers a search form.
8. __Contact page__ (Template: simple-contact-form) This page offers a contact form.

!["Structure"](https://tech-c.net/site/assets/files/1198/structure.jpg)

## Add a new post
Open the page structure, select **Posts** and click **New**.

!["Add a new post"](https://tech-c.net/site/assets/files/1198/add-new-post-1.jpg)

Make sure that **simple-blog-post** is selected as Template.

!["Add a new post"](https://tech-c.net/site/assets/files/1198/add-new-post-2.jpg)

## Set the featured graphic
The post list shows a featured graphic in front of every post. This graphic is taken from the first available image in the image field of the respective post. Note that you can change the order of images in the image field by dragging it to another position. The image should have the dimension of 96x96px.

## Create and select categories
Before you can select categories you have to create it. Open the page structure, select **Categories** and click **New**.

!["Create category"](https://tech-c.net/site/assets/files/1198/create-category-1.jpg)

Make sure that **simple-blog-category** is selected as Template. The page title specifies the category name.

!["Create category"](https://tech-c.net/site/assets/files/1198/create-category-2.jpg)

Open your post and click on **Add** in the Categories field and select a category.

!["Create category"](https://tech-c.net/site/assets/files/1198/select-category.jpg)

## Sidebars
Each page can have a sidebar regardless of the page type. Just open the page, click in the sidebar field and fill it with content. The sidebar is displayed on right from the body content if the browser window is 700px or wider. If smaller than 700px the sidebar will be displayed below the body content.

## Pagination
Post lists are sorted by published date and paginated to 10 posts per page.

!["Create category"](https://tech-c.net/site/assets/files/1198/pagination.jpg)

## Contact form
Before you can use the contact form you have to specify the receiver email address. Open the page structure, select **Contact** and click **Edit**. Enter the email address in the **E-Mail Address** field. You can also specify your **Recaptcha-Site-Key** and **Recaptcha-Secret-Key** to protect the form with Recaptcha.

!["Create category"](https://tech-c.net/site/assets/files/1198/contact-form.jpg)
