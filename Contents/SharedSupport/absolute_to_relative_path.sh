#!/bin/sh

function absolute_to_relative_path {
  python -c "import os.path; print os.path.relpath('$1', '$2')"
}
