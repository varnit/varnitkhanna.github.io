---
title: "Concatenate nsstring"
date: "2008-11-01"
categories: 
  - "objective-c"
tags: 
  - "cocoa"
  - "mac"
---

> `**NSString** *path = @"~"; **NSString** *absolutePath = [path **stringByExpandingTildeInPath**];  **NSLog**( [@"My folder is at'" **stringByAppendingString**:absolutePath]); // or just use this **NSLog**( @"My folder is at'%@'", absolutePath);`

Also note that NSString cannot be modified once you have initialized it. Use NSMutableString if you need modify a string.

> `**NSMutableString** *logString = [[**NSMutableString** alloc] **initWithString**: @"Process Name: '"]; [logString **appendString**: [[**NSProcessInfo** processInfo] **processName**]]; [logString **appendString**: @"' Process ID: '"]; [logString **appendFormat**: @"%d", [[**NSProcessInfo** processInfo] processIdentifier]]; //cast int into string [logString **appendString**: @"'"];`
> 
> NSLog(logString);

output:

> `2008-11-01 20:15:26.107 Assignment1b[1301:10b] Process Name: 'Assignment1b' Process ID: '1301'`

Further examples: [click here](http://www.macdevcenter.com/pub/a/mac/2001/07/13/cocoa.html?page=2)
