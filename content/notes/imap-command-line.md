---
title: "imap command line"
date: "2013-06-21"
tags:
  - "imap"
  - "command-line"
---

```
$ openssl s_client -connect hostname:993 -crlf

1 LOGIN username password
2 EXAMINE INBOX
3 UID FETCH 1:* (FLAGS)
4 UID FETCH 1 (BODY.PEEK[HEADER.FIELDS (Date From To Cc Bcc Subject Message-ID In-Reply-To References Content-Type Importance)])
5 UID FETCH 1 (BODY.PEEK[TEXT])
```
