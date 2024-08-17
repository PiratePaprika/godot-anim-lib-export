#!/usr/bin/env bash

#set -x

DIR=$(dirname "$0")
PROJECT_TEMPLATE="$DIR/project_template_43"

rm -rf "$PROJECT_TEMPLATE/.godot"
godot --path "$PROJECT_TEMPLATE" -e --import --headless

cp "$PROJECT_TEMPLATE/.godot/imported/anims.glb-72c30470287f9d967e9a1d2a97bad8ec.res" "$1"
