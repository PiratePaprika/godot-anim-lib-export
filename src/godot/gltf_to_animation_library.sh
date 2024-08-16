#!/usr/bin/env bash

#set -x

DIR=$(dirname "$0")

rm -rf "$DIR/project_template/.godot"
godot --path "$DIR/project_template" -e --import --headless

cp "$DIR/project_template/.godot/imported/anims.glb-72c30470287f9d967e9a1d2a97bad8ec.res" "$1"
