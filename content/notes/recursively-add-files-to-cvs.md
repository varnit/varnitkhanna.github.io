---
title: "Recursively add files to cvs"
date: "2008-04-30"
categories: 
  - "cvs"
  - "linux"
---

Let say we have the following directory structure

- project
    - one
    - two

1. add the root directory (project) 
    
    > cvs add project 
    
2. cvs ci project
3. cd project
4. find all directories
    
    > find . -type d -print | grep -v CVS | xargs cvs add
    
5. cvs ci
6. find all files other than CVS and .
    
    > `find . -type f -print | grep -v CVS | grep "^\.\/" |xargs cvs add`
    
7. cvs ci
