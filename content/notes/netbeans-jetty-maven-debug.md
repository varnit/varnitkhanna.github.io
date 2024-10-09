---
title: "netbeans jetty maven debug"
date: "2011-06-27"
categories: 
  - "java"
  - "maven"
---

1. `export MAVEN_OPTS="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,address=8000"`
2. Debug -> Attach Debugger, enter 8000 as the port
