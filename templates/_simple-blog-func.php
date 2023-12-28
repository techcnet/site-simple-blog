<?php namespace ProcessWire;

function simple_blog_get_pagination($start, $max, $limit) {
  if ($limit > 0) {
    $result = '<ul class="pagination">';
    $j = 0;
    for ($i=0; $i<$max; $i+=$limit) {
      $j++;
      $result .= '<li><a ';
      if ($start == $i) {
        $result .= 'class="activepagination" ';
      }
      $result .= 'href="?start='.$i.'">'.$j.'</a></li>';
    }
    $result .= '</ul>';
    return $result;
  } else {
    return '';
 }
}

function simple_blog_get_categories($pages, $language, $show_counts) {
  $categories = $pages->get('1')->find('template=simple-blog-category');

  $result = '<ul class="simple_blog_categories">';

  foreach ($categories as $categoriy) {
    $posts = $pages->get('1')->find('template=simple-blog-post,sort=-datetime,categories='.$categoriy->id);

    if (count($posts) > 0) {
      $result .= '<li>';
      if ($categoriy->localUrl) {
        $result .= '<a href="'.$categoriy->localUrl($language).'">'.$categoriy->title.'</a>';
      } else {
        $result .= '<a href="'.$categoriy->url().'">'.$categoriy->title.'</a>';
      }
      if ($show_counts == 1) {
        $result .= ' ('.count($posts).')';
      }

      $result .= '</li>';
    }
  }

  $result .= '</ul>';

  return $result;
}

function simple_blog_get_category($pages, $language, $category, $pagination) {
  $result = '';

  $categories = $pages->get('1')->find('template=simple-blog-category,title="'.$category.'"');

  foreach ($categories as $categoriy) {
    $posts = $pages->get('1')->find('template=simple-blog-post,sort=-datetime,categories='.$categoriy->id);

    if (count($posts) > 0) {
      if (isset($_GET['start'])) {
        $start = intval($_GET['start']);
      } else {
        $start = 0;
      }

      $max = count($posts);

      if ($pagination < $max) {
        $result .= simple_blog_get_pagination($start, $max, $pagination);
      }

      for ($i = $start; $i < $max; $i++) {
        if (($i - $start) >= $pagination) {
          break;
        }
        
        if ($posts[$i]->localUrl) {
          $result .= '<div class="simple_blog_post" onclick="location.href=\''.$posts[$i]->localUrl($language).'\';">';
        } else {
          $result .= '<div class="simple_blog_post" onclick="location.href=\''.$posts[$i]->url().'\';">';
        }

        $image = $posts[$i]->images->first();
        if ($image) {
          $thumb = $image->size(96, 96);
          $result .= '<img src="'.$thumb->url.'">';
        }

        $result .= '<p><strong>'.$posts[$i]->headline.'</strong><br />';
        $result .= $posts[$i]->summary;
        
        if ($posts[$i]->localUrl) {
          $result .= ' <a href="'.$posts[$i]->localUrl($language).'">'.__('Read more...').'</a>';
        } else {
          $result .= ' <a href="'.$posts[$i]->url().'">'.__('Read more...').'</a>';
        }

        if ($posts[$i]->datetime) {
          $result .= '<br /><small>'.__('Published').': '.$posts[$i]->datetime.'</small>';
        }

        $result .= '</p></div>';
      }

      if ($pagination < $max) {
        $result .= simple_blog_get_pagination($start, $max, $pagination);
      }
    }
  }

  return $result;
}

