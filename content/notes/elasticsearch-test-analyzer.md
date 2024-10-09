---
title: "elasticsearch test analyzer"
date: "2014-05-16"
tags:
  - "elastic-search"
---

**Easy way to test a new analyzer via curl:**\
`curl 'localhost:9200/_analyze?text=the+quick+brown+fox+jumps+over+the+lazy+dog&pretty&analyzer=snowball'`
