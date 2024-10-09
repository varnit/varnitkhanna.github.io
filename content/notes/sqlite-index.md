---
title: "sqlite index"
date: "2014-04-03"
tags:
  - "sqlite"
---

```
sqlite> CREATE TABLE dogs (dog_id INTEGER PRIMARY KEY AUTOINCREMENT, dog_name VARCHAR(100), state CHAR(2));
sqlite> CREATE INDEX dog on dogs(state);
sqlite> .indices dogs dog
sqlite> EXPLAIN QUERY PLAN SELECT dog_name FROM dogs WHERE state='FL';
0|0|TABLE leagues WITH INDEX league
```
