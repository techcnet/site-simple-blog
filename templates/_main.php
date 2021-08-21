<?php namespace ProcessWire;
  echo '<!DOCTYPE html>';
  echo '<html>';
  echo '<head>';
    echo '<meta name="viewport" content="width=device-width, initial-scale=1.0" />';
    echo '<meta http-equiv="content-type" content="text/html; charset=UTF-8" />';
    echo '<title>'.$title.'</title>';
    echo '<meta name="description" content="'.$summary.'" />';
    echo '<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico" />';
    echo '<link rel="stylesheet" type="text/css" href="'.$templates.'styles/main.css" />';
    echo '<link rel="stylesheet" type="text/css" href="'.$templates.'styles/contact_form.css" />';
    echo '<link rel="stylesheet" type="text/css" href="'.$templates.'styles/form.css" />';
    echo '<link rel="stylesheet" type="text/css" href="'.$templates.'styles/search.css" />';
    echo '<link rel="stylesheet" type="text/css" href="'.$templates.'styles/simple_blog.css" />';
  echo '</head>';
  echo '<body>';
    echo '<div id="wrapper">';
      echo '<div id="header">';
        echo '<div id="topnav">';
          echo '<img id="toplogo" src="'.$templates.'images/logo.png">';
          echo '<div id="desktopnav">';
            echo '<ul>';
              foreach ($homepage->and($homepage->children) as $item) {
                if ($item->menutext) {
                  echo '<li><a href="'.$item->url.'">'.$item->menutext.'</a></li>';
                } else {
                  echo '<li><a href="'.$item->url.'">'.$item->title.'</a></li>';
                }
              }
            echo '</ul>';
          echo '</div>';
          echo '<div id="mobilenav">';
            echo '<ul>';
              echo '<li>';
                echo '<a href="javascript:void(0)"><img alt="" src="'.$templates.'images/menu.png"></a>';
                echo '<ul>';
                  foreach ($homepage->and($homepage->children) as $item) {
                    if ($item->menutext) {
                      echo '<li><a href="'.$item->url.'">'.$item->menutext.'</a></li>';
                    } else {
                      echo '<li><a href="'.$item->url.'">'.$item->title.'</a></li>';
                    }
                  }
                echo '</ul>';
              echo '</li>';
            echo '</ul>';
          echo '</div>';
        echo '</div>';
      echo '</div>';
      echo '<div id="main">';
        echo '<div id="content">';
          echo '<div class="box">';
            if ($headline) {
              echo '<h1>'.$headline.'</h1>';
            }
            echo $content;
          echo '</div>';
          if ($comments) {
            echo '<div class="box">';
            echo $comments->render();
            echo $comments->renderForm();
            echo '</div>';
          }
        echo '</div>';
        if ($sidebar) {
          echo '<div id="sidebar">';
            echo '<div class="box">';
              echo $sidebar;
            echo '</div>';
          echo '</div>';
        }
      echo '</div>';
      echo '<div id="push"></div>';
    echo '</div>';
  echo '<div id="footer">';
  echo '&copy;&nbsp;'.$config->httpHosts[0];
  echo '</div>';
  echo '</body>';
  echo '</html>';