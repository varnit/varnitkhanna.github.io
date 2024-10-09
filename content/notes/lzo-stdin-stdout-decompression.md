---
title: "lzo stdin stdout decompression"
date: "2012-01-26"
categories: 
  - "hadoop"
  - "linux"
---

\[sourcecode language="bash"\] hadoop fs -cat test/part-00000.lzo | lzop -df \[/sourcecode\]
