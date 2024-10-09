---
title: "php curl multi"
date: "2009-05-13"
tags:
  - "curl"
  - "php"
---

```
<?php
  $url = array('http://www.google.com', 'http://www.yahoo.com');
  $counter = 0;
  $multi = curl_multi_init();

  foreach ($url as $requestURL) {
    ${'curl' . $counter} = curl_init();
    curl_setopt(${'curl' . $counter}, CURLOPT_URL, $requestURL);
    curl_setopt(${'curl' . $counter}, CURLOPT_HEADER, 0);
    curl_setopt(${'curl' . $counter}, CURLOPT_FOLLOWLOCATION, 1);
    curl_setopt(${'curl' . $counter}, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt(${'curl' . $counter}, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt(${'curl' . $counter}, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.3) Gecko/20070309 Firefox/2.0.0.3');
    curl_multi_add_handle($multi, ${'curl' . $counter});
    $counter++;
  }
  $running = 0;
  do {
    curl_multi_exec($multi, $running);
  } while ($running > 0);

  $counter = 0;
  $response = array();

  foreach ($url as $requestURL) {
    $response[$requestURL] = curl_multi_getcontent(${'curl' . $counter});
    curl_multi_remove_handle($multi, ${'curl' . $counter});  $counter++;
  }

  curl_multi_close($multi);
  print_r($response);

?>
```
