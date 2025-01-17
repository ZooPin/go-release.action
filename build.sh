#!/bin/sh

set -eux

PROJECT_ROOT="/go/src/github.com/${GITHUB_REPOSITORY}"

mkdir -p $PROJECT_ROOT
rmdir $PROJECT_ROOT
ln -s $GITHUB_WORKSPACE $PROJECT_ROOT
cd $PROJECT_ROOT
go get -v ./...

if [[ -v  LDFLAGS  ]]
then
    go build -ldflags $LDFLAGS $BUILDPATH
else
    go build $BUILDPATH
fi