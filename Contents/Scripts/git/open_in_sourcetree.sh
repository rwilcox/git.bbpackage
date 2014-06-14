#!/usr/bin/env sh

BASE_FOLDER=`dirname "$0"`
SUPPORT_FOLDER="$BASE_FOLDER/../../SharedSupport/"

source "$SUPPORT_FOLDER/project_root.sh"
source "$SUPPORT_FOLDER/absolute_to_relative_path.sh"

cd "$PROJECT_ROOT"

open . -a SourceTree
