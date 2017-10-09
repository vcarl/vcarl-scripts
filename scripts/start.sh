#!/usr/bin/env bash

NODE_ENV=development
tsc-watch --onSuccess "rollup -c" "$@"