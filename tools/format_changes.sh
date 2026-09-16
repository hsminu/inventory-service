#!/bin/sh

if [ "$#" -ge 7 ] && [ -f "$2" ] && [ -f "$5" ]; then
    /usr/bin/diff -u \
      --label "a/$1" \
      --label "b/$1" \
      "$2" "$5" || true
fi

exit 0
