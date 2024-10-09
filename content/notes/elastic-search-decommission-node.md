---
title: "elastic search decommission node"
date: "2014-09-30"
categories: 
  - "elastic-search"
---

Remove node: \[sourcecode language="bash"\] curl -v -XPUT localhost:9200/\_cluster/settings -d '{"transient" :{"cluster.routing.allocation.exclude.\_ip" : "xxx.xxx.xxx.xxx"}}' \[/sourcecode\] Add node back after maintenance: \[sourcecode language="bash"\] curl -v -XPUT localhost:9200/\_cluster/settings -d '{"transient" :{"cluster.routing.allocation.exclude.\_ip" : ""}}' \[/sourcecode\]
