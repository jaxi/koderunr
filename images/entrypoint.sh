#!/bin/bash
set -e

case "$1" in
  ".go" )
    touch runner.go
    echo "$2" > runner.go
    go run runner.go ;;
  ".rb" )
    touch runner.rb
    echo "$2" > runner.rb
    ruby runner.rb ;;
  * )
    exec "$@"
esac
