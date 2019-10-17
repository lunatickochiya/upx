#!/bin/sh

# i'm guessing this is the volume-mounted directory where steps: executes in
cd "$GITHUB_WORKSPACE"

upx $INPUT_UPX_ARGS "$INPUT_INFILE"
