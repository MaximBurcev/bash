#!/bin/bash
echo $SRCDIR;
exit;
for i in {1..7};
   do base64 /dev/urandom | head -c 100000 > $SRCDIR/file$i.txt;
done;
