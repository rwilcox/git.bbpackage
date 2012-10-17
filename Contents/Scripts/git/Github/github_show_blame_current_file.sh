#!/usr/bin/env sh

cd "$(dirname "$BB_DOC_PATH")"

gitroot=$(git rev-parse --show-toplevel)

smallpath=$(ruby -e "puts '$BB_DOC_PATH'.gsub('$gitroot/', '')")

open "`git config bbedit.githuburl`/blame/$(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')/$smallpath"
