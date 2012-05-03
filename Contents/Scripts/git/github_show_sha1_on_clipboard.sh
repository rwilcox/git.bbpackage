#!/usr/bin/env sh

cd "$(dirname "$BB_DOC_PATH")"

open "`git config bbedit.githuburl`/commit/`pbpaste`"
