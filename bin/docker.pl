#!/bin/dash

SCRIPT="$(basename $0)"

exec docker run --rm -v /home/frew/code/dotfiles/perl/$SCRIPT:/opt/$SCRIPT frew/perl /opt/$SCRIPT "$@"
