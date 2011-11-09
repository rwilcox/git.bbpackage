#!/bin/sh

# using $SHELL to pick up my $PATH
# you can use git gui or gitk if you prefer

# FROM: <https://github.com/isao/shell/blob/master/bbedit/Scripts/gitx.sh>
#

cd `dirname "$BB_DOC_PATH"`
$SHELL -c gitx