#!/bin/sh

# i'm guessing this is the volume-mounted directory where steps: executes in
cd "$GITHUB_WORKSPACE"

if [ ! -z $INPUT_INFILE ]; then
  upx $INPUT_UPX_ARGS $INPUT_INFILE
fi;

if [ ! -z $INPUT_INDIR ]; then
  upx $INPUT_UPX_ARGS $INPUT_INDIR
fi;
