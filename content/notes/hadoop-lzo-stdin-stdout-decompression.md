---
title: "hadoop lzo stdin stdout decompression"
date: "2012-01-26"
tags:
  - "hadoop"
  - "linux"
---

```
$ hadoop fs -cat test/part-00000.lzo | lzop -df
```
