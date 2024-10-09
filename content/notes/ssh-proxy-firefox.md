---
title: "ssh proxy firefox"
date: "2009-01-14"
categories: 
  - "ssh"
---

ssh into you trusted server

> `ssh -C2qTnN -D 9999 hostname.com`

enter you password when prompted for it, your terminal will remain blank after successful login(due to -N). Next setup firefox with following SOCKS setting:

> SOCKS HOST: localhost, Port: 9999
