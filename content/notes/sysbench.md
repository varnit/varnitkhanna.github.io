---
title: "sysbench"
date: "2010-04-26"
categories: 
  - "benchmark"
---

- `sysbench --test=oltp --mysql-table=myisam --oltp-table-size=1000000 --mysql-socket/tmp/mysql.sock prepare`
- `sysbench --num-threads=16 --max-requests=100000 --test=oltp --oltp-table-size=1000000 --mysql-socket=/tmp/mysql.sock --oltp-read-only run`
