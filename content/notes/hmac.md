---
title: "hmac"
date: "2014-04-03"
tags:
  - "gcc"
  - "c"
  - "hmac"
  - "perl"
---

**Perl**

```
#!/usr/bin/perl use strict;
use warnings;
use Digest::SHA qw(hmac_sha1_hex);
print hmac_sha1_hex("my data", "secret key") . "\n";
```

**C**
```
#include <stdio.h>
#include <stdlib.h>
#include <strings.h>
#include <openssl/hmac.h>

int main() {
  char* key = "secret key";
  char* data = "my data";
  char tmp[3];
  unsigned int result_len, i;
  unsigned char* result = malloc(sizeof(unsigned char) * result_len);
  HMAC_CTX ctx;
  HMAC_CTX_init(&ctx);
  HMAC_Init_ex(&ctx, (unsigned char*) key, strlen(key), EVP_sha1(), NULL);
  HMAC_Update(&ctx, (unsigned char*) data, strlen(data));
  HMAC_Final(&ctx, result, &result_len);
  HMAC_CTX_cleanup(&ctx);
  char* output = malloc(sizeof(char) * result_len);

  for (i = 0; i != result_len; i++) {
    //printf("Got %02X at byte %d\n", result[i], i);
    sprintf(tmp, "%02x", result[i]); strcat(output, tmp);
  }
  printf("output : %s\n", output);
  printf("expected: %s\n", "97a62219092f3ddab3707cc9e85e63e926f45c87");
  return 0;
}
```

**Sample Run**

```
$ perl hmac.pl 97a62219092f3ddab3707cc9e85e63e926f45c87
$ gcc -Wall -lcrypto hmac.c -o hmac && ./hmac
output : 97a62219092f3ddab3707cc9e85e63e926f45c87 expected: 97a62219092f3ddab3707cc9e85e63e926f45c87
```
