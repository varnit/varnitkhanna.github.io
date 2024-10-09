---
title: "awk convert csv"
date: "2011-05-19"
categories: 
  - "awk"
  - "linux"
---

convert file with :: delimiter into csv: `awk -v 'FS=::' '{print $1 "," $2 "," $3}' ratings.dat >> ratings.csv`
