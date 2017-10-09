#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
REPO_ROOT=$DIR/../
PROJECT_ROOT=$REPO_ROOT/project

PWD=`pwd`

echo "Replacing current directory with a new project"

rm -rf $REPO_ROOT/.git \
  $REPO_ROOT/bin \
  $REPO_ROOT/scripts \
  package.json \
  README.md \
  yarn.lock

cp -r $PROJECT_ROOT/../src/ $PWD

git init

yarn

echo "Remember to edit package.json before publishing"
