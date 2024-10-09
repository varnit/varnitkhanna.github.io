---
title: "perforce find files not in depot"
date: "2008-01-29"
categories: 
  - "perforce"
---

Here is how you find files not added to depot:

> find . ! -type d | xargs p4 have 2>&1 > /dev/null
