#!/bin/bash

# pwd
# /home/travis/build/jordiprats/eyp-rsync

mkdir -p /var/log/rsyncman

pip install -r /home/travis/build/jordiprats/eyp-rsync/files/requirements.txt

python /home/travis/build/jordiprats/eyp-rsync/files/rsyncman.py -c /home/travis/build/jordiprats/eyp-rsync/.travis/localrsync.config

echo /home/travis/build/jordiprats/eyp-rsync/.travis/origin
ls -la /home/travis/build/jordiprats/eyp-rsync/.travis/origin

echo /home/travis/build/jordiprats/eyp-rsync/.travis/destination
ls -la /home/travis/build/jordiprats/eyp-rsync/.travis/destination

exit 0
