---
title: "fast linux delete for large directories"
date: "2014-07-30"
tags:
  - "linux"
---

Found this to be faster than `rm -rf` on very large directories\
`$ mkdir blank`\
`$ rsync -a --delete blank/ dir-to-delete/`
