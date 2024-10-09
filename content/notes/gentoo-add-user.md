---
title: "gentoo add user"
date: "2008-12-04"
categories: 
  - "gentoo"
  - "linux"
---

Add a new user called 'username' to users and wheel group, the wheel group will allow you to su

> useradd -m -G users,wheel username

then

> passwd username
