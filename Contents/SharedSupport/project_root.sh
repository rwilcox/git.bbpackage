#!/bin/sh

cd "$(dirname "$BB_DOC_PATH")";
export PROJECT_ROOT="$(git rev-parse --show-toplevel)"
