---
title: "ControlTier Yum"
date: "2010-09-04"
categories: 
  - "controltier"
---

ControlTier 3.4.x doesn't include a yum module by default. I found [this](http://groups.google.com/group/controltier/browse_thread/thread/26b5fcc0fa38be54) discussion in the mailing list which allowed me to achieve what I wanted. Following are instructions on installing the custom module, perform this on your CT server.

- Download YumModules.zip (found in the above link)
- mkdir -p /tmp/scratch/modules
- mv YumModules.zip /tmp/scratch
- cd /tmp/scratch
- unzip YumModules.zip -d modules
- ctl -p my-project -m ProjectBuilder -c build-library -- -name yum -basedir /tmp/scratch -targetdir /tmp/target -upload

You may have to run install command on all your nodes to pickup the new module.

- ctl-depot -p my-project -a install
