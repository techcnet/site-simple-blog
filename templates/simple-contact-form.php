<?php namespace ProcessWire;

  $receiver = $page->email;
  $recaptcha_site_key = $page->recaptchasitekey;
  $recaptcha_secret_key = $page->recaptchasecretkey;

  if (isset($_POST['sent'])) {
    $sent = true;
  } else {
    $sent = false;
  }

  if (isset($_POST['name'])) {
    $name = $sanitizer->text($_POST['name']);
  } else {
    $name = '';
  }

  if (isset($_POST['email'])) {
    $email = $sanitizer->email($_POST['email']);
  } else {
    $email = '';
  }

  if (isset($_POST['text'])) {
    $text = $sanitizer->textarea($_POST['text']);
  } else {
    $text = '';
  }

  $recaptcha_solved = '';
  if (isset($_POST['g-recaptcha-response'])) {
    $captcha = $_POST['g-recaptcha-response'];
    $url = 'https://www.google.com/recaptcha/api/siteverify';
    $data = array(
        'secret' => $recaptcha_secret_key,
        'response' => $captcha,
        'remoteip' => $_SERVER['REMOTE_ADDR']
    );

    $curlConfig = array(
        CURLOPT_URL => $url,
        CURLOPT_POST => true,
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_POSTFIELDS => $data
    );

    $ch = curl_init();
    curl_setopt_array($ch, $curlConfig);
    $response = curl_exec($ch);
    curl_close($ch);
    
    $jsonResponse = json_decode($response);
    if ($jsonResponse->success == "true") {
      $recaptcha_solved = 'true';
    } else {
      $recaptcha_solved = 'false';
    }
  }
  
  if (($recaptcha_site_key == '') || ($recaptcha_secret_key == '')) {
    $recaptcha_solved = 'true';
  }

  if ($sent) {
    if (($name == '') || (!filter_var($email, FILTER_VALIDATE_EMAIL)) || ($text == '') || ($recaptcha_solved == 'false')) {
      $content .= '<div class="contact_form_errortext">'.__('Some details are wrong. Please check the red fields.').'</div>';
    } else {
      $bountary = md5(uniqid(time()));
      $subject = 'Contact form '.$config->httpHosts[0];

      $preferences = array(
        "input-charset" => "UTF-8",
        "output-charset" => "UTF-8",
        "line-length" => 76,
        "line-break-chars" => "\n"
      );
      $preferences["scheme"] = "Q";

      $from = html_entity_decode($name, ENT_NOQUOTES, 'UTF-8');

      $header  = iconv_mime_encode("From", $from, $preferences)."<".$email.">\n";
      $header .= "X-IP: ".getenv("REMOTE_ADDR")."\n";
      $header .= "MIME-Version: 1.0\n";
      $header .= 'Content-Type: multipart/mixed; boundary="'.$bountary.'"';

      $message  = "--".$bountary."\n";
      $message .= "Content-type: text/plain; charset=utf-8\n";
      $message .= "Content-Transfer-Encoding: quoted-printable\n";
      $message .= "\n";
      $message .= "\r\n";
      $message .= html_entity_decode($text, ENT_NOQUOTES, 'UTF-8')."\r\n";
      $message .= "\r\n";

      $attachments = array();
      if ((isset($_FILES['attachment'])) && ($_FILES['attachment']['name'] != "")) {
        $message .= "\n";
        $message .= "--".$bountary."\n";
        $message .= 'Content-Type: application/octet-stream; name="'.$_FILES['attachment']['name'].'"'."\n";
        $message .= "Content-Transfer-Encoding: base64\n";
        $message .= 'Content-Disposition: attachement; filename="'.$_FILES['attachment']['name'].'"'."\n";
        $message .= "\n";
        $message .= chunk_split(base64_encode(implode("", file($_FILES['attachment']['tmp_name']))))."\n";
      }

      $message .= "--".$bountary."--\n";

      $subject = html_entity_decode($subject, ENT_NOQUOTES, 'UTF-8');
      $subject = iconv_mime_encode("", $subject, $preferences);
      $subject = str_replace(": ", "", $subject);

      if (mail($receiver, $subject, $message, $header, "-f".$receiver) === true) {
        $sent = false;
        $name = '';
        $email = '';
        $text = '';
        $content .= '<div class="contact_form_successtext">'.__('Message received.').'</div>';
      } else {
        $content .= '<div class="contact_form_errortext">'.__('An error occurred. Your message could not be sent. Please try again later.').'</div>';
      }
    }
  }

  $content .= '<form action="" enctype="multipart/form-data" id="contact_form" method="post">';

  $content .= '<div class="contact_form_tbl">';

  $content .= '<div class="contact_form_row">';
  $content .= '<div class="contact_form_labelcell">';
  $content .= '<div class="contact_form_label"><label for="name">'.__('Name').':</label></div>';
  $content .= '</div>';
  $content .= '<div class="contact_form_inputcell">';
  $content .= '<div class="contact_form_input">';
  $content .= '<input ';
  if (($sent == true) && ($name == '')) {
    $content .= 'class="contact_form_inputerror" ';
  }
  $content .= 'id="name" name="name" type="text" required="required" value="'.$name.'" />';
  $content .= '</div>';
  $content .= '</div>';
  $content .= '</div>';

  $content .= '<div class="contact_form_row">';
  $content .= '<div class="contact_form_labelcell">';
  $content .= '<div class="contact_form_label"><label for="email">'.__('Email').':</label></div>';
  $content .= '</div>';
  $content .= '<div class="contact_form_inputcell">';
  $content .= '<div class="contact_form_input">';
  $content .= '<input ';
  if (($sent == true) && (!filter_var($email, FILTER_VALIDATE_EMAIL))) {
    $content .= 'class="contact_form_inputerror" ';
  }
  $content .= 'id="email" name="email" type="email" required="required" value="'.$email.'" />';
  $content .= '</div>';
  $content .= '</div>';
  $content .= '</div>';

  $content .= '<div class="contact_form_row">';
  $content .= '<div class="contact_form_labelcell" id="contact_form_labeltextcell">';
  $content .= '<div class="contact_form_label"><label for="text">'.__('Message').':</label></div>';
  $content .= '</div>';
  $content .= '<div class="contact_form_inputcell">';
  $content .= '<div class="contact_form_input">';
  $content .= '<textarea ';
  if (($sent == true) && ($text == '')) {
    $content .= 'class="contact_form_inputerror" ';
  }
  $content .= 'cols="50" id="text" name="text" required="required" rows="16">'.$text.'</textarea>';
  $content .= '</div>';
  $content .= '</div>';
  $content .= '</div>';

  $content .= '<div class="contact_form_row">';
  $content .= '<div class="contact_form_labelcell">';
  $content .= '<div class="contact_form_label">';
  $content .= '<label for="attachment">'.__('Attachment').':</label>';
  $content .= '</div>';
  $content .= '</div>';
  $content .= '<div class="contact_form_inputcell">';
  $content .= '<div class="contact_form_input">';
  $content .= '<input id="attachment" name="attachment" type="file" />';
  $content .= '</div>';
  $content .= '</div>';
  $content .= '</div>';

  if (($recaptcha_site_key != '') && ($recaptcha_secret_key != '')) {
    $content .= '<div class="contact_form_row">';
    $content .= '<div class="contact_form_labelcell">';
    $content .= '</div>';
    $content .= '<div class="contact_form_inputcell">';
    $content .= '<div class="contact_form_input">';
    $content .= '<script src="https://www.google.com/recaptcha/api.js"></script>';
    $content .= '<div class="g-recaptcha" data-callback="enableBtn" data-sitekey="'.$recaptcha_site_key.'" data-size="normal" data-theme="light">&nbsp;';
    $content .= '</div>';
    $content .= '</div>';
    $content .= '</div>';
    $content .= '</div>';
  }

  $content .= '<div class="contact_form_row">';
  $content .= '<div class="contact_form_labelcell">';
  $content .= '<input name="sent" type="hidden" value="sent" />';
  $content .= '</div>';
  $content .= '<div class="contact_form_inputcell">';
  $content .= '<div class="contact_form_input">';
  if ($recaptcha_site_key != '' && $recaptcha_secret_key != '') {
    $content .= '<button id="submitbtn" class="contact_form_submitbtn btndisabled" >'.__('Submit').'</button>';
  } else {
    $content .= '<button id="submitbtn" class="contact_form_submitbtn" >'.__('Submit').'</button>';
  }
  $content .= '<script>';
  $content .= 'function enableBtn(){';
  $content .= 'document.getElementById("submitbtn").disabled = false;';
  $content .= '}';
  $content .= '</script>';
  $content .= '</div>';
  $content .= '</div>';
  $content .= '</div>';

  $content .= '</div>';
  $content .= '</form>';