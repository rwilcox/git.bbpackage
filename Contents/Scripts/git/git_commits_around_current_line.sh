#!/bin/sh

cd "$(dirname "$BB_DOC_PATH")"
LINE=$BB_DOC_SELSTART_LINE FILE=$BB_DOC_PATH REVS=12; for commit in $(git rev-list -n $REVS HEAD $FILE); do git blame -n -L$LINE,+1 $commit -- $FILE; done | cut -d " " -f 1 | sort | uniq | xargs -n 1 git show --quiet $1
