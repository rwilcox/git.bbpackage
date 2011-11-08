#!/usr/bin/env sh

cd `dirname $BB_DOC_PATH`; cd $(git rev-parse --show-toplevel); echo "** Git diff of repository at:"; pwd; echo
cd `dirname $BB_DOC_PATH`; cd $(git rev-parse --show-toplevel); git diff

