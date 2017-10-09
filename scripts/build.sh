#!/usr/bin/env bash

rimraf dist
tsc "$@"
NODE_ENV=production rollup -c 
NODE_ENV=development rollup -c 
rimraf compiled