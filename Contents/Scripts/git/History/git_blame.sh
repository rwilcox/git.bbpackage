#!/usr/bin/env sh

cd "$(dirname "$BB_DOC_PATH")"; pwd; git blame $BB_DOC_NAME
