<?php namespace ProcessWire;

function simple_blog_get_pagination($nummer, $start, $max, $limit) {
  $result = '<div class="pagination">';
  if ($start > 0) {
    $result .= '<div>';
      $result .= '<form method="POST" action="">';
        $result .= '<input type="hidden" name="start" value="0">';
        $result .= '<input type="hidden" name="limit" value="'.$limit.'">';
        $result .= '<button class="pagbtn arrowfirst">&nbsp;</button>';
      $result .= '</form>';
    $result .= '</div>';
    $result .= '<div>';
      $result .= '<form method="POST" action="">';
        $result .= '<input type="hidden" name="start" value="'.($start-$limit).'">';
        $result .= '<input type="hidden" name="limit" value="'.$limit.'">';
        $result .= '<button class="pagbtn arrowback">&nbsp;</button>';
      $result .= '</form>';
    $result .= '</div>';
  }

  $result .= '<script>';
  $result .= 'function post(path, params, target) {';
    $result .= 'var form = document.createElement("form");';
    $result .= 'form.setAttribute("method", "post");';
    $result .= 'form.setAttribute("action", path);';
    $result .= 'if (typeof target !== "undefined" && target !== null) {';
      $result .= 'form.setAttribute("target", target);';
    $result .= '}';
    $result .= 'for(var key in params) {';
      $result .= 'if(params.hasOwnProperty(key)) {';
        $result .= 'var hiddenField = document.createElement("input");';
        $result .= 'hiddenField.setAttribute("type", "hidden");';
        $result .= 'hiddenField.setAttribute("name", key);';
        $result .= 'hiddenField.setAttribute("value", params[key]);';
        $result .= 'form.appendChild(hiddenField);';
      $result .= '}';
    $result .= '}';
    $result .= 'document.body.appendChild(form);';
    $result .= 'form.submit();';
  $result .= '}';
  $result .= 'function changepage'.$nummer.'(){';
    $result .= 'post("",{';
      $result .= 'start: document.getElementById("id_pageselect'.$nummer.'").value,';
      $result .= 'limit: "'.$limit.'"';
    $result .= '});';
  $result .= '}';
  $result .= '</script>';

  $result .= '<noscript><style>.pagination > div{display:none}</style></noscript>';
  $result .= '<div><select name="start" id="id_pageselect'.$nummer.'" onchange="changepage'.$nummer.'()">';
  for ($i = 0; $i < $max; $i+=$limit) {
    if (($i+$limit) > $max) {
      $j = $max;
    } else {
      $j = $i+$limit;
    }
    if (($start >= $i) && ($start < ($i+$limit))) {
      $result .= '<option selected="selected" value="'.$i.'">'.__('Posts').': '.($i+1).' - '.$j.'</option>';
    }  else {
      $result .= '<option value="'.$i.'">'.__('Posts').': '.($i+1).' - '.$j.'</option>';
    }
  }
  $result .= '</select></div>';

  if ($start < (((ceil($max/$limit)*$limit))-$limit)) {
    $result .= '<div>';
      $result .= '<form method="POST" action="">';
        $result .= '<input type="hidden" name="start" value="'.($start+$limit).'">';
        $result .= '<input type="hidden" name="limit" value="'.$limit.'">';
        $result .= '<button class="pagbtn arrownext">&nbsp;</button>';
      $result .= '</form>';
    $result .= '</div>';
    $result .= '<div>';
      $result .= '<form method="POST" action="">';
        $result .= '<input type="hidden" name="start" value="'.(((ceil($max/$limit)*$limit))-$limit).'">';
        $result .= '<input type="hidden" name="limit" value="'.$limit.'">';
        $result .= '<button class="pagbtn arrowlast">&nbsp;</button>';
      $result .= '</form>';
    $result .= '</div>';
  }
  $result .= '</div>';
  return $result;
}

