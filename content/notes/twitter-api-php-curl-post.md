---
title: "twitter api php curl post"
date: "2008-11-13"
categories: 
  - "php"
---

Lets try a simple api call to delete a certain tweet of the user.

> `$tweetID = '1234' $username = 'enter_username'; $password = 'enter_password';  $url = 'http://twitter.com/statuses/destroy/' . $tweetID . '.xml';  $curl = curl_init($url); curl_setopt($curl, CURLOPT_USERPWD, $username.':'.$password); curl_setopt($curl, CURLOPT_POST, 1); curl_setopt($curl, CURLOPT_HEADER, 0); curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 1); curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false); curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1); curl_setopt($curl, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.3) Gecko/20070309 Firefox/2.0.0.3');  echo $rsp = curl_exec($curl); curl_close($curl); unset($curl);`
