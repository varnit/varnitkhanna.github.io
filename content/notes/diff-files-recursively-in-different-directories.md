---
title: "diff files recursively in different directories"
date: "2008-08-29"
categories: 
  - "linux"
---

> ``for i in `find . -type f | grep -v CVS`; do diff $i ${i/./~/dev_stage/websites/www/v2/share/htdocs};done;``
