---
title: "fix mysql relay log"
date: "2009-02-02"
categories: 
  - "mysql"
---

- SHOW SLAVE STATUS //note relay\_master\_log\_pos and exec\_master\_log\_pos
- SLAVE STOP
- CHANGE MASTER TO MASTER\_LOG\_FILE=\[relay\_master\_log\_pos value\], MASTER\_LOG\_POS=\[exec\_master\_log\_pos\]
- SLAVE START
