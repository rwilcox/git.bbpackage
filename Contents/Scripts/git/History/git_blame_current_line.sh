#!/usr/bin/env sh

cd "$(dirname "$BB_DOC_PATH")"; git blame -L$BB_DOC_SELSTART_LINE,+3 $BB_DOC_NAME
