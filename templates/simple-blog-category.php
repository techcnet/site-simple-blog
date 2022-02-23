<?php namespace ProcessWire;
  $content = $page->body;
  include_once('./_simple-blog-func.php');
  $content .= simple_blog_get_categories($pages, $user->language, $page->title, 0, 0, 1, 10);
