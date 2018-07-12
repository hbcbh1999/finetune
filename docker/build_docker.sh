#!/bin/bash
get_abs_filename() {
  echo "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
}

DOCKER_DIR=`dirname $0`
PROJECT_ROOT=$(get_abs_filename "$( dirname $DOCKER_DIR )")

echo "Docker dir: "$DOCKER_DIR
echo "Project root: "$PROJECT_ROOT
docker build -t finetune --file $DOCKER_DIR/Dockerfile $PROJECT_ROOT
