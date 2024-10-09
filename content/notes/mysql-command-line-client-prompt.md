---
title: "mysql command line client prompt"
date: "2008-08-22"
categories: 
  - "mysql"
---

I usually like to change the default mysql client prompt to user@hostname:dbname >. Open my.cnf and replace prompt = "" with

> `prompt = "\u@\h:\d >"`
