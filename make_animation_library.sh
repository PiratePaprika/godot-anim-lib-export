#!/usr/bin/env bash

DIR=$(dirname "$0")

source "$DIR/src/utils/parseArgs.sh"

CHARACTER_FILE=${1}
ANIMATIONS_DIR=${2}

BASE_NAME=$(basename "$2")
OUTPUT_FILE=${3:-$BASE_NAME}

"$DIR/src/blender/fbx_to_glb.sh" "$CHARACTER_FILE" "$ANIMATIONS_DIR" "$DIR/src/godot/project_template/anims.glb"

#"$DIR/src/godot/gltf_to_animation_library.sh" "$OUTPUT_FILE"
