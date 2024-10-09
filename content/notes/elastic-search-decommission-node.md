---
title: "elastic search decommission node"
date: "2014-09-30"
tags:
  - "elastic-search"
---

**Remove node:**\
`curl -v -XPUT localhost:9200/_cluster/settings -d '{"transient" :{"cluster.routing.allocation.exclude._ip" : "xxx.xxx.xxx.xxx"}}'`

**Add node back after maintenance:**\
`curl -v -XPUT localhost:9200/_cluster/settings -d '{"transient" :{"cluster.routing.allocation.exclude._ip" : ""}}'`
