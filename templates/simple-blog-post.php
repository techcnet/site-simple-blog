<?php namespace ProcessWire;
  $content = $page->body;
  include_once('./_simple-blog-func.php');
  $content .= simple_blog_get_post($page, $user->language);