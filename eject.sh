#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PROJECT_ROOT=$DIR/project

echo "Replacing current directory with a new project"

rm -rf $DIR/.git \
  $DIR/bin \
  $DIR/scripts \
  package.json \
  README.md \
  yarn.lock

cp -r $PROJECT_ROOT/ $DIR/

git init

yarn

echo "Remember to edit package.json before publishing"
