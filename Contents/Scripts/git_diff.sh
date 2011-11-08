#!/usr/bin/env sh

cd `dirname $BB_DOC_PATH`; echo "** looking in folder"; pwd; cd $(git rev-parse --show-toplevel); echo "** Git diff of repository at:"; pwd
cd `dirname $BB_DOC_PATH`; cd $(git rev-parse --show-toplevel); git diff

