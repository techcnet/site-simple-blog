<?php namespace ProcessWire;
  echo '<!DOCTYPE html>';
  echo '<html>';
    echo '<head>';
      echo '<meta name="viewport" content="width=device-width, initial-scale=1.0" />';
      echo '<meta http-equiv="content-type" content="text/html; charset=UTF-8" />';
      echo '<title>'.$title.'</title>';
      echo '<meta name="description" content="'.$summary.'" />';
      echo '<link rel="icon" type="image/x-icon" href="/favicon.ico" />';
      echo '<link rel="stylesheet" type="text/css" href="'.$templates.'styles/main.css" />';
      echo '<link rel="stylesheet" type="text/css" href="'.$templates.'styles/contact_form.css" />';
      echo '<link rel="stylesheet" type="text/css" href="'.$templates.'styles/form.css" />';
      echo '<link rel="stylesheet" type="text/css" href="'.$templates.'styles/search.css" />';
      echo '<link rel="stylesheet" type="text/css" href="'.$templates.'styles/simple_blog.css" />';
    echo '</head>';
    echo '<body>';
      echo '<div id="wrapper">';
        echo '<div id="header">';
          echo '<div id="header2">';
            echo '<img id="logo" alt="" src="'.$templates.'images/logo.png" />';
            echo '<ul id="nav">';
              echo '<li>';
                echo '<a href="javascript:void(0);"><img alt="" src="'.$templates.'images/menu.png" /></a>';
                echo '<ul>';
                  foreach ($homepage->and($homepage->children) as $item) {
                    if ($item->menutext) {
                      echo '<li><a href="'.$item->url.'">';
                      foreach ($item->images as $image) {
                        if ($image->basename == 'menu-image.png') {
                          echo '<img alt="" src="'.$image->url.'" />';
                          break;
                        }
                      }
                      echo $item->menutext.'</a></li>';
                    }
                  }
                echo '</ul>';
              echo '</li>';
            echo '</ul>';
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
        echo '<div id="footer-table">';
          echo '<div id="footer-row">';
            echo '<div id="footer-cell1">';
              echo '<span>'.__('Quick Links').'</span><hr />';
              echo '<ul style="footer-links">';
                foreach ($homepage->and($homepage->children) as $item) {
                  if ($item->menutext) {
                    echo '<li><a href="'.$item->url.'">'.$item->menutext.'</a></li>';
                  }
                }
              echo '</ul>';
            echo '</div>';
            echo '<div id="footer-cell2">';
              echo '<span>'.__('Search').'</span><hr />';
              echo '<form action="'.$pages->get('1017')->url.'" id="footer-search" method="GET">';
                echo '<div>';
                  echo '<input name="q" type="text" value="" />';
                echo '</div>';
                echo '<div>';
                  echo '<input type="submit" value="&nbsp;" />';
                echo '</div>';
              echo '</form>';
            echo '</div>';
            echo '<div id="footer-cell3">';
              echo '<span>'.__('Cookies').'</span><hr />';
              echo '<p>'.__('This website uses cookies. By using this website, you agree to the Cookies Policy.').'&nbsp;<a href="'.$pages->get('1053')->url.'">'.__('Read more...').'</a></p>';
            echo '</div>';
          echo '</div>';
        echo '</div>';
      echo '</div>';

    echo '</body>';
  echo '</html>';
