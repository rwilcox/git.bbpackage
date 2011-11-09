#!/usr/bin/env sh

cd `dirname $BB_DOC_PATH`; cd $(git rev-parse --show-toplevel); git status
