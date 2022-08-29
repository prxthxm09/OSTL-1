#!/bin/sh

cd
cd $1
ls -R
echo
ls -R | grep \.$2$ 

exit 0
