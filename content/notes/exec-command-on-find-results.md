---
title: "exec command on find results"
date: "2007-11-08"
categories: 
  - "find"
---

Use this for small list of files, for better performance use xargs.

find . -name \*.conf -exec cp '{}' /etc/apache/include/ \\;
