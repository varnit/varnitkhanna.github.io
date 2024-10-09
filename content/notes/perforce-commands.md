---
title: "perforce equivalent cvs commands"
date: "2007-11-08"
categories: 
  - "perforce"
---

add = p4 add file.name  
checkout = p4 sync  
p4 edit file.name (do this before you make any changes)  
diff = p4 diff file.name  
commit = p4 submit file.name  
p4 revert file.name (close file without doing any changes)  
log = p4 filelog file.name
