#!/usr/bin/env sh

export docpath="$(dirname "$BB_DOC_PATH")"


cd "$docpath"; cd $(git rev-parse --show-toplevel); echo "** Git diff of repository at:"; pwd; echo
cd "$docpath"; cd $(git rev-parse --show-toplevel); git diff

