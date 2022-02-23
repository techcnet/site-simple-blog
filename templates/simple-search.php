<?php namespace ProcessWire;

  $q = trim($sanitizer->selectorValue($input->get->q), '"');

  $content .= '<form action="" class="searchform" method="GET">';
  $content .= '<div>';
  $content .= '<input name="q" type="text" value="'.$q.'" />';
  $content .= '</div>';
  $content .= '<div><input type="submit" value="&nbsp;" /></div>';
  $content .= '</form>';

  if (trim($q) != '') {
    $queries = explode(' ', $q);
    $queries = array_unique($queries);
    $matches = array();
    $foundlist = array();
    $temp1 = $pages->get('1')->find('template=simple-blog-post|simple-blog-home|simple-blog-archive|simple-blog-categories|simple-contact-form');
    foreach ($temp1 as $temp2) {
      $found = 0;

      foreach ($queries as $qpart) {
        if (stripos($temp2->title, $qpart) !== false) {
          $found = $found + 50;
        }
      }

      foreach ($queries as $qpart) {
        if (stripos($temp2->summary, $qpart) !== false) {
          $found = $found + 40;
        }
      }

      $temp3 = strip_tags($temp2->body);
      foreach ($queries as $qpart) {
        if (stripos($temp3, $qpart) !== false) {
          $found = $found + 10;
        }
      }

      if ($found > 0) {
        $foundlist[$temp2->id] = $found;
        $matches[$temp2->id] = $temp2;
      }
    }

    if (count($matches) == 0) {
      $content .= '<p>'.__('No results were found.').'</p>';
    } else {
      $content .= '<p>'.sprintf(__('%s page(s) matching your query:'), count($matches)).'</p>';
      $content .= '<ul class="searchlist">';

      arsort($foundlist, SORT_NUMERIC);
      foreach ($foundlist as $key => $val) {
        $content .= '<li>';
        $content .= '<strong><a href="'.$matches[$key]->httpUrl().'">'.$matches[$key]->title.'</a></strong><br />';
        $content .= '<span>'.$matches[$key]->httpUrl().'</span>';
        if ((isset($matches[$key]->summary)) && ($matches[$key]->summary != '')) {
          $content .= '<br />'.$matches[$key]->summary;
        }
        $content .= '<br /><small>'.__('Matching').': '.ceil($foundlist[$key] / count($queries)).'%</small>';
        $content .= '</li>';
      }

      $content .= '</ul>';
    }
  }