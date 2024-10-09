---
title: "iptables block ip address"
date: "2008-02-25"
categories: 
  - "iptables"
  - "linux"
---

block ip address eg: 000.000.000.000

> iptables -I INPUT -s  000.000.000.000 -j DROP
