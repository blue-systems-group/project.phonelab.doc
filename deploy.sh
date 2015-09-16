#!/bin/sh
# assume you have access to frontend server and have set up ssh correctly.
rsync -avz --delete --progress --omit-dir-times --no-o --no-g build/html/ frontend:/srv/www/doc/
