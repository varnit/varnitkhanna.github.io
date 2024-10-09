---
title: "ES optimize index"
date: "2013-09-19"
tags:
  - "elastic-search"
---

```
# Force ES to free up disk space for deleted docs
$ curl -XPOST 'http://localhost:9200/_optimize?only_expunge_deletes=true'

# optimize index into single segment
$ curl -XPOST 'http://localhost:9200/_optimize?max_num_segments=1'
```
