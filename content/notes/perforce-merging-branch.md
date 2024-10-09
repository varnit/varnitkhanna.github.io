---
title: "perforce merge branch"
date: "2008-01-08"
categories: 
  - "perforce"
---

To merge changes from the secondary to the main branch

- make sure you have both the main and secondary branch in p4 client
- go to the main branch directory 

> p4 integrate /file/path/to/secondary/branch/file.ext /file/path/to/main/branch/file.ext

> p4 resolve  /file/path/to/main/branch/file.ext

> p4 submit
