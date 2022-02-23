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

  $result .= '<div><select name="start" id="id_pageselect'.$nummer.'" onchange="changepage'.$nummer.'()"></select></div>';

  $result .= '<script>';
  $result .= 'var sel2 = document.getElementById("id_pageselect'.$nummer.'");';
  $result .= 'for (var i = 0; i < '.$max.'; i+='.$limit.') {';
  $result .= 'var opt = document.createElement("option");';
  $result .= 'if (('.$start.' >= i) && ('.$start.' < (i+'.$limit.'))) {';
  $result .= 'opt.value = i;';
  $result .= 'opt.selected = "selected"';
  $result .= '} else {';
  $result .= 'opt.value = i;';
  $result .= '}';
  $result .= 'if ((i+'.$limit.') > '.$max.') {';
  $result .= 'var j = '.$max.';';
  $result .= '} else {';
  $result .= 'var j = i+'.$limit.';';
  $result .= '}';
  $result .= 'opt.text = i+1 + " - " + j;';
  $result .= 'sel2.appendChild(opt);';
  $result .= '}';
  $result .= '</script>';

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
        if ($categoriy->localUrl) {
          $result .= '<a href="'.$categoriy->localUrl($language).'">'.$categoriy->title.'</a>';
        } else {
          $result .= '<a href="'.$categoriy->url().'">'.$categoriy->title.'</a>';
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