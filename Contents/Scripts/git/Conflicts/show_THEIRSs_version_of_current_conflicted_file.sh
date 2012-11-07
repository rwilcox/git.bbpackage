#!/usr/bin/env sh

BASE_FOLDER=`dirname "$0"`
SUPPORT_FOLDER="$BASE_FOLDER/../../../SharedSupport/"

source "$SUPPORT_FOLDER/project_root.sh"
source "$SUPPORT_FOLDER/absolute_to_relative_path.sh"

cd "$PROJECT_ROOT"

# Thanks <http://stackoverflow.com/a/167365/224334> !!!
git show :3:`absolute_to_relative_path "$BB_DOC_PATH" "$PROJECT_ROOT"` > "$BB_DOC_PATH.conflict.theirs"

/usr/local/bin/bbedit "$BB_DOC_PATH.conflict.theirs"
