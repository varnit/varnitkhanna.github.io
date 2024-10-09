---
title: "MacOS Lion macports erlang compilation patch"
date: "2011-11-06"
tags: 
  - "erlang"
  - "lion"
  - "macports"
---

**Add the following under "platform darwin 11"**\
if {${configure.compiler} == "clang"} { configure.compiler llvm-gcc-4.2 } configure.cflags-delete "-std=c99" configure.cflags-delete -O2 configure.cxxflags-delete -O2 configure.cflags-append -O0 configure.cxxflags-append -O0 ....
