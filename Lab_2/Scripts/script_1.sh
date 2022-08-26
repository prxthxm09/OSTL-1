#!/bin/sh

cd $1 | ls -l | grep "^-"

exit 0
