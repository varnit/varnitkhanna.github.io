---
title: "simple apache rewrite"
date: "2008-04-08"
categories: 
  - "apache"
---

RewriteEngine   On

RewriteCond     %{REQUEST\_FILENAME}  !-d

RewriteRule     ^/user/authenticate /path/to/file/auth.php
