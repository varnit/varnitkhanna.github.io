---
title: "fast linux delete for large directories"
date: "2014-07-30"
categories: 
  - "linux"
---

Found this to be faster than rm -rf \[sourcecode language="bash"\] mkdir blank rsync -a --delete blank/ dir-to-delete/ \[/sourcecode\]
