---
title: "trace webmachine resource"
date: "2014-05-01"
tags:
  - "erlang"
  - "webmachine"
---


1> dbg:tracer().

2> dbg:p(all,\[c\]).

3> dbg:tp({my\_resource, '\_', '\_'}, \[\]).