function simple_blog_get_categories($pages, $language, $category_name, $show_category, $show_counts, $show_posts, $post_pagination) {
  $result = '';

  if ($category_name == '') {
    $categories = $pages->get('1')->find('template=simple-blog-category');
  } else {
    $categories = $pages->get('1')->find('template=simple-blog-category,title="'.$category_name.'"');
  }

  if (isset($show_category) && $show_category == 1) {
    $result .= '<ul class="simple_blog_categories">';
  }

  foreach ($categories as $categoriy) {
    $posts = $pages->get('1')->find('template=simple-blog-post,sort=-datetime,categories='.$categoriy->id);

    if (count($posts) > 0) {
      if ($show_category == 1) {
        $result .= '<li>';
        if ($categoriy->localHttpUrl) {
          $result .= '<a href="'.$categoriy->localHttpUrl($language).'">'.$categoriy->title.'</a>';
        } else {
          $result .= '<a href="'.$categoriy->httpUrl().'">'.$categoriy->title.'</a>';
        }
        if ($show_counts == 1) {
          $result .= ' ('.count($posts).')';
        }
      }

      if ($show_posts == 1) {
        if (isset($_POST['start'])) {
          $start = intval($_POST['start']);
        } else {
          $start = 0;
        }

        $max = count($posts);

        if ($post_pagination < $max) {
          $result .= simple_blog_get_pagination(1, $start, $max, $post_pagination);
        }

        for ($i = $start; $i < $max; $i++) {
          if (($i - $start) >= $post_pagination) {
            break;
          }
          
          if ($posts[$i]->localHttpUrl) {
            $result .= '<div class="simple_blog_post" onclick="location.href=\''.$posts[$i]->localHttpUrl($language).'\';">';
          } else {
            $result .= '<div class="simple_blog_post" onclick="location.href=\''.$posts[$i]->httpUrl().'\';">';
          }

          $image = $posts[$i]->images->first();
          if ($image) {
            $thumb = $image->size(96, 96);
            $result .= '<img src="'.$thumb->url.'">';
          }

          $result .= '<p><strong>'.$posts[$i]->headline.'</strong><br />';
          $result .= $posts[$i]->summary;
          
          if ($posts[$i]->localHttpUrl) {
            $result .= ' <a href="'.$posts[$i]->localHttpUrl($language).'">'.simple_blog_get_translation('Read more...', $language).'</a>';
          } else {
            $result .= ' <a href="'.$posts[$i]->httpUrl().'">'.__('Read more...').'</a>';
          }

          if ($posts[$i]->datetime) {
            $result .= '<br /><small>'.__('Published').': '.$posts[$i]->datetime.'</small>';
          }

          if ($posts[$i]->categories) {
            $result .= '<br /><small>'.__('Categories').': ';
            foreach ($posts[$i]->categories as $categoriy) {
              if ($categoriy->localHttpUrl) {
                $result .= '<a href="'.$categoriy->localHttpUrl($language).'">'.$categoriy->title.'</a> ';
              } else {
                $result .= '<a href="'.$categoriy->httpUrl().'">'.$categoriy->title.'</a> ';
              }
            }
            $result .= '</small>';
          }

          $result .= '</p></div>';
        }

        if ($post_pagination < $max) {
          $result .= simple_blog_get_pagination(2, $start, $max, $post_pagination);
        }
      }

      if ($show_category == 1) {
        $result .= '</li>';
      }
    }
  }

  if ($show_category == 1) {
    $result .= '</ul>';
  }

  return $result;
}

function simple_blog_get_posts($pages, $language, $limit, $pagination) {
  $result = '';

  if (isset($_POST['start'])) {
    $start = intval($_POST['start']);
  } else {
    $start = 0;
  }

  $posts = $pages->get('1')->find('template=simple-blog-post,sort=-datetime');
  $max = count($posts);

  if ($limit == 0) {
    if ($pagination < $max) {
      $result .= simple_blog_get_pagination(1, $start, $max, $pagination);
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

    if ($posts[$i]->localHttpUrl) {
      $result .= '<div class="simple_blog_post" onclick="location.href=\''.$posts[$i]->localHttpUrl($language).'\';">';
    } else {
      $result .= '<div class="simple_blog_post" onclick="location.href=\''.$posts[$i]->httpUrl().'\';">';
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
    
    if ($posts[$i]->localHttpUrl) {
      $result .= ' <a href="'.$posts[$i]->localHttpUrl($language).'">'.__('Read more...').'</a>';
    } else {
      $result .= ' <a href="'.$posts[$i]->httpUrl().'">'.__('Read more...').'</a>';
    }

    if ($posts[$i]->datetime) {
      $result .= '<br /><small>'.__('Published').': '.$posts[$i]->datetime.'</small>';
    }

    if ($posts[$i]->categories) {
      $result .= '<br /><small>'.__('Categories').': ';
      foreach ($posts[$i]->categories as $categoriy) {
        if ($categoriy->localHttpUrl) {
          $result .= '<a href="'.$categoriy->localHttpUrl($language).'">'.$categoriy->title.'</a> ';
        } else {
          $result .= '<a href="'.$categoriy->httpUrl().'">'.$categoriy->title.'</a> ';
        }
      }
      $result .= '</small>';
    }

    $result .= '</p></div>';
  }

  if ($limit == 0) {
    if ($pagination < $max) {
      $result .= simple_blog_get_pagination(2, $start, $max, $pagination);
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
      if ($categoriy->localHttpUrl) {
        $result .= '<a href="'.$categoriy->localHttpUrl($language).'">'.$categoriy->title.'</a> ';
      } else {
        $result .= '<a href="'.$categoriy->httpUrl().'">'.$categoriy->title.'</a> ';
      }
    }
    $result .= '</small><br />';
  }
  return $result;
}

function simple_blog_get_archive($pages, $language) {
  $result = '';

  $current_year = '';
  $current_month = '';

  $result .= '<ul class="simple_blog_archive_year">';

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

      if ($post->localHttpUrl) {
        $result .= '<li><a href="'.$post->localHttpUrl($language).'">'.$post->headline.'</a></li>';
      } else {
        $result .= '<li><a href="'.$post->httpUrl().'">'.$post->headline.'</a></li>';
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