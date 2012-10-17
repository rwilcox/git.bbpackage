#!/bin/sh

cd "$(dirname "$BB_DOC_PATH")"
LINE=$BB_DOC_SELSTART_LINE FILE=$BB_DOC_PATH; for commit in $(git rev-list -n 1 HEAD "$FILE"); do open "`git config bbedit.githuburl`/commit/$commit/"; done
