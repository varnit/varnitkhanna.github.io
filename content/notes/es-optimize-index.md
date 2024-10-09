---
title: "ES optimize index"
date: "2013-09-19"
categories: 
  - "elastic-search"
---

\[sourcecode language="bash"\] # Force ES to free up disk space for deleted docs curl -XPOST 'http://localhost:9200/\_optimize?only\_expunge\_deletes=true'

\# optimize index into single curl -XPOST 'http://localhost:9200/\_optimize?max\_num\_segments=1' \[/sourcecode\]
