---
title: "Duplicating gentoo packages to a new machine"
date: "2007-10-24"
categories: 
  - "gentoo"
---

Simply copy /var/lib/portage/world from the old machine to the new one. Then:

> \# emerge -va --noreplace $(cat old\_world\_file)

This command will install all of the files in the old\_world\_file while also adding them to the world of the new machine. The --noreplace was added in case some packages had already been installed, in order to avoid repeating one's self.
