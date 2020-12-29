#!/bin/sh
# Edit to what you want
for i in 0 1; do kubectl exec -i -t "web-$i" -- curl http://localhost/; done
