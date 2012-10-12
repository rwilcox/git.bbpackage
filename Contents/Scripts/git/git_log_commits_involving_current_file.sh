#!/bin/sh

cd "$(dirname "$BB_DOC_PATH")"
git log --no-merges --pretty=format:"%H | %s | AUTHOR: <%an> | ON: %cd" $BB_DOC_PATH
