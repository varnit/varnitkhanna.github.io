---
title: "php curl post cookies"
date: "2008-10-31"
categories: 
  - "php"
---

> `$file = tempnam('/tmp', 'tmp_browser_cookie'); $url = "http://www.example.com/login.php";  $postData =  email='. urlencode('myemail@yahoo.com') . '&pass=' . urlencode('mypassword');  $curl = curl_init($url); curl_setopt($curl, CURLOPT_POSTFIELDS, $postData); curl_setopt($curl, CURLOPT_POST, 1); curl_setopt($curl, CURLOPT_HEADER, 0); curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 1); curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false); curl_setopt($curl, CURLOPT_COOKIEJAR, $file); curl_setopt($curl, CURLOPT_COOKIEFILE, $file); curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1); curl_setopt($curl, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.3) Gecko/20070309 Firefox/2.0.0.3");  echo $rsp = curl_exec($curl); curl_close($curl); unset($curl);  echo file_get_contents($file); unlink($file);`
