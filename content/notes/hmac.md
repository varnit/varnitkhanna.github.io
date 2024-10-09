---
title: "hmac"
date: "2014-04-03"
categories: 
  - "bash"
  - "c"
  - "hmac"
  - "perl"
---

\[sourcecode language="perl"\] #!/usr/bin/perl use strict; use warnings; use Digest::SHA qw(hmac\_sha1\_hex); print hmac\_sha1\_hex("my data", "secret key") . "\\n"; \[/sourcecode\]

\[sourcecode language="c"\] #include <stdio.h> #include <stdlib.h> #include <strings.h> #include <openssl/hmac.h> int main() { char\* key = "secret key"; char\* data = "my data"; char tmp\[3\]; unsigned int result\_len, i; unsigned char\* result = malloc(sizeof(unsigned char) \* result\_len); HMAC\_CTX ctx; HMAC\_CTX\_init(&ctx); HMAC\_Init\_ex(&ctx, (unsigned char\*) key, strlen(key), EVP\_sha1(), NULL); HMAC\_Update(&ctx, (unsigned char\*) data, strlen(data)); HMAC\_Final(&ctx, result, &result\_len); HMAC\_CTX\_cleanup(&ctx); char\* output = malloc(sizeof(char) \* result\_len); for (i = 0; i != result\_len; i++) { //printf("Got %02X at byte %d\\n", result\[i\], i); sprintf(tmp, "%02x", result\[i\]); strcat(output, tmp); } printf("output : %s\\n", output); printf("expected: %s\\n", "97a62219092f3ddab3707cc9e85e63e926f45c87"); return 0; } \[/sourcecode\]

\[sourcecode language="bash"\] $ perl hmac.pl 97a62219092f3ddab3707cc9e85e63e926f45c87 $ gcc -Wall -lcrypto hmac.c -o hmac && ./hmac output : 97a62219092f3ddab3707cc9e85e63e926f45c87 expected: 97a62219092f3ddab3707cc9e85e63e926f45c87 \[/sourcecode\]
