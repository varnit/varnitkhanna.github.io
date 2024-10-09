---
title: "ControlTier commands"
date: "2010-09-04"
categories: 
  - "controltier"
---

1. **Add Project to Node** `ctl-depot -p my-project -a create  `
2. **Install Project on Node** `ctl-depot -p my-project -a install  `
3. **Create Site** Get site XML template from [http://controltier.org/wiki/Mock\_Site\_Example](http://controltier.org/wiki/Mock_Site_Example) (look for "The Site definition") `ctl -p my-project -m ProjectBuilder -c load-objects -- -filename site.xml`
4. **Create Service** Get service XML template from [http://controltier.org/wiki/Category:Service](http://controltier.org/wiki/Category:Service) `ctl -p my-project -m ProjectBuilder -c load-objects -- -filename service.xml`
5. **Create Package** Get Package XML template from [http://controltier.org/wiki/Package](http://controltier.org/wiki/Package) `ctl -p my-project -m ProjectBuilder -c load-objects -- -filename package.xml`
6. **List Sites** `ctl -p my-project -m ProjectBuilder -c find-objects -- -type Site`
7. **List Services** `ctl -p my-project -m ProjectBuilder -c find-objects -- -type Service`
8. **List Packages** `ctl -p my-project -m ProjectBuilder -c find-objects -- -type Package`
9. **List Project objects** `ctl -p my-project -m ProjectBuilder -c find-objects --`
10. **Add Resource relationship** `ctl -p my-project -m modelutil -c resource-add -- -name QA -type Site -resourcename my-project-1.0.0 -resourcetype Site`
11. **Remove Resource relationship** `ctl -p my-project -m modelutil -c resource-remove -- -name QA -type Site -resourcename my-project-1.0.0 -resourcetype Site`
12. **Deploy Site** `ctl -p my-project -t Site -o CI -c Deploy`
13. **Find Nodes Service will deploy to** `grep Service.my-project-ws-ci ~/ctl/depots/my-project/etc/deployments.properties`
14. **Remove Node from Service** `ctl -p my-project -m modelutil -c resource-remove -- -name node01.dev -type Node -resourcename my-project-ws-0.0.1 -resourcetype Service`
15. **Run command on Node(s) with tag** `ctl-exec -p my-project -I tags=qa -- whoami`
