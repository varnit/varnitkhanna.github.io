---
title: "sqlite index"
date: "2014-04-03"
categories: 
  - "sqlite"
---

\[sourcecode language="sql"\] sqlite> CREATE TABLE dogs (dog\_id INTEGER PRIMARY KEY AUTOINCREMENT, dog\_name VARCHAR(100), state CHAR(2)); sqlite> CREATE INDEX dog on dogs(state); sqlite> .indices dogs dog sqlite> EXPLAIN QUERY PLAN SELECT dog\_name FROM dogs WHERE state='FL'; 0|0|TABLE leagues WITH INDEX league \[/sourcecode\]