function simple_blog_get_posts($pages, $language, $limit, $pagination) {
  $result = '';

  if (isset($_GET['start'])) {
    $start = intval($_GET['start']);
  } else {
    $start = 0;
  }

  $posts = $pages->get('1')->find('template=simple-blog-post,sort=-datetime');
  $max = count($posts);

  if ($limit == 0) {
    if ($pagination < $max) {
      $result .= simple_blog_get_pagination($start, $max, $pagination);
    }
  }

  for ($i = $start; $i < $max; $i++) {
    if ($limit == 0) {
      if (($i - $start) >= $pagination) {
        break;
      }
    } else {
      if (($i - $start) >= $limit) {
        break;
      }
    }

    if ($posts[$i]->localUrl) {
      $result .= '<div class="simple_blog_post" onclick="location.href=\''.$posts[$i]->localUrl($language).'\';">';
    } else {
      $result .= '<div class="simple_blog_post" onclick="location.href=\''.$posts[$i]->url().'\';">';
    }

    if ($posts[$i]->images) {
      $image = $posts[$i]->images->first();
      if ($image) {
        $thumb = $image->size(96, 96);
        $result .= '<img src="'.$thumb->url.'">';
      }
    }

    $result .= '<p><strong>'.$posts[$i]->headline.'</strong><br />';
    $result .= $posts[$i]->summary;
    
    if ($posts[$i]->localUrl) {
      $result .= ' <a href="'.$posts[$i]->localUrl($language).'">'.__('Read more...').'</a>';
    } else {
      $result .= ' <a href="'.$posts[$i]->url().'">'.__('Read more...').'</a>';
    }

    if ($posts[$i]->datetime) {
      $result .= '<br /><small>'.__('Published').': '.$posts[$i]->datetime.'</small>';
    }

    if ($posts[$i]->categories) {
      $result .= '<br /><small>'.__('Categories').': ';
      foreach ($posts[$i]->categories as $categoriy) {
        if ($categoriy->localUrl) {
          $result .= '<a href="'.$categoriy->localUrl($language).'">'.$categoriy->title.'</a> ';
        } else {
          $result .= '<a href="'.$categoriy->url().'">'.$categoriy->title.'</a> ';
        }
      }
      $result .= '</small>';
    }

    $result .= '</p></div>';
  }

  if ($limit == 0) {
    if ($pagination < $max) {
      $result .= simple_blog_get_pagination($start, $max, $pagination);
    }
  }

  return $result;
}

function simple_blog_get_post($page, $language) {
  $result = '';

  if ($page->datetime) {
    $result .= '<small>'.__('Published').': '.$page->datetime.'</small><br />';
  }
  if ($page->categories) {
    $result .= '<small>'.__('Categories').': ';
    foreach ($page->categories as $categoriy) {
      if ($categoriy->localUrl) {
        $result .= '<a href="'.$categoriy->localUrl($language).'">'.$categoriy->title.'</a> ';
      } else {
        $result .= '<a href="'.$categoriy->url().'">'.$categoriy->title.'</a> ';
      }
    }
    $result .= '</small><br />';
  }
  return $result;
}

function simple_blog_get_archive($pages, $language) {
  $current_year = '';
  $current_month = '';

  $result = '<ul class="simple_blog_archive_year">';

  $temp = $pages->get('1')->find('template=simple-blog-post,sort=-datetime');
  foreach ($temp as $post) {
    if ($post->datetime) {
      $year = date("Y", $post->getUnformatted('datetime'));
      if ($year != $current_year) {
        if ($current_year != '') {
          $result .= '</ul></li></ul></li>';
        }
        $current_year = $year;
        $result .= '<li>';
        $result .= $year.'<ul class="simple_blog_archive_month">';
        $current_month = '';
      }

      $month = date("F", $post->getUnformatted('datetime'));
      if ($month != $current_month) {
        if ($current_month != '') {
          $result .= '</ul></li>';
        }
        $current_month = $month;
        $result .= '<li>';
        $result .= $month.'<ul class="simple_blog_archive_post">';
      }

      if ($post->localUrl) {
        $result .= '<li><a href="'.$post->localUrl($language).'">'.$post->headline.'</a></li>';
      } else {
        $result .= '<li><a href="'.$post->url().'">'.$post->headline.'</a></li>';
      }
    }
  }

  $result .= '</ul>';
  $result .= '</li>';
  $result .= '</ul>';
  $result .= '</li>';
  $result .= '</ul>';
  return $result;
}