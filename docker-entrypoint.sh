#!/bin/sh
set -e

# i'm guessing this is the volume-mounted directory where steps: executes in
cd "$GITHUB_WORKSPACE"

if [ ! -z $INPUT_FILE ]; then
  upx $INPUT_UPX_ARGS $INPUT_FILE
fi;

if [ ! -z $INPUT_DIR ]; then
  find $INPUT_DIR -executable -type f -maxdepth 1 -exec upx $INPUT_UPX_ARGS {} \;
fi;
