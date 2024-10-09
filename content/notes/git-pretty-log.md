---
title: "git pretty log"
date: "2009-09-21"
categories: 
  - "git"
---

\[sourcecode language="bash"\] git config --global alias.lol "log --pretty=oneline --abbrev-commit --graph --decorate" \[/sourcecode\] or \[sourcecode language="bash"\] git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative" \[/sourcecode\]
